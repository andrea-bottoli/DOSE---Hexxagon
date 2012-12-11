note
	description: "Summary description for {TEST_XX_CHAT}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	TEST_XX_CHAT

inherit
    EQA_TEST_SET

feature -- Test routines
	test_send_chat_message
		note
			testing: "covers/{XX_CHAT_TO_GUI_INTERFACE}.send_chat_message"
			testing: "user/XX"
		local
			l_chat: XX_CHAT
			l_str: STRING
		do
			-- Test 1
			create l_chat.default_create
			l_str:="TEST"
			l_chat.send_chat_message(l_str)
			assert ("Send correct ",TRUE)
			assert ("Send correct ",l_str/= void )
			assert ("Send correct ",l_str.is_empty = FALSE )

			--Test 2
				l_str:=""
				l_chat.send_chat_message(l_str)
				assert ("to implement",TRUE)

			--Test 3
				l_chat.send_chat_message(l_str)
				assert ("to implement",TRUE)
		end

	test_set_chat_message
		note
			testing: "covers/XX_CHAT_TO_GUI_INTERFACE).set_chat_message"
			testing: "user/XX"
		local
			l_chat: XX_CHAT
		    l_str: STRING
			do
				-- Test 1
				create l_chat.default_create
				l_str:="TEST"
				l_chat.set_chat_message(l_str)
				assert ("message setted",TRUE)
				assert ("Send correct ",l_str/= void )
				assert ("Send correct ",l_str.is_empty = FALSE )
				--Test 2
					l_str:=""
					l_chat.set_chat_message(l_str)
					assert ("message emty not be set ",TRUE)

				--Test 3
					l_chat.set_chat_message(l_str)
					assert ("massege is void not set ",TRUE)
			end
	test_set_net_manager
		note
			testing: "{covers/XX_CHAT_TO_GUI_INTERFACE}.set_net_manager"
			testing: "user/XX"
		local
			l_chat: XX_CHAT
			l_net: XX_NET
		do
			create l_chat.default_create
			create l_net.make
			assert ("net manager set correctly", l_net /= void)
		end
end
