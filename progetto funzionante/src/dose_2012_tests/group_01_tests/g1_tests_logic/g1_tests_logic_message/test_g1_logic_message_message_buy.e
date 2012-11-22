note
	description: "[
		Eiffel tests that can be executed by testing tool.
	]"
	author: "Group1-Milano7"
	date: "$Date$"
	revision: "$Revision$"
	testing: "type/manual"

class
	TEST_G1_LOGIC_MESSAGE_MESSAGE_BUY

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

	test_G1_Logic_message_message_buy
			-- New test routine
		note
			testing:  "user/G1"
			testing: "covers/{G1_MESSAGE_BUY}.make_buy"
		local
			msg_buy: G1_MESSAGE_BUY
		do
			create msg_buy.make_buy (TRUE)
			assert ("Message Buy: Buy:TRUE ", msg_buy.buy)
		end

end


