note
	description: "[
		Eiffel tests that can be executed by testing tool.
	]"
	author: "Rio Cuarto8"
	date: "21/11/2012"
	revision: "1.0"
	testing: "type/manual"

class
	G2_LOGIC_LOGIC_FIND_CHOSEN_CARD_TESTS

inherit
	EQA_TEST_SET

feature -- Test routines

	TEST_G2_LOGIC_LOGIC_FIND_CHOSEN_CARD_TESTS_1
			-- Test 1 - Create a G2_LOGIC_LOGIC and check find_chosen_card feature.
		note
			testing:  "user/G2"
		local
			logic: G2_LOGIC_LOGIC
			a_card: G2_LOGIC_CARD
			b_card: G2_LOGIC_CARD
		do
--			create a_card.make()
--			create b_card.make()
--			create logic.make()
--			b_card := logic.find_chosen_card(a_deck)
--			assert ("Create logic and use find_chosen_card feature", b_card /= Void)
			assert ("not_implemented", False)
		end

		-- Negative test

		TEST_G2_LOGIC_LOGIC_FIND_CHOSEN_CARD_TESTS_2
				-- Test 2 - Create a G2_LOGIC_LOGIC and check find_chosen_card feature.
			note
				testing:  "user/G2"
			local
				logic: G2_LOGIC_LOGIC
				a_card: G2_LOGIC_CARD
				b_card: G2_LOGIC_CARD
				rescued: BOOLEAN
			do
				if (not rescued) then
	--				create b_card.make()
	--				create logic.make()
	--				b_card := logic.find_chosen_card(a_deck)
				end
--				assert ("not_implemented", False)
--				assert ("Is throw exception ", rescued)
			rescue
				if (not rescued) then
					rescued := True
					retry
				end
			end
end


