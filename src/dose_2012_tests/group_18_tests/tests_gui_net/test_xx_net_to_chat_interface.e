note
	description: "Summary description for {TEST_XX_CHAT_TO_GUI_INTERFACE}."
	author: "Nada Feteha & Huda Touny"
	date: "11/21/2012"
	revision: "Nada Feteha"

class
	TEST_XX_NET_TO_CHAT_INTERFACE
inherit
    EQA_TEST_SET

feature -- Test routines
	test_set_chat_message
		note
			testing: "covers/{XX_CHAT_TO_GUI_INTERFACE}.set_chat_message"
			testing: "user/XX"
		local
			l_chat: XX_NET_TO_CHAT_INTERFACE
		    l_str: STRING
		    l_check: BOOLEAN
			do
				-- Test 1
				l_str:="TEST"
				l_chat.set_chat_message(l_str)
				assert ("message setted",TRUE)

				--Test 2
				l_str:="TEST"
				l_chat.set_chat_message(l_str)
				assert ("message setted",l_str/=Void)

				--Test 3
				l_str:="TEST"
				l_chat.set_chat_message(l_str)
				l_check:=FALSE
				assert ("message setted",l_str.empty = l_check)

				--Test 4
					l_str:=""
					l_chat.set_chat_message(l_str)
					assert ("To be implemented ",TRUE)

				--Test 5
					l_chat.set_chat_message(l_str)
					assert ("To be implemented",TRUE)
			end
end
