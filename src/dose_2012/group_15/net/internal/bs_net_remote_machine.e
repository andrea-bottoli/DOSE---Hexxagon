note
	description: "Summary description for {BS_NET_CLIENT}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	BS_NET_REMOTE_MACHINE

inherit

	BS_NET_MACHINE
		redefine
			update_player_list,
			update_scores
		end

inherit {NONE}

	BS_NET_COMMAND_LIST

	EXECUTION_ENVIRONMENT
		rename
			default_create as nothing
		end

create
	make

feature

	make (pmt_socket: attached NETWORK_STREAM_SOCKET; pmt_agent_set: BS_NET_AGENT_SET; pmt_specific_disconnect_agent: detachable procedure [ANY, TUPLE [BS_NET_REMOTE_MACHINE]])
		do
			socket := pmt_socket
			specific_disconnect_agent := pmt_specific_disconnect_agent
			agent_set := pmt_agent_set
			create protocol
			create serializer
			create socket_reader.make (socket, current)
			socket_reader.launch
		ensure
			socket_assigned: socket = pmt_socket
			agent_set_assigned: agent_set = pmt_agent_set
			disconnect_agent_assigned: specific_disconnect_agent = pmt_specific_disconnect_agent
			thread_launched: socket_reader.is_last_launch_successful
		end

feature -- Game operations

	get_move (color_id: INTEGER): BS_MOVE
		local
			command: BS_NET_COMMAND
		do
			create command.make (command_getmove)
			command.validation_enabled := true
			send_command (command)
			result := socket_reader.get_move ()
		end

feature -- Game status messages

	start_game ()
		local
			command: BS_NET_COMMAND
		do
			create command.make (command_startgame)
			command.validation_enabled := true
			send_command (command)
			game_status := status_game_in_progress
		end

	update_player_list (new_list:  ARRAY [TUPLE [id: INTEGER; name: STRING; type: INTEGER]]) -- Array of player ids
		local
			command: BS_NET_COMMAND
		do
			Precursor(new_list)
			create command.make (command_updateplayerlist)
			command.player_list := new_list
			command.validation_enabled := true
			send_command (command)
		end

	player_makes_move (player_id: INTEGER; color_id: INTEGER; move: BS_MOVE)
		local
			command: BS_NET_COMMAND
		do
			create command.make (command_playermakesmove)
			command.player_id := player_id
			command.color_id := color_id
			command.move := move
			command.validation_enabled := true
			send_command (command)
		end

	remove_tile_from_player (player_id: INTEGER; color_id: INTEGER; tile_to_remove: BS_TILE)
		local
			command: BS_NET_COMMAND
		do
			create command.make (command_removetilefromplayer)
			command.player_id := player_id
			command.color_id := color_id
			command.tile := tile_to_remove
			command.validation_enabled := true
			send_command (command)
		end

	warn_bad_move (player_id: INTEGER; color_id: INTEGER)
		local
			command: BS_NET_COMMAND
		do
			create command.make (command_badmove)
			command.player_id := player_id
			command.color_id := color_id
			command.validation_enabled := true
			send_command (command)
		end

	update_scores (new_scores: attached ARRAY [TUPLE [INTEGER, attached STRING, INTEGER]]) -- [player id, player name, score]
		local
			command: BS_NET_COMMAND
		do
			Precursor (new_scores)
			create command.make (command_updatescores)
			command.score_list := new_scores
			command.validation_enabled := true
			send_command (command)
		end

	print_log_message (log_message: STRING)
		local
			command: BS_NET_COMMAND
		do
			create command.make (command_printlogmessage)
			command.message := log_message
			command.validation_enabled := true
			send_command (command)
		end

	set_turn (player_id: INTEGER; color_id: INTEGER)
		local
			command: BS_NET_COMMAND
		do
			create command.make (command_setturn)
			command.player_id := player_id
			command.color_id := color_id
			command.validation_enabled := true
			send_command (command)
		end

	announce_victory (player_id: INTEGER; total_scores: ARRAY [TUPLE [INTEGER, STRING, INTEGER]])
		local
			command: BS_NET_COMMAND
		do
			create command.make (command_announcevictory)
			command.player_id := player_id
			command.score_list := total_scores
			command.validation_enabled := true
			send_command (command)
			game_status := status_game_terminated
		end

	disconnect ()
		do
			if not dead and not disconnect_in_progress then
				disconnect_in_progress := true
				if not harakiried then
					io.put_string ("Clean disconnect.%N")
					send_line (protocol.closing)
						-- send_line ("Nel mezzo del cammin di nostra vita%NNel mezzo del cammin di nostra vita%NNel mezzo del cammin di nostra vita%NNel mezzo del cammin di nostra vita%NNel mezzo del cammin di nostra vita%NNel mezzo del cammin di nostra vita%NNel mezzo del cammin di nostra vita%NNel mezzo del cammin di nostra vita%NNel mezzo del cammin di nostra vita%NNel mezzo del cammin di nostra vita%NNel mezzo del cammin di nostra vita%NNel mezzo del cammin di nostra vita%NNel mezzo del cammin di nostra vita%NNel mezzo del cammin di nostra vita%NNel mezzo del cammin di nostra vita%NNel mezzo del cammin di nostra vita%NNel mezzo del cammin di nostra vita%NNel mezzo del cammin di nostra vita%NNel mezzo del cammin di nostra vita%NNel mezzo del cammin di nostra vita%NNel mezzo del cammin di nostra vita%NNel mezzo del cammin di nostra vita%NNel mezzo del cammin di nostra vita%NNel mezzo del cammin di nostra vita%NNel mezzo del cammin di nostra vita%NNel mezzo del cammin di nostra vita%NNel mezzo del cammin di nostra vita%NNel mezzo del cammin di nostra vita%NNel mezzo del cammin di nostra vita%NNel mezzo del cammin di nostra vita%NNel mezzo del cammin di nostra vita%NNel mezzo del cammin di nostra vita%NNel mezzo del cammin di nostra vita%NNel mezzo del cammin di nostra vita%NNel mezzo del cammin di nostra vita%N")
						--					sleep (2000000000)
				else
					io.put_string ("Harakiri disconnect.%N")
				end
				if attached specific_disconnect_agent as x then
					x.call ([Current])
				end
					-- specific_disconnect_agent := void -- No more than one call.
				dead := true
				socket.close ()
			end
		end

feature {BS_NET_SERVER}

	external_disconnect_agent: PROCEDURE [ANY, TUPLE [BS_NET_MACHINE]]

feature {NONE}

	harakiried: BOOLEAN

	disconnect_in_progress: BOOLEAN

feature {BS_NET_SOCKET_READER}

	dead: BOOLEAN

	socket_reader: BS_NET_SOCKET_READER

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
			socket_reader.check_response (protocol.send_it)
			send (serialized_object)
			socket_reader.check_ack ()
		end

	send_command (command: BS_NET_COMMAND)
		do
			send_line (protocol.sending_command)
			send_object (command)
		end

	send (what: STRING)
		require
			socket_connected: socket_is_connected ()
		local
			failed: BOOLEAN
		do
			if not failed then
				if not dead then
					socket.put_string (what)
				end
			else
				harakiri ()
			end
		rescue
			failed := true
			retry
		end

	send_line (what: STRING)
		require
			socket_connected: socket_is_connected ()
		do
			send (what + "%N");
		end

	harakiri () -- Called in case of any communication error: disconnects the machine
		do
			if not harakiried then
				harakiried := true
				io.put_string ("Harakiri!%N")
				disconnect ()
			end
		end

feature {BS_NET_SOCKET_READER}

	agent_set: attached BS_NET_AGENT_SET

feature {NONE} -- Locals

	socket: attached NETWORK_STREAM_SOCKET

	specific_disconnect_agent: detachable procedure [ANY, TUPLE [BS_NET_MACHINE]]

	protocol: BS_NET_PROTOCOL

	serializer: BS_NET_SERIALIZER

	socket_is_connected (): BOOLEAN
		do
			result := (socket /= void and then not socket.is_closed ())
		end

end
