note
	description: "Summary description for {TEST_SET_G5_INET_TO_LOGIC_UPDATE}."
	author: "JESUS CASTELLI"
	date: "$21/11/2012$"
	revision: "$0.0$"

class
	TEST_SET_G5_INET_TO_LOGIC_UPDATE

inherit

	EQA_TEST_SET
		redefine
			on_prepare
		end

feature -- Elements needed to the test

	class_test: G5_INET_TO_LOGIC
		-- Instance to the class that contains the command to test

	net_server: G5_NET_SERVER
		-- Auxiliary to instantiate of G5_INET_TO_LOGIC

	gui_to_net: G5_IGUI_TO_NET
		-- Auxiliary to instantiate of G5_NET_CLIENT

	gui: G5_GUI
		-- Auxiliary to instantiate of G5_IGUI_TO_NET

	received_message: G5_MESSAGE
		-- Parameter of the command to test

	message_action: G5_MESSAGE_ACTION
		-- Auxiliary to instantiate of G5_MESSAGE	

feature -- Preparation of Test

	on_prepare
		-- Initializes the necessary elements
		do
			create gui.make_test
			gui_to_net := gui
			create net_server.make (1025, 2)
			class_test := net_server
		end

feature -- Test positive

	update0
		-- update("SERVER", <<"CLIENT">>, "answer_of_keeping",["K5","K9"],1,3,False)
		note
			testing: "G5_INET_TO_LOGIC_UPDATE/.update"
			testing: "user/G5" -- this is the tag based on the group-prefix for our tests
		local
			messages_list: LINKED_LIST[G5_MESSAGE]
		do
			create messages_list.make
			create message_action.make ("SERVER", <<"CLIENT">>, "answer_of_keeping",<<"K5","K9">>,1,3,False)
			messages_list.force (message_action)
			class_test.update (messages_list)
			assert ("update was successful", True)
		end

feature -- Test negative

	update1
		-- update("SERVER", <<"JESUS">>, "pass_turn", "TURN OF RUTH")
		note
			testing: "G5_INET_TO_LOGIC_UPDATE/.update"
			testing: "user/G5" -- this is the tag based on the group-prefix for our tests
		local
			rescued: BOOLEAN
			messages_list: LINKED_LIST[G5_MESSAGE]
		do
			if not rescued then
				create messages_list.make
				create message_action.make ("SERVER", <<"JESUS">>, "answer_of_keeping",<<"K5","K9">>,1,3,False)
				-- Here the list of messages is empty so a rescue procedure must be raised
				class_test.update (messages_list)
				assert ("update was successful but it should not", False)
			end
			assert ("notify raised problem", rescued)
			rescue
				if not rescued then
					rescued := True
					retry
				end
		end
end
