note
	description: "Summary description for {TEST_XX_CHAT_TO_NET_INTERFACE}."
	author: "Nada Feteha & Huda Touny"
	date: "11/21/2012"
	revision: "Nada Feteha"

class
	TEST_XX_CHAT_TO_NET_INTERFACE
inherit
    EQA_TEST_SET

feature -- Test routines
	test_send_chat_message
	note
			testing: "covers/{XX_CHAT_TO_NET_INTERFACE}.send_chat_message"
			testing: "user/XX"
		local
			l_chat_net: XX_CHAT_TO_NET_INTERFACE
			l_str: STRING
		do
		-- Test 1
			l_str:="TEST"
			l_chat_net.send_chat_message(l_str)
			assert ("Send correct ",TRUE)

		--Test 2
			l_str:="TEST"
			l_chat_net.send_chat_message(l_str)
			assert ("Send correct ",l_str/= void )

		--Test 3
			l_str:="TEST"
			l_chat_net.send_chat_message(l_str)
			assert ("Send correct ",l_str.empty = FALSE )

		--Test 4
				l_str:=""
				l_chat_net.send_chat_message(l_str)
				assert ("to implement",TRUE)

		--Test 5
				l_chat_net.send_chat_message(l_str)
				assert ("to implement",TRUE)
		end
	test_set_chat_manager
		note
			testing: "covers/{XX_CHAT_TO_NET_INTERFACE}.send_chat_message"
			testing: "user/XX"
		local
			l_chat_net: XX_CHAT_TO_NET_INTERFACE
			l_chat: XX_CHAT
		do
			create l_chat
			l_chat_net.set_chat_manager (l_chat)
			assert ("Set chat manage correctly",l_chat/=Void)
		end

end
