note
	description: "This class will be the key element on Client side: it will manage communication with Server side through a socket and with Client corresponging GUI through APIs invokations."
	author: "Luca Falsina"
	date: "17.11.2012"
	revision: "1.1"

class
	G5_NET_CLIENT

inherit
	G5_INET_TO_GUI
	SOCKET_RESOURCES
	STORABLE

create
	make

feature -- Status Report

	communication_socket: detachable NETWORK_STREAM_SOCKET
			-- This socket is generated when a client connects succesfully with its server.
			-- It will be used to send and receive G5_MESSAGE instances from the server net class.

	client_GUI: G5_IGUI_TO_NET
			-- This instance represents the object used to interact with the user. In particular it
			-- will provide user input to this class and it will show all changes in the game state,
			-- notified by the NET CLIENT component.

feature {ANY} -- Initialization by G5_LAUNCHER

	make(associated_GUI: G5_IGUI_TO_NET)
			-- This constructor instantiates the NET CLIENT component and in particular it will
			-- grant that associated_GUI and this instance will be connected mutually.
		require
			existent_GUI: associated_GUI /= void
		do
		ensure
			valid_GUI_component: client_GUI = associated_GUI
		end

feature {G5_NET_CLIENT, TEST_SET_G5_NET_CLIENT} -- Communication through socket

	send_message_to_server(socket_message: G5_MESSAGE)
			-- This feature will be called whenever a G5_MESSAGE object needs to be carried
			-- from the actual client to the server.
		require
			correct_message:
				socket_message /= void and
				socket_message.source.is_equal (player_name) and
				socket_message.targets.count = 1 and
				socket_message.targets.item (1).is_equal ("SERVER")
		do
		ensure
			-- the message is correctly sent to the server through the socket.
		end

	wait_for_messages()
			-- This feature will be invoked when a client needs to recive one or more G5_MESSAGE
			-- from the server before performin an action.
		require
			true
		do
		ensure
			-- The client switch to a sort of "listening mode" and waits for server messages.
		end

end
