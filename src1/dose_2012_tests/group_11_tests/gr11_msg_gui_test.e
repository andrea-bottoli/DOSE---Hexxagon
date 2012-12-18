note
	description: "[
		Eiffel tests that can be executed by testing tool.
	]"
	author: "EiffelStudio test wizard"
	date: "19/11/2012"
	revision: "0.1"
	testing: "type/manual"

class
	GR11_MSG_TO_GUI_TEST

inherit
	EQA_TEST_SET

feature -- Test routines

	is_update_test
			--test to check if the request message created is recognized in the right way.
		note
			testing:  "covers/{GR11_MSG_TO_GUI}.is_update"
			testing:  "user/GR11"

		local
			l_msg : GR11_MSG_TO_GUI
			--l_xml_file:STRING   a xml file passed to the costructor of the msg
		do
			create l_msg --TODO: l_xml_file
			--assert("the file created is an update", l_msg.is_update)
		end

        is_error_test
			--test to check if the command message created is recognized in the right way
		note
			testing:  "covers/{GR11_MSG_TO_LOGIC}.is_error"
			testing:  "user/GR11"

		local
			l_msg : GR11_MSG_TO_GUI
			--l_xml_file:STRING   a xml file passed to the costructor of the msg
		do
			create l_msg --l_xml_file
			--assert("the file created is a command", l_msg.is_error)
		end

	get_content_test
			--test that the content returned is correct
                 note
			testing:  "covers/{GR11_MSG_TO_GUI}.get_content"
			testing:  "user/GR11"

		local
			l_msg_content : GR11_MSG_TO_GUI
			--l_xml_file_request:STRING
			l_string_content : STRING_8
		do
			l_string_content := "" --TODO
			create l_msg_content --TODO:here goes the xml file
			--assert("the request message is correct", l_msg_content.get_content = l_string_content)
		end

end










