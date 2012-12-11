note
	description: "Summary description for G1_NET_SERVER_MULTI."
	author: "MILANO7"
	date: "10/11/2012"
	revision: "1.0"

class
	G1_NET_SERVER_SINGLE
inherit
	SOCKET_RESOURCES
	SED_STORABLE_FACILITIES

create
	make

feature {NONE}

	port: INTEGER
	players_list: HASH_TABLE [SED_MEDIUM_READER_WRITER,INTEGER]
	server_IP: STRING
	socket: NETWORK_STREAM_SOCKET
	game_server: G1_LOGIC_SERVER

feature {NONE} -- Server status

	is_started: BOOLEAN
	timeout: INTEGER

feature -- Initialization

	make
			--- This constructor initialize the default server information.
			--- Set default port to 9190
		do
			create game_server.make_controller(Current)
			port := 9190
			is_started := FALSE
			timeout := 5
			create socket.make_server_by_port (port)
			create players_list.make (6)
		ensure
			port = 9190
			is_started = FALSE
			timeout > 0
		end

feature {ANY} -- Operations

	send_message_broadcast (message: G1_MESSAGE)
			--- This method sends message to the network, to all the players who plays in specific match
			--- The message will be transformed to a string which will send on the network
		require
			message /= Void
		local
			count: INTEGER
			l_medium: SED_MEDIUM_READER_WRITER
			players: ARRAY[INTEGER]
		do
			from
				count := 1
				players := players_list.current_keys
			until
				count = players_list.count+1
			loop
				l_medium := players_list.item (players.entry (count))
				l_medium.set_for_writing
				store (message, l_medium)
				l_medium.set_for_reading
			end
		ensure
		end

	send_message_to (player: G1_PLAYER; message: G1_MESSAGE)
			--- This feature, called by LOGIC subcomponents, sends to the specific player of the match the message
			--- The player is associated at a specific match, so will send only to him.
		require
			player /= Void
			message /= Void
		local
			l_medium: SED_MEDIUM_READER_WRITER
		do
			l_medium := players_list.at (player.get_id_player)
			l_medium.set_for_writing
			store(message,l_medium)
			l_medium.set_for_reading
		ensure
		end

feature {ANY} -- Server settings

	start_server()
			--- This method starts the server.
			--- It is called by server launcher
		require
			status: is_started = FALSE
		local
			count: INTEGER
		do
			io.put_string ("SERVER: Server Started%N")
			is_started := TRUE

			from
				socket.listen (5)
				count := 0
			until
				count = 5
			loop
				listener(socket)
				count := count + 1
			end
			socket.cleanup
		ensure
			status: is_started = TRUE
		end

	listener(single_socket: NETWORK_STREAM_SOCKET)
		local
			l_medium: SED_MEDIUM_READER_WRITER
		do
			single_socket.accept
			if attached {NETWORK_STREAM_SOCKET} single_socket.accepted as socket_player then
				create l_medium.make (socket_player)
				l_medium.set_for_reading
				if attached {G1_PLAYER} retrieved (l_medium, True) as player then
					players_list.put (l_medium,player.get_id_player)
					game_server.add_player (player)
				end
			end
		end

	listener_from_network(player: G1_PLAYER)
		local
			l_medium_current: SED_MEDIUM_READER_WRITER
		do
			l_medium_current := players_list.at (player.get_id_player)
			l_medium_current.set_for_reading
			if attached {G1_MESSAGE} retrieved (l_medium_current, True) as message then
				-- SEND TO LOGIC_SERVER
			end
		end


	stop_server ()
			--- This method stops the server.
			--- It is called by server launcher.
			--- All matches are stopped and all players are disconnected.
		require
			status: is_started = TRUE
		do
		ensure
			status: is_started = FALSE
		end
end

