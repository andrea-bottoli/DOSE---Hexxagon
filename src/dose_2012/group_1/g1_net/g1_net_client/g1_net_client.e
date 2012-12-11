note
	description: "Summary description for {G1_NET_CLIENT}."
	author: "MILANO7"
	date: "10/11/2012"
	revision: "1.0"

class
	G1_NET_CLIENT
inherit
	SOCKET_RESOURCES
	SED_STORABLE_FACILITIES

create
	make

feature

	port: INTEGER
	server_IP: STRING
	logic_game : G1_LOGIC_CLIENT
	socket : detachable NETWORK_STREAM_SOCKET
	game_started : BOOLEAN
	l_medium: SED_MEDIUM_READER_WRITER

feature -- Initialization
	make
		do
			port := 9190
		end

	make_client (serverIP: STRING; game: G1_LOGIC_CLIENT)
		--- This constructor initialize the default client information.
		--- Set default port to 9190
		require
			serverIP /= "0"
		do
			server_IP := serverIP
			port := 9190
			logic_game := game
			game_started := FALSE
		ensure
			port = 9190
			server_IP = serverIP
		end


feature {ANY} -- Operations

	connect(serverIP: STRING; serverPort: INTEGER)
		--- Connect the client to server.
		--- It's called by LOGIC subcomponent when the client is ready to connect.
		require
			serverIP /= Void
			serverPort > 1024 and serverPort < 65535
		do
			port := serverPort
			server_IP := serverIP
			create socket.make_client_by_port (port,server_IP)
			socket.connect
			create l_medium.make (socket)
			l_medium.set_for_reading
		ensure
			port = serverPort
			server_IP = serverIP
		end

	listener_from_network
		local
		do
			l_medium.set_for_reading
			if attached {G1_MESSAGE} retrieved (l_medium, True) as message then
			 	-- SEND TO LOGIC
			else
				-- ERROR
			end
		end

	send_request_add_player (player: G1_PLAYER)
		-- Request Add Player on the server
		require
			player /= Void
		do
			l_medium.set_for_writing
			store(player,l_medium)
			l_medium.set_for_reading
		end

	send_message_to_network (message: G1_MESSAGE)
		--- Send message to the network
		--- The message received by LOGIC subcomponent will be trasformed in a STRING
		require
			message /= Void
		do
			l_medium.set_for_writing
			store (message, l_medium)
			l_medium.set_for_reading
		ensure
		end

end
