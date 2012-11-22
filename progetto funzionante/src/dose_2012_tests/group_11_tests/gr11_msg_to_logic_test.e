note
	description: "[
		Eiffel tests that can be executed by testing tool.
	]"
	author: "EiffelStudio test wizard"
	date: "19/11/2012"
	revision: "0.1"
	testing: "type/manual"

class
	GR11_MSG_TO_LOGIC_TEST

inherit
	EQA_TEST_SET

feature -- Test routines

	is_request_test
			--test to check if the request message created is recognized in the right way.
		note
			testing:  "covers/{GR11_MSG_TO_LOGIC}.is_request"
			testing:  "user/GR11"

		local
			l_msg : GR11_MSG_TO_LOGIC
			--l_xml_file:STRING   a xml file passed to the costructor of the msg
		do
			--create l_msg(l_xml_file)
			--assert("the file created is an update", l_msg.is_request)
		end

        is_command_test
			--test to check if the command message created is recognized in the right way
		note
			testing:  "covers/{GR11_MSG_TO_LOGIC}.is_command"
			testing:  "user/GR11"

		local
			l_msg : GR11_MSG_TO_LOGIC
			--l_xml_file:STRING   a xml file passed to the costructor of the msg
		do
			--create l_msg(l_xml_file)
			--assert("the file created is a command", l_msg.is_command)
		end

	get_request_test
			--test that the message returned is correct
                 note
			--TODO testing:  "covers/{GR11_MSG_TO_LOGIC}.get_request"
			testing:  "user/GR11"

		local
			l_msg_request : GR11_MSG_TO_LOGIC
			--l_xml_file_request:STRING
			--l_string_request:STRING
		do
			--create l_msg_request(l_xml_file_request)
			--assert("the request message is correct", l_msg_request.get_message = l_string_request)
		end

	is_reveal_card_test
                           --test that the message is a command:reveal_card
		local
			l_msg_reveal: GR11_MSG_TO_LOGIC
			--l_xml_file_reveal:STRING
		do
			--create l_msg_reveal : GR11_MSG_TO_LOGIC
			--assert("check if it's a reveal command", l_msg_reveal.is_reveal_card)
		end

end









