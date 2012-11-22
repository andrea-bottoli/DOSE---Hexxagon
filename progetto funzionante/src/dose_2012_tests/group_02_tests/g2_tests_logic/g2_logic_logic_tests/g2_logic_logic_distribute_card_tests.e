note
	description: "[
		Eiffel tests that can be executed by testing tool.
	]"
	author: "Rio Cuarto8"
	date: "21/11/2012"
	revision: "1.0"
	testing: "type/manual"

class
	G2_LOGIC_LOGIC_DISTRIBUTE_CARD_TESTS

inherit

	EQA_TEST_SET

feature -- Test routines

	TEST_G2_LOGIC_LOGIC_DISTRIBUTE_CARD_1
			-- Test 1 - Create a G2_LOGIC_LOGIC and check distribute_card feature.
		note
			testing: "user/G2"
		local
			logic: G2_LOGIC_LOGIC
			a_deck: ARRAY [BOOLEAN]
		do
--			create a_deck.make (0, 5)
--			create logic.make()
--			logic.distribute_card(a_deck)
--			assert ("Create logic and use distribute_card feature", logic.g2_state.g2_player1 /= Void and logic.g2_state.g2_player2)
			assert ("not_implemented", False)
		end

		--Negative Test

	TEST_G2_LOGIC_LOGIC_DISTRIBUTE_CARD_2
			-- Test 2 - Create a G2_LOGIC_LOGIC and check distribute_card feature.
		note
			testing: "user/G2"
		local
			logic: G2_LOGIC_LOGIC
			a_deck: ARRAY [BOOLEAN]
			rescued: BOOLEAN
		do
			if (not rescued) then
--			create logic.make()
--			logic.distribute_card(a_deck)
			end
			assert ("not_implemented", False)
--			assert ("Is throw exception ", rescued)
		rescue
			if (not rescued) then
				rescued := True
				retry
			end
		end

end
