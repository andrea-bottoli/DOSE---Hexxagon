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
			player: G1_PLAYER
		do
			create player.make (1, "Player 1")
			create msg_mortgage.make_mortgage (player.id_player, 10, True)
			assert ("Message Mortgage: Mortgage_Deed:10, Unmortgage_Deed:12", msg_mortgage.id_deed.is_equal (10))
		end

end


