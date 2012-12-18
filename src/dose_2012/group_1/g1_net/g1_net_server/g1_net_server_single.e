note
	description: "Class to create a Server for the game Monopoly"
	author: "MILANO7: Jiang Wu"
	date: "$16/12/2012$"
	revision: "$3.0$"

class
	G1_NET_SERVER_SINGLE
inherit
	SOCKET_RESOURCES
	SED_STORABLE_FACILITIES

create
	make

feature {NONE}

	port: INTEGER
	players_list: HASH_TABLE [SED_MEDIUM_READER_WRITER, INTEGER]
	server_IP: STRING
	socket: NETWORK_STREAM_SOCKET
	game_server: G1_LOGIC_SERVER

feature {NONE} -- Server status

	timeout: INTEGER
	l_match_name: STRING
	is_started: BOOLEAN

feature -- Initialization

	make (match_name: STRING)
			--- This constructor initialize the default server information.
			--- Set default port to 9190
		do
			create game_server.make_net (Current)
			port := 9190
			is_started := FALSE
			timeout := 5
			create players_list.make (6)
		ensure
			port = 9190
			is_started = FALSE
			timeout > 0
		end

feature {ANY} -- Operations

	get_match_name: STRING
		do
			Result := l_match_name
		end

	set_match_name (match_name: STRING)
		do
			l_match_name := match_name
		end

	send_message_broadcast (message: G1_MESSAGE)
			--- This method sends message to the network, to all the players who plays in specific match
			--- The message will be transformed to a string which will send on the network
		require
			message /= Void
		local
			count: INTEGER
			l_medium: SED_MEDIUM_READER_WRITER
			players: ARRAY [INTEGER]
		do
			from
				count := 1
				players := players_list.current_keys
			until
				count = players_list.count + 1
			loop
				l_medium := players_list.item (players.entry (count))
				l_medium.set_for_writing
				store (message, l_medium)
				l_medium.set_for_reading
			end
		ensure
		end

	send_message_to (player: INTEGER; message: G1_MESSAGE)
			--- This feature, called by LOGIC subcomponents, sends to the specific player of the match the message
			--- The player is associated at a specific match, so will send only to him.
		require
			player /= 0
			message /= Void
		local
			l_medium: SED_MEDIUM_READER_WRITER
		do
			l_medium := players_list.at (player)
			l_medium.set_for_writing
			store (message, l_medium)
			l_medium.set_for_reading
		ensure
		end

feature {ANY} -- Server settings

	start_server ()
			--- This method starts the server.
			--- It is called by server launcher
		require
			status: is_started = FALSE
		do
			create socket.make_server_by_port (port)
			is_started := TRUE
			accept_users
		ensure
			status: is_started = TRUE
		end

	accept_users
		local
			timer: G1_TIMER
			start_message: G1_MESSAGE_FINISH
			finish: BOOLEAN
		do
			finish:=FALSE
			create timer.make(120)
			from
				socket.listen (5)
			until
				players_list.count = 5 or finish = TRUE
			loop
				if players_list.count=2 then
					timer.launch
				end
				if players_list.count>2 then
					finish := timer.terminated
				end
				accepting (socket)
			end
			create start_message.make_finish (players_list.current_keys.at (0),False,False)
			start_message.set_message ("NOT")
			send_message_broadcast (start_message)
		end

	accepting (single_socket: NETWORK_STREAM_SOCKET)
		local
			l_medium: SED_MEDIUM_READER_WRITER
			l_thread: G1_NET_SERVER_LISTENING
		do
			single_socket.accept
			if attached {NETWORK_STREAM_SOCKET} single_socket.accepted as socket_player then
				create l_medium.make (socket_player)
				l_medium.set_for_reading
				players_list.put (l_medium, players_list.count+1)
			end
			create l_thread.make(Current,game_server,l_medium)
			l_thread.launch
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
