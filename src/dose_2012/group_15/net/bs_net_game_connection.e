note
	description: "Summary description for {BS_NET_GAME_CONNECTION}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	BS_NET_GAME_CONNECTION

inherit {NONE}
	EXECUTION_ENVIRONMENT
	export {none} all
	end

create
	make

feature -- Constructor

	make (pmt_host: attached STRING_8; pmt_port: INTEGER) -- Can fail
		do
			create socket.make_client_by_port (pmt_port, pmt_host)
			socket.connect ()
			create constants
			create protocol
			create command_list
			create serializer
		ensure
			socket_connected: socket /= void and then socket.is_connected
		end


feature -- Game messages

	send_move (move: detachable BS_MOVE) -- No player or color id are required since the server already knows who the move is for.
		require
			socket_connected: socket_is_connected()
			move_has_been_requested: move_requested
		do
			move_requested := false;
			send_line(protocol.sending_move)
			send_object (move)
		ensure
			move_no_longer_requested: not move_requested
		end

	send_add_player(player_name: STRING; player_type: INTEGER)
		require
			socket_connected: socket_is_connected()
		do
			send_line(protocol.add_player)
			send_line(protocol.add_player_name)
			send_line(player_name)
			send_line(protocol.add_player_type)
			send_line(player_type.out)
			check_ack()
		end

	send_remove_player(player_id: INTEGER)
		require
			socket_connected: socket_is_connected()
		do
			send_line(protocol.remove_player)
			send_line(player_id.out)
			check_ack()
		end

	send_start_game(player_name: STRING; player_type: INTEGER)
		require
			socket_connected: socket_is_connected()
		local
			ex : DEVELOPER_EXCEPTION
		do
			create ex
			ex.set_message ("Not implemented.")
			ex.raise()
		end

	send_rematch()
		require
			socket_connected: socket_is_connected()
		do
			send_line(protocol.rematch)
			check_ack()
		end

	disconnect () -- Can be sent at any time, assuming that the socket is connected
		require
			socket_connected: socket_is_connected()
		do
			send_line(protocol.bye)
			socket.close ()
		ensure
			socket_CLOSED: socket.is_closed()
		end

feature -- Receive commands and game status updates

	read_command (): BS_NET_COMMAND -- Can fail
		require
			socket_connected: socket_is_connected()
		local
			length: INTEGER
			serialized_object: STRING
			line: STRING
			succeeded: BOOLEAN
		do
			line := receive_line()
			if line ~ protocol.sending_command and then receive_line () ~ protocol.size then
				length := receive_line ().to_integer
				send_line (protocol.send_it)
				serialized_object := receive (length)
				send_line (protocol.ack)
				if attached {BS_NET_COMMAND} serializer.deserialize (serialized_object) as received_command then
					received_command.validation_enabled := true
					result := received_command
					succeeded := true
					if received_command.command = command_list.command_getmove then
						move_requested := true
					end
				end
			end
			if line ~ protocol.closing then
				create result.make (command_list.command_closing)
				result.validation_enabled := true
				succeeded := true
			end
			if not succeeded then
				raise_network_exception()
			end
		end

feature {NONE} -- Network communication

	receive (count: INTEGER): STRING
		require
			socket_connected: socket_is_connected()
		do
			socket.read_stream (count)
			result := socket.last_string
		end

	receive_line (): STRING
		require
			socket_connected: socket_is_connected()
		do
			socket.read_line ()
			result := socket.last_string
		end

	send (what: STRING)
		require
			socket_connected: socket_is_connected()
		do
			socket.put_string (what);
		end

	send_line (what: STRING)
		require
			socket_connected: socket_is_connected()
		do
			send (what + "%N");
		end

	check_ack ()
		require
			socket_connected: socket_is_connected()
		do
			check_response (protocol.ack)
		end

	check_response (expected_response: STRING)
		require
			socket_connected: socket_is_connected()
		do
			socket.read_line()
			if socket.last_string /~ expected_response then
				raise_network_exception()
			end
		end

	send_object (object: ANY)
		require
			socket_connected: socket_is_connected ()
		local
			serialized_object: STRING
			length: INTEGER
		do
			send_line (protocol.size)
			serialized_object := serializer.serialize (object)
			length := serialized_object.count
			send_line (length.out)
			check_response (protocol.send_it)
			send (serialized_object)
			check_ack ()
		end

	socket_is_connected() : BOOLEAN
		do
			result := (socket /= void and then not socket.is_closed())
		end

	raise_network_exception()
		local
			network_exception: DEVELOPER_EXCEPTION
		do
			create network_exception
			network_exception.set_message (constants.protocol_error)
			network_exception.raise()
		end

feature {NONE} -- Locals

	move_requested: BOOLEAN -- Set by read_command when the command is get_move.

	socket: detachable NETWORK_STREAM_SOCKET

	constants : BS_CONSTANTS

	protocol: BS_NET_PROTOCOL

	command_list: BS_NET_COMMAND_LIST

	serializer: BS_NET_SERIALIZER

end
