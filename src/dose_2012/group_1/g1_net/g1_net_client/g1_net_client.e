note
	description: "NET Class for the client part. Receive and send request by LOGIC to the Server"
	author: "MILANO7: Jiang Wu"
	date: "$16/12/2012$"
	revision: "$2.0$"

class
	G1_NET_CLIENT
inherit
	SOCKET_RESOURCES
	SED_STORABLE_FACILITIES

create
	make, make_client

feature

	port: INTEGER
		-- Port of server
	server_IP: STRING
		-- IP of server
	logic_game : G1_LOGIC_CLIENT
		-- Reference to the logic part of the game, on the client side
	socket : detachable NETWORK_STREAM_SOCKET
		-- Socket used to connect to the server. It's initialized for client use
	game_started: BOOLEAN
		-- Boolean which indicate if the game is started or not
	l_medium: SED_MEDIUM_READER_WRITER
		-- Reader/Writer used to receive or send message from the net
	is_connected: BOOLEAN
		-- Boolean used to know if the client is connected to server or not
	is_initializate: BOOLEAN

feature
	-- Initialization feature
	make
		do
			port := 9190
		end

	make_client (game: G1_LOGIC_CLIENT)
		-- This constructor initialize the default client information.
		-- It requests the game logic to set the reference for all movement of the game.
		-- Set default port to 9190
		require
			game /= Void
		do
			is_connected := FALSE
			port := 9190
			logic_game := game
			game_started := FALSE
		ensure
			port = 9190
		end


feature {ANY} -- Operations

	connect(serverIP: STRING; serverPort: INTEGER)
		-- Connect the client to server.
		-- It's called by LOGIC subcomponent when the client is ready to connect.
		-- This function also create a read/write references for the network
		require
			serverIP /= Void
			serverPort > 1024 and serverPort < 65535
		local
			read_thread: G1_NET_CLIENT_THREAD
		do
			port := serverPort
			server_IP := serverIP
			create socket.make_client_by_port (port,server_IP)
			socket.connect
			is_connected := TRUE
			create l_medium.make (socket)
			create read_thread.make (l_medium, logic_game,Current)
			read_thread.launch
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
