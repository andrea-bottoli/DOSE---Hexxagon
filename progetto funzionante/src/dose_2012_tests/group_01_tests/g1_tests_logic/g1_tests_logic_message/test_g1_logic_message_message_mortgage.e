note
	description: "[
		Eiffel tests that can be executed by testing tool.
	]"
	author: "Group1-Milano7"
	date: "$Date$"
	revision: "$Revision$"
	testing: "type/manual"

class
	TEST_G1_LOGIC_MESSAGE_MESSAGE_MORTGAGE

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

	test_G1_Logic_message_message_mortgage
			-- New test routine
		note
			testing:  "user/G1"
			testing: "covers/{G1_MESSAGE_MORTGAGE}.make_mortgage"
		local
			msg_mortgage: G1_MESSAGE_MORTGAGE
		do
			create msg_mortgage.make_mortgage (10,12)
			assert ("Message Mortgage: Mortgage_Deed:10, Unmortgage_Deed:12", msg_mortgage.mortgage_id_deed.is_equal (10) and msg_mortgage.unmortgage_id_deed.is_equal (12))
		end

end


