 note
	description: "[
		Eiffel tests that can be executed by testing tool.
	]"
	author: "EiffelStudio test wizard"
	date: "19/11/2012"
	revision: "0.1"
	testing: "type/manual"

class
	GR11_MSG_TEST

inherit
	EQA_TEST_SET

feature -- Test routines

	make_test
			--test to check if the creation of the message is correct.
		note
			testing:  "covers/{GR11_MSG}.make"
			testing:  "user/GR11"

		local
			--l_msg : GR11_MSG_TO_LOGIC --is an example, it could be msg_to_net
			--l_xml_file:STRING   a xml file passed to the costructor of the msg
		do
			--create l_msg --(l_xml_file)
		end
end
