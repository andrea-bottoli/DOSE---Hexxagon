note
	description: "Summary description for {BS_NET_SOCKET_READER}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	BS_NET_SOCKET_READER

inherit

	THREAD
		rename
			make as thread_make
		end

create
	make

feature {NONE} -- Initialization

	make (pmt_socket: attached NETWORK_STREAM_SOCKET; pmt_machine: attached BS_NET_REMOTE_MACHINE)
		do
			thread_make ()
			socket := pmt_socket
			machine := pmt_machine
			create protocol
			create constants
			create serializer
			create data_available_semaphore.make (0)
			create read_semaphore.make (0)
		ensure
			stuff_assigned: socket = pmt_socket and machine = pmt_machine
		end

	execute ()
			-- The big loop of this method reads commands. Some of them are then immediately processed/executed,
			-- some others are left in a buffer. No further commands of this type can be read until the buffer
			-- has been emptied, the thread will be blocked by a semaphore.
		local
			command_line: STRING
			line: STRING
			player_name: STRING
			player_type: INTEGER
			player_id: INTEGER
			valid: BOOLEAN
		do
			from
			until
				machine.dead
			loop
				valid := false
				command_line := receive_line_donttouch ()
				if command_line ~ protocol.add_player then
						-- This command must be handled immediately.
					line := receive_line_donttouch ()
					if line /~ protocol.add_player_name then
						machine.harakiri ()
					end
					player_name := receive_line_donttouch ()
					line := receive_line_donttouch ()
					if line /~ protocol.add_player_type then
						machine.harakiri ()
					end
					line := receive_line_donttouch ()
					player_type := line.to_integer ()
					valid := true
					if constants.is_valid_player_type (player_type) then
						machine.send_line (protocol.ack)
						if attached machine.agent_set.add_player_agent as x then
							x.call ([machine, player_name, player_type])
						end
					else
						machine.harakiri ()
					end
				end
				if command_line ~ protocol.remove_player then
						-- This command must be handled immediately.
					player_id := receive_line_donttouch().to_integer ()
					valid := true
					if constants.is_valid_player_range (player_id) then
						machine.send_line (protocol.ack)
						if attached machine.agent_set.remove_player_agent as x then
							x.call ([machine, player_id])
						end
					else
						machine.harakiri ()
					end
				end
				if command_line ~ protocol.bye then
						-- This command must be handled immediately.
					machine.disconnect ()
					valid := true
				end
				if command_line ~ "" then
					valid := true -- Ignored
				end
				if not valid then
					receive_buffer := command_line

					-- In this case, unfortunately, as sockets are not thread-safe, this thread
					-- must handle further communication. Entering sync mode.

					sync_mode := true

					from
						data_available_semaphore.post () -- Signal that the command is ready
						read_semaphore.wait () -- Wait for somebody to read the command
					until characters_requested = -1
					loop
						if characters_requested = -2 then
							receive_buffer := receive_line_donttouch()
						else
							receive_buffer := receive_donttouch (characters_requested)
						end
						data_available_semaphore.post () -- Signal that the command is ready
						read_semaphore.wait () -- Wait for somebody to read the command
					end

					sync_mode := false

--					if received_command ~ protocol.sending_move then
--						sleep (500000000)
--						sleep (500000000)
--						sleep (500000000)
--						socket.
--						line := receive_line()
--						sleep (500000000)
--						sleep (500000000)
--						sleep (500000000)
--					end

				end
			end
		end

	receive_donttouch (count: INTEGER): STRING
		require
			socket_connected: socket_is_connected()
		local
			failed: BOOLEAN
		do
			if not failed then
				if not machine.dead then
					socket.read_stream_thread_aware (count)
					result := socket.last_string
				end
			else
				if not machine.dead then
					machine.harakiri ()
				end
			end
		rescue
			failed := true
			retry
		end

	receive_line_donttouch (): STRING
		require
			socket_connected: socket_is_connected()
		local
			failed: BOOLEAN
		do
			if not failed then
				if not machine.dead then
					socket.read_line_thread_aware ()
					result := socket.last_string
				end
			else
				if not machine.dead then
					machine.harakiri ()
				end
				result := ""
			end
		rescue
			failed := true
			retry
		end

	get_first_line_sync() : STRING
	do
		data_available_semaphore.wait () -- Wait for the received data to be available
		result := receive_buffer
	end

	receive_sync (count: INTEGER): STRING
	require
		sync_mode
	do
		characters_requested := count
		read_semaphore.post () -- Go, reader, go!
		data_available_semaphore.wait () -- Wait for the received data to be available
		result := receive_buffer
	end

	receive_line_sync (): STRING
	require
		sync_mode
	do
		result := receive_sync(-2)
	end

	end_sync_mode()
	require
		sync_mode
	do
		characters_requested := -1
		read_semaphore.post () -- Go, reader, go!
		from
		until not sync_mode
		loop
			yield()
		end
	ensure
		not sync_mode
	end

	receive_object (): ANY
		require
			socket_connected: socket_is_connected()
			in_sync_mode: sync_mode
		local
			line: STRING
			length: INTEGER
			serialized_object: STRING
			failed: BOOLEAN
		do
			if not failed then
				line := receive_line_sync()
				if line /~ protocol.size then
					machine.harakiri ()
				end
				length := receive_line_sync().to_integer
				machine.send_line (protocol.send_it)
				serialized_object := receive_sync (length)
				machine.send_line (protocol.ack)
				result := serializer.deserialize (serialized_object)
			else
				if not machine.dead then
					machine.harakiri ()
				end
			end
		ensure
			still_sync_mode: sync_mode
		rescue
			failed := true
			retry
		end

feature -- Public

	check_ack ()
		require
			socket_connected: socket_is_connected()
		do
			check_response (protocol.ack)
		end

	check_response (expected_response: STRING)
		require
			socket_connected: socket_is_connected()
		local
			line: STRING
		do
			if not machine.dead then
				line := get_first_line_sync()
				end_sync_mode()
				if not (line ~ expected_response) then
					machine.harakiri ()
				end
			end
		end

	get_move (): BS_MOVE
		require
			socket_connected: socket_is_connected()
		local
			line: STRING
			received_object: ANY
			must_end_sync_mode: BOOLEAN
		do
			if not machine.dead then
				line := get_first_line_sync()
				must_end_sync_mode := true

				if not (line ~ protocol.sending_move) then
					machine.harakiri ()
				end
				received_object := receive_object ()
				if attached {BS_MOVE} received_object as deserialized_move then
					result := deserialized_move
				else
					machine.harakiri ()
				end
				end_sync_mode()
				must_end_sync_mode := false
			end
		rescue
			if must_end_sync_mode then
				end_sync_mode()
			end
				-- Then fail
		end

feature {NONE} -- Locals

		-- read_buffer: ANY

	receive_buffer: STRING

	data_available_semaphore: SEMAPHORE

	read_semaphore: SEMAPHORE

	sync_mode: BOOLEAN

	characters_requested: INTEGER -- -1 means please stop, -2 means read line

	socket: attached NETWORK_STREAM_SOCKET

	machine: attached BS_NET_REMOTE_MACHINE

	protocol: BS_NET_PROTOCOL

	constants: BS_CONSTANTS

	serializer: BS_NET_SERIALIZER

	socket_is_connected() : BOOLEAN
		do
			result := (socket /= void and then not socket.is_closed())
		end

end
