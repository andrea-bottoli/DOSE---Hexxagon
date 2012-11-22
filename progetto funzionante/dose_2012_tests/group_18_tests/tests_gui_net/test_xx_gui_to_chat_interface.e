note
	description: "Summary description for {TEST_XX_GUI_TO_CHAT_INTERFACE}."
	author: "Nada Feteha & Huda Touny"
	date: "11/21/2012"
	revision: "Huda Touny"


class
	TEST_XX_GUI_TO_CHAT_INTERFACE

inherit
    EQA_TEST_SET

feature -- Test routines
	test_send_chat_message
		note
			testing: "covers/{XX_GUI_TO_CHAT_INTERFACE}.send_chat_message"
			testing: "user/XX"
		local
			l_chat: XX_GUI_TO_CHAT_INTERFACE
		    l_str: STRING
			do
				-- Test 1
				l_str:="TEST"
				l_chat.send_chat_message(l_str)
				assert ("to implement",TRUE)

				--Test 2
				l_str:="TEST"
				l_chat.send_chat_message(l_str)
				assert ("Send correctly",l_str.empty = FALSE)

				--Test 2
				l_str:="TEST"
				l_chat.send_chat_message(l_str)
				assert ("Send correctly",l_str/= Void)

				--Test 4
					l_str:=""
					l_chat.send_chat_message(l_str)
					assert ("to be implemented ",TRUE)

				--Test 5
					l_chat.send_chat_message(l_str)
					assert ("to be implemented ",TRUE)
			end
	test_set_net_manager
		note
			testing: "covers/{XX_GUI_TO_CHAT_INTERFACE}.set_net_manager"
			testing: "user/XX"
		local
			l_chat: XX_GUI_TO_CHAT_INTERFACE
			l_net: XX_NET
			l_get_is_net_manager:BOOLEAN
		do
			--Test 1
			create l_net.make
			l_chat.set_net_manager (l_net)
			assert ("massege is void cann't set ",l_net/= void)
			
			--Test 2
			l_get_is_net_manager := True
			--assert("",l_chat.get_is_net_manager_setted=l_get_is_net_manager )
		end
end
