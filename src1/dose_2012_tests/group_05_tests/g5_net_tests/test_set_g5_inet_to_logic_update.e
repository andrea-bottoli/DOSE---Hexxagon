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

	received_message: G5_MESSAGE
		-- Parameter of the command to test

	message_action: G5_MESSAGE_ACTION
		-- Auxiliary to instantiate of G5_MESSAGE	

feature -- Preparation of Test

	on_prepare
		-- Initializes the necessary elements
		do
			create net_server.make (1025, 2)
			class_test := net_server
		end

feature -- Test positive

	update0
		-- update("SERVER", <<"CLIENT">>, "put_in_hand",<<"K5","K9">>,2,2,False)
		note
			testing: "G5_INET_TO_LOGIC_UPDATE/.update"
			testing: "user/G5" -- this is the tag based on the group-prefix for our tests
		local
			messages_list: LINKED_LIST[G5_MESSAGE]
		do
			create messages_list.make
			create message_action.make ("SERVER", <<"CLIENT">>, "put_in_hand",<<"K5","K9">>,2,2,False)
			messages_list.force (message_action)
			class_test.update (messages_list)
			assert ("update was successful", True)
		end

feature -- Test negative

	update1
		-- update("SERVER", <<"CLIENT">>, "put_in_hand",<<"K5","K9">>,2,2,False)
		note
			testing: "G5_INET_TO_LOGIC_UPDATE/.update"
			testing: "user/G5" -- this is the tag based on the group-prefix for our tests
		local
			rescued: BOOLEAN
			messages_list: LINKED_LIST[G5_MESSAGE]
		do
			if not rescued then
				create messages_list.make
				create message_action.make ("SERVER", <<"CLIENT">>, "put_in_hand",<<"K5","K9">>,2,2,False)
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

		update2
			-- update("SERVER", <<"CLIENT">>, "put_in_hand",<<"K5","K9">>,2,2,False)
			-- update("CLIENT", <<"CLIENT1", "CLIENT2">>, "selected_from_hand",<<"K5","K9">>,2,2,False)
			note
				testing: "G5_INET_TO_LOGIC_UPDATE/.update"
				testing: "user/G5" -- this is the tag based on the group-prefix for our tests
			local
				rescued: BOOLEAN
				messages_list: LINKED_LIST[G5_MESSAGE]
			do
				if not rescued then
					create messages_list.make
					create message_action.make ("SERVER", <<"CLIENT">>, "put_in_hand",<<"K5","K9">>,2,2,False)
					messages_list.force (message_action)
					messages_list.force (void)
					create message_action.make ("CLIENT", <<"CLIENT1", "CLIENT2">>, "selected_from_hand",<<"K5","K9">>,2,2,False)
					messages_list.force (message_action)
					-- Here in the list of the messages an empty one is present so a rescue procedure must be raised
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

		update3
			-- update("CLIENT", <<"SERVER">>, "play",<<"K9">>,1,1,False)
			note
				testing: "G5_INET_TO_LOGIC_UPDATE/.update"
				testing: "user/G5" -- this is the tag based on the group-prefix for our tests
			local
				rescued: BOOLEAN
				messages_list: LINKED_LIST[G5_MESSAGE]
			do
				if not rescued then
					create messages_list.make
					create message_action.make ("CLIENT", <<"SERVER">>, "play",<<"K9">>,1,1,False)
					messages_list.force (message_action)
					-- Here the list of messages ontins a message with an erroneous target
					-- so a rescue procedure must be raised.
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
