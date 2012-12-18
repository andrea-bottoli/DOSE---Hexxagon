note
	description: "[
		Eiffel tests that can be executed by testing tool.
	]"
	author: "RioCuarto8"
	date: "16/12/12"
	revision: "1.1"
	testing: "type/manual"

class
	G2_LOGIC_LOGIC_MATRIX_SET_CARD_TESTS

inherit
	EQA_TEST_SET

feature -- Test routines

	g2_logic_logic_matrix_set_card_tests_1
			-- Create a G2_LOGIC_MATRIX and check set_card feature. Check g2_matrix_card=a_card.
		note
			testing:  "user/G2"
		local
			logic_matrix: G2_LOGIC_MATRIX
			a_card: G2_LOGIC_CARD
		do
			create a_card.make (true, "Fire", 4, 5, 8, 6)
			create logic_matrix.make (a_card, "fire")
			assert ("Create logic_matrix and use set_card feature is correctly", logic_matrix.g2_matrix_card.is_equal_card (a_card))
		end

	g2_logic_logic_matrix_set_card_tests_2
			-- Negative Test.
			-- Create a G2_LOGIC_MATRIX and check set_card feature. Check g2_matrix_card/=void
		note
			testing:  "user/G2"
		local
			logic_matrix: G2_LOGIC_MATRIX
			a_card: G2_LOGIC_CARD
			rescued: BOOLEAN
		do
			if not rescued then
				create logic_matrix.make (a_card, "fire")
				rescued:= logic_matrix.g2_matrix_card/=void
			end
			assert ("cards is not void", rescued)
			rescue
				if not rescued then
					rescued:= true
				end
				retry
		end

end


