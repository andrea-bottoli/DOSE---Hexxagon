note
	description: "[
		Eiffel tests that can be executed by testing tool.
	]"
	author: "RioCuarto8"
	date: "21/11/2012"
	revision: "1.0"
	testing: "type/manual"

class
	G2_LOGIC_LOGIC_STATE_SET_PLAYER1_CARDS_TESTS

inherit
	EQA_TEST_SET

feature -- Test routines

	g2_logic_logic_state_set_player1_cards_tests_1
			-- Create a G2_LOGIC_STATE and check set_player1_cards feature.
		note
			testing:  "user/G2"
		local
			logic_state: G2_LOGIC_STATE
			cards1: ARRAY [BOOLEAN]
			rescued: BOOLEAN
		do
			if not rescued then
				--create logic_state.make()
				logic_state.set_player1_cards(cards1)
			end
			assert ("cards1 is void", rescued)
			rescue
				if not rescued then
					rescued:= true
				end
				retry
		end

		g2_logic_logic_state_set_player1_cards_tests_2
			-- Create a G2_LOGIC_STATE and check set_player1_cards feature.
		note
			testing:  "user/G2", "covers/{G2_LOGIC_STATE}"
		local
			logic_state: G2_LOGIC_STATE
			cards1: ARRAY [BOOLEAN]
		do
			create cards1.make(0,3)
			--create logic_state.make()
			logic_state.set_player1_cards(cards1)
			assert ("Create logic_state and use set_player1_cards feature", logic_state.g2_player1 /= Void and logic_state.g2_player1 = cards1)

		end

end


