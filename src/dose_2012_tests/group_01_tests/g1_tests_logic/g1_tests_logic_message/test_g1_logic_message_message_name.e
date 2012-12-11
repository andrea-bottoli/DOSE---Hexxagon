note
	description: "[
		Eiffel tests that can be executed by testing tool.
	]"
	author: "Group1-Milano7"
	date: "$Date$"
	revision: "$Revision$"
	testing: "type/manual"

class
	TEST_G1_LOGIC_MESSAGE_MESSAGE_NAME

inherit
	EQA_TEST_SET
		redefine
			on_prepare,
			on_clean
		end

feature {NONE} -- Events

	on_prepare
			-- <Precursor>
		do
			assert ("not_implemented", False)
		end

	on_clean
			-- <Precursor>
		do
			assert ("not_implemented", False)
		end

feature -- Test routines

	test_G1_Logic_message_message_name
			-- New test routine
		note
			testing:  "user/G1"
			testing: "covers/{G1_MESSAGE_NAME}.make_name"
		local
			msg_name: G1_MESSAGE_NAME
		do
			create msg_name.make_name ("Pippo")
			assert ("Message Name: Name:Pippo ", msg_name.name.is_equal ("Pippo"))
		end

end


