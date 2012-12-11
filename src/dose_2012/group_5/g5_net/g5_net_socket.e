note
	description: "[
					The G5_NET_SOCKET class inherits from the NETWORK STREAM class 
					and it adds the possibity to check if the current instances 
					has some messages that must be retrieved from the target of 
					the communication.
					]"
	author: "Luca Falsina"
	date: "02.12.2012"
	revision: "0.1"

class
	G5_NET_SOCKET

inherit
	NETWORK_STREAM_SOCKET

create
	make_server_by_port, make_client_by_address_and_port

feature -- Status Report

	has_message_for_client: BOOLEAN
		-- This boolean is set on true when the server has sent one or more messages
		-- to the client assciated to this socket.

	has_message_for_server: BOOLEAN
		-- This boolean is set on true when the client has sent one or more messages
		-- to the server associated to this socket.

feature {G5_NET_SERVER} -- Server modifiers of Socket state

	set_has_message_for_client
			-- set on "true" the has_message_for_client attribute
		require
		do
			has_message_for_client := true
		ensure
			has_message_for_client = true
		end

	reset_has_message_for_server
			-- set on "false" the has_message_for_server attribute
		require
		do
			has_message_for_server := false
		ensure
			has_message_for_server = false
		end

feature {G5_NET_MESSENGER_CLIENT} -- Client modifiers of Socket state

	set_has_message_for_server
			-- set on "true" the has_message_for_server attribute
		require
		do
			has_message_for_server := true
		ensure
			has_message_for_server = true
		end

	reset_has_message_for_client
			-- set on "false" the has_message_for_client attribute
		require
		do
			has_message_for_client := false
		ensure
			has_message_for_client = false
		end

end
