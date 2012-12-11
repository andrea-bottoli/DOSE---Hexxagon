note
	description: "[
		Eiffel tests that can be executed by testing tool.
	]"
	author: "Group1-Milano7"
	date: "$Date$"
	revision: "$Revision$"
	testing: "type/manual"

class
	TEST_G1_LOGIC_MESSAGE_MESSAGE_TOKEN

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

	test_G1_Logic_message_message_token
			-- New test routine
		note
			testing:  "user/G1"
			testing: "covers/{G1_MESSAGE_TOKEN}.make_token"
		local
			msg_token: G1_MESSAGE_TOKEN
		do
			create msg_token.make_token (4)
			assert ("Message Token: Token: 4 ", msg_token.id_token.is_equal (4))
		end

end


