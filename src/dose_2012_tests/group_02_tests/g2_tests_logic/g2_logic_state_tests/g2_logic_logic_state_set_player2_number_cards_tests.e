note
	description: "[
		Eiffel tests that can be executed by testing tool.
	]"
	author: "RioCuarto8"
	date: "13/12/2012"
	revision: "1.1"
	testing: "type/manual"

class
	G2_LOGIC_LOGIC_STATE_SET_PLAYER2_NUMBER_CARDS_TESTS

inherit
	EQA_TEST_SET

feature -- Test routines

	g2_logic_logic_state_set_player2_number_cards_tests
			-- New test routine
		note
			testing:  "user/G2"
		local
			logic_state: G2_LOGIC_STATE
			a_number: INTEGER
			rescued: BOOLEAN
		do
			if not rescued then
				create logic_state.make()
				logic_state.set_player2_number_cards (a_number)
			end
			assert ("cards1 is void", rescued)
			rescue
				if not rescued then
					rescued:= true
				end
				retry
		end

		g2_logic_logic_state_set_player2_number_cards_tests_2
			--Create a G2_LOGIC_STATE and check set_player1_cards feature.
		note
			testing:  "user/G2"
		local
			logic_state: G2_LOGIC_STATE
			a_number: INTEGER
		do
			a_number := 5
			create logic_state.make()
			logic_state.set_player2_number_cards (a_number)
			assert ("Create logic_state and use set_player2_number_cards feature", logic_state.g2_player2_number_cards /= Void and logic_state.g2_player2_number_cards = a_number)

		end

end


