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
	chat_sender_receiver: CP_CHAT_SENDER_RECEIVER
	move_sender_receiver: CP_MOVE_SENDER_RECEIVER

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

	connect
		-- Connecting with the client
		do
			if client_socket = Void then
				socket.accept
				if attached {NETWORK_STREAM_SOCKET} socket.accepted as tmp_socket then
					client_socket := tmp_socket
					create reader_writer.make (client_socket)
					create chat_sender_receiver.make (client_socket, 32)
					create move_sender_receiver.make (client_socket, 37)
					-- Say in chat that someone has connected
				end
			end
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
