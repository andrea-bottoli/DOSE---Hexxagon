note
	description: "Summary description for {TEST_XX_CHAT_TO_GUI_INTERFACE}."
	author: "Nada Feteha & Huda Touny"
	date: "11/21/2012"
	revision: "Huda Touny"

class
	TEST_XX_CHAT_TO_GUI_INTERFACE
inherit
    EQA_TEST_SET

feature -- Test routines
 	test_set_chat()
	note
			testing: "covers/XX_CHAT_TO_GUI_INTERFACE).set_chat"
			testing: "user/XX"
	local
		l_I_CHAT_GUI: XX_CHAT_TO_GUI_INTERFACE
		l_str: STRING
		do
		-- Test 1
			l_str:="TEST"
			l_I_CHAT_GUI.set_chat(l_str)
			assert ("to implement",TRUE)

		--Test 2
			l_str:=""
			l_I_CHAT_GUI.set_chat(l_str)
			assert ("to implement",FALSE)

		--Test 3
			l_I_CHAT_GUI.set_chat(l_str)
			assert ("to implement",FALSE)
	end--method
end
