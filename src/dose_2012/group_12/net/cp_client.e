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

			is_connected := True
		ensure
			connnection_status: is_connected = TRUE
		end

	get_game_message
		-- Listen for new game message
		do
			reader_writer.set_for_reading
			if attached {CP_GAMEMESSAGE} retrieved (reader_writer, True) as new_game_message then

			end
		end

feature	-- Actions

	start_game
			-- The message that the client sends to the server
			-- to ensure that he agrees to start the game.
		require
			connection_status: is_connected = TRUE
			game_has_not_started: game_started = FALSE
		do

		ensure
			game_has_strated: game_started = TRUE
		end

	send_move(player: CP_PLAYER; insect: CP_INSECT; position: CP_POSITION)
			-- Send the move you did to the other player
		require
			player_nov_void: player /= Void
			insect_not_void: insect/=Void
			position_not_void: position /= Void
			player_is_connected: is_connected = TRUE
			game_has_started:game_started = TRUE
		local
			new_move: CP_GAMEMOVE
			new_message: CP_GAMEMESSAGE
		do
			create new_move.make_game_move (player, insect, position)
			create new_message.make_gamemsg (new_move)
			reader_writer.set_for_writing
			store (new_message, reader_writer)
		end

	apply_move(game_msg:CP_GAMEMESSAGE;board:ARRAY[CP_INSECT])
			-- Applies the move that the client received
		require
			game_msg_not_void: game_msg/=Void
			board_not_void: board/=Void
			player_is_connected: is_connected = TRUE
			game_has_started:game_started = TRUE
		do

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
