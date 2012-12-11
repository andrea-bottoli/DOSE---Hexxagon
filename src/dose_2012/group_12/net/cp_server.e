note
	description: "This is the interface for the CP_SERVER part of the NET component."
	author: "Christos Petropoulos"
class
	CP_SERVER

inherit

	SOCKET_RESOURCES
	SED_STORABLE_FACILITIES

create

	make_server


feature -- Attributes

	server_has_started: BOOLEAN
	game_started: BOOLEAN
	socket : NETWORK_STREAM_SOCKET
	client_socket: NETWORK_STREAM_SOCKET
	client_ready: BOOLEAN
	reader_writer: SED_MEDIUM_READER_WRITER

feature	-- Initialization

	make_server (port: INTEGER_32)
			-- Create the server
		require
			server_status: server_has_started = FALSE
		do
			create socket.make_server_by_port (port)
			socket.listen (5)

			server_has_started := True
		ensure
			server_status: server_has_started = TRUE
		end

feature -- Message recievers

	process()
			-- Listening for any message
		do
			if client_socket = Void then
				socket.accept
				if attached {NETWORK_STREAM_SOCKET} socket.accepted as tmp_socket then
					client_socket := tmp_socket
					create reader_writer.make (client_socket)
					-- Say in chat that someone has connected
				end
			end

			reader_writer.set_for_reading
			if attached {CP_GAMEMESSAGE} retrieved (reader_writer, True) as new_game_message then

			end

			reader_writer.set_for_reading
			if attached {CP_MESSAGE} retrieved (reader_writer, True) as new_message then
				post_message (new_message)
			end
		ensure
			connection_established: client_socket /= Void
			ready_for_writing_and_reading: reader_writer /= Void
		end

feature	-- Actions for game

	start_game
			-- The message that the client sends to the server
			-- to ensure that he agrees to start the game.
		require
			connection_status: server_has_started = TRUE
			game_has_not_started: game_started = FALSE
		local
			new_start_signal: CP_GAMEMESSAGE
		do
			if client_ready then
				create new_start_signal.make_start_signal
				reader_writer.set_for_writing
				store (new_start_signal, reader_writer)
				game_started := True
			end
		ensure
			game_has_strated: game_started = TRUE
		end


	send_message(player: CP_PLAYER; message: STRING)
			-- Send a message to the other player
		require
			player_not_void: player/=Void
			message_not_void: message/= Void
			message_not_empty: message/=""
			player_is_connected: client_socket /= Void
			server_is_online: server_has_started = True
			game_has_started: game_started = TRUE
		local
			new_message: CP_MESSAGE
		do
			create new_message.make_msg ("Add accessors in CP_PLAYER!", message)
			reader_writer.set_for_writing
			store (new_message, reader_writer)
		end

	send_move(player: CP_PLAYER; insect: CP_INSECT; position: CP_POSITION)
			-- Send the move you did to the other player
		require
			player_not_void: player /= Void
			insect_not_void: insect/=Void
			position_not_void: position /= Void
			player_is_connected: client_socket /= Void
			game_has_started: game_started = TRUE
		local
			new_move: CP_GAMEMOVE
			new_message: CP_GAMEMESSAGE
		do
			create new_move.make_game_move (player, insect, position)
			create new_message.make_gamemsg (new_move)
			reader_writer.set_for_writing
			store (new_message, reader_writer)
		end

	post_message(message:CP_MESSAGE)
			-- Send to the GUI the message
		require
			message_not_void: message/=Void
			player_is_connected: server_has_started = TRUE
		do

		end

	apply_move(game_msg:CP_GAMEMESSAGE;board:ARRAY[CP_INSECT])
			-- Applies the move that the client received
		require
			game_msg_not_void: game_msg/=Void
			board_not_void: board/=Void
			player_is_connected: server_has_started = TRUE
			game_has_started: game_started = TRUE
		do

		end

feature -- Actions for connection

	abortServer
		require
			server_is_created: server_has_started/=FALSE
		do
			socket.cleanup

			server_has_started := False
			game_started := False
		ensure
			server_is_down: server_has_started=FALSE
			game_has_stopped: game_started = FALSE
		rescue
			if socket /= Void then
				socket.cleanup
			end
		end


end
