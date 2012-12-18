note
	description: "This is the interface for the CP_CLIENT part of the NET component."
	author: "Christos Petropoulos"

class
	CP_CLIENT

inherit

	SOCKET_RESOURCES

	SED_STORABLE_FACILITIES

create

	make

feature -- Attributes

	game_started: BOOLEAN
	is_connected: BOOLEAN
	socket : NETWORK_STREAM_SOCKET
	reader_writer: SED_MEDIUM_READER_WRITER
	chat_sender_receiver: CP_CHAT_SENDER_RECEIVER
	move_sender_receiver: CP_MOVE_SENDER_RECEIVER

feature	-- Initialization

	make(ip_address:STRING; port: INTEGER_32)
			-- Connect to a server
		require
			connection_status: is_connected = FALSE
			ip_address_not_void: ip_address/=Void
		do
			create socket.make_client_by_port (port, ip_address)
			socket.connect
			create reader_writer.make (socket)
			create chat_sender_receiver.make (socket, 33)
			create move_sender_receiver.make (socket, 38)

			is_connected := True
		ensure
			connnection_status: is_connected = TRUE
		end

feature	-- Actions

	start_game
			-- The message that the client sends to the server
			-- to ensure that he agrees to start the game.
		require
			connection_status: is_connected = TRUE
			game_has_not_started: game_started = FALSE
		local
			new_start_signal: CP_GAMEMESSAGE
		do
			create new_start_signal.make_start_signal
			reader_writer.set_for_writing
			store (new_start_signal, reader_writer)

			game_started := True

			-- Actually, this class is more of an agreement to start
			-- so, it doesn't have to ensure that the game has started
		ensure
			game_has_strated: game_started = TRUE
		end

feature -- Actions for connection

	disconnect
		require
			connected_to_server: is_connected/=FALSE
		do
			socket.cleanup

			is_connected := False
		ensure
			disconnected_from_server: is_connected=FALSE
		rescue
			if socket /= Void then
				socket.cleanup
			end
		end

end
