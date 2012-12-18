note
	description: "[
		Eiffel tests that can be executed by testing tool.
	]"
	author: "EiffelStudio test wizard"
	date: "$Date$"
	revision: "$Revision$"
	testing: "type/manual"

class
	G3_TEST_NETWORK_CONNECT

inherit
	EQA_TEST_SET

feature -- Test routines

	connect
			-- New test routine
		local
			player_id : G3_PLAYER_ID
			message, message_back : G3_MESSAGE
			net : G3_NETWORK

		do
			create player_id.make -- create a unregister player id
			create net.make(false)
			create message.make
			message.set_sender_id(player_id)
			message.set_receiver_id (player_id.get_server_id)
			message_back := net.connect ("localhost",message)
			assert ("connected successful", message_back.receiver_id.is_register)
		end

end
