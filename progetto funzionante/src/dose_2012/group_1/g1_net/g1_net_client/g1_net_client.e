note
	description: "Summary description for {G1_NET_CLIENT}."
	author: "MILANO7"
	date: "10/11/2012"
	revision: "1.0"

class
	G1_NET_CLIENT

create
	make

feature 

	port: INTEGER
	server_IP: STRING

feature -- Initialization

	make
		--- This constructor initialize the default client information.
		--- Set default port to 9190
		do
		ensure
			port = 9190
		end


feature {ANY} -- Operations

	connect(serverIP: STRING; serverPort: INTEGER)
		--- Connect the client to server.
		--- It's called by LOGIC subcomponent when the client is ready to connect.
		require
			serverIP /= Void
			serverPort > 1024 and serverPort < 65535
		do
		ensure
			port = serverPort
			server_IP = serverIP
		end

	send_message_to_network (message: G1_MESSAGE)
		--- Send message to the network
		--- The message received by LOGIC subcomponent will be trasformed in a STRING
		require
			message /= Void
		do
		ensure
		end

end
