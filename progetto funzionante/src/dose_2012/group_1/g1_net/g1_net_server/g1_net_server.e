note
	description: "Summary description for {G1_NET_SERVER}."
	author: "MILANO7"
	date: "10/11/2012"
	revision: "1.0"

class
	G1_NET_SERVER

create
	make

feature {NONE}

	port: INTEGER

	game_list: LIST [G1_LOGIC_SERVER]

	players_list: HASH_TABLE [STRING, INTEGER]

	server_IP: STRING

feature -- Server status

	is_started: BOOLEAN

feature -- Initialization

	make
			--- This constructor initialize the default server information.
			--- Set default port to 9190
		do
		ensure
			port = 9190
			is_started = FALSE
		end

feature {ANY} -- Operations

	send_message_broadcast (IDMatch: STRING; message: G1_MESSAGE)
			--- This method sends message to the network, to all the players who plays in specific match
			--- The message will be transformed to a string which will send on the network
		require
			IDMatch /= Void
			message /= Void
		do
		ensure
		end

	send_message_to (player: G1_PLAYER; message: G1_MESSAGE)
			--- This feature, called by LOGIC subcomponents, sends to the specific player of the match the message
			--- The player is associated at a specific match, so will send only to him.
		require
			player /= Void
			message /= Void
		do
		ensure
		end

feature {ANY} -- Server settings

	set_port (game_port: INTEGER)
			--- The procedure is called when the server game port should be changed.
			--- It's called by server launcher
		require
			valid_port: game_port > 1023 and game_port < 65535
		do
		ensure
			valid_port: port = game_port
		end

	get_port (): INTEGER
			--- Get the port value set on the server
		require
		do
		ensure
			Result = port
		end

	get_IP (): STRING
			--- Get the IP of the machine
		require
		do
		ensure
			Result = server_IP
		end

	start_server ()
			--- This method starts the server.
			--- It is called by server launcher
		require
			status: is_started = FALSE
		do
		ensure
			status: is_started = TRUE
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

	set_time_out (seconds: INTEGER)
			-- set time out value
		require
			time_valid: seconds > 0
		do
		ensure
		end

feature {NONE}

	start_game (game: G1_LOGIC_SERVER)
			-- accept client to the game
		require
		do
		ensure
		end

end
