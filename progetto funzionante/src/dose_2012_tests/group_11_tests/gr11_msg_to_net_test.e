note
	description: "[
		Eiffel tests that can be executed by testing tool.
	]"
	author: "EiffelStudio test wizard"
	date: "21/11/2012"
	revision: "0.1"
	testing: "type/manual"

class
	GR11_MSG_TO_NET_TEST

inherit
	EQA_TEST_SET

feature -- Test routines

	get_content_test
			--test that the content returned is correct
                 note
			testing:  "covers/{GR11_MSG_TO_NET}.get_content"
			testing:  "user/GR11"

		local
			l_msg_content : GR11_MSG_TO_NET
			--l_xml_file_request:STRING
			l_string_content : STRING_8
		do
			l_string_content := "" --TODO
			create l_msg_content --TODO:here goes the xml file
			--assert("the request message is correct", l_msg_content.get_content = l_string_content)
		end

end










