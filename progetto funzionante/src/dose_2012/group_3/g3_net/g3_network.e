note
	description: "Server and Client for Tichu"
	author: "LYDATAKIS KATEROS GEORGIOU"
	date: "Some Date"
	revision: "1.0"

class
	G3_NETWORK

inherit
	SOCKET_RESOURCES
	STORABLE
	G3_INETWORK

create
	make

feature{NONE}
	ip_list:LINKED_LIST[INTEGER]
	portId: INTEGER
	connectionStart: BOOLEAN
	connectionFinish: BOOLEAN

feature{ANY} -- Initialization
	make(is_Server: BOOLEAN)
		do
			-- if TRUE run_server_mode()
		end


feature{ANY} -- Server

	run_server_mode ()	-- set the component ready to receive conections
		do

		end

	send_to_client (message : G3_MESSAGE) -- send message to registered client
		do

		end

	receiveMessage_from_client(message:G3_MESSAGE)
		require --message not empty
			checkMsg: message /= ""
		do

		end

feature{ANY} -- Client

	connect (ip : STRING ; message : G3_MESSAGE) : G3_MESSAGE -- this feature shall be called by client controller to register on the remote game
		do

		end

	send_to_server (message : G3_MESSAGE) -- send message to server controller registered after invoking feature connect
		do

		end

	receiveMessage_from_server(message:G3_MESSAGE)
		require --message not empty
			checkMsg: message /= ""
		do

		end

feature{ANY} -- Start and Finish the game

	startGame(port: INTEGER)
		require
			connect: connectionStart = FALSE
			gamePort: port > 0
		do
		ensure
			connect: connectionStart = TRUE
		end

	finishGame()
		require
			connect: connectionStart = TRUE
			connect2: connectionFinish = FALSE
		do
		ensure
			connect: connectionStart = FALSE
			connect2: connectionFinish = TRUE
		end

end
