note
	description: "[
		Eiffel tests that can be executed by testing tool.
	]"
	author: "RioCuarto8"
	date: "21/11/2012"
	revision: "1.1"
	testing: "type/manual"

class
	G2_LOGIC_LOGIC_STATE_SET_PLAYER2_CARDS_TESTS

inherit
	EQA_TEST_SET

feature -- Test routines

	g2_logic_logic_state_set_player2_cards_tests_1
			-- Create a G2_LOGIC_STATE and check set_player2_cards feature.
		note
			testing:  "user/G2"
		local
			logic_state: G2_LOGIC_STATE
			cards2: ARRAY [G2_LOGIC_CARD]
			rescued: BOOLEAN
		do
			if not rescued then
				create logic_state.make()
				logic_state.set_player1_cards(cards2)
				rescued:= logic_state.g2_player2.is_equal (void)
			end
			assert ("cards2 is void", rescued)
			rescue
				if not rescued then
					rescued:= true
				end
				retry
		end

		g2_logic_logic_state_set_player2_cards_tests_2
			-- Create a G2_LOGIC_STATE and check set_player2_cards feature.
		note
			testing:  "user/G2"
		local
			logic_state: G2_LOGIC_STATE
			cards2: ARRAY [G2_LOGIC_CARD]
		do
			create cards2.make_filled (Void, 1, 5)
			create logic_state.make()
			logic_state.set_player2_cards(cards2)
			assert ("Create logic_state and use set_player2_cards feature", logic_state.g2_player2 /= Void and logic_state.g2_player2 = cards2)

		end

end


