note
	description: "[
		Eiffel tests that can be executed by testing tool.
	]"
	author: "RioCuarto8"
	date: "16/12/12"
	revision: "1.1"
	testing: "type/manual"

class
	G2_LOGIC_LOGIC_MATRIX_SET_ELEMENT_TESTS

inherit
	EQA_TEST_SET

feature -- Test routines

	g2_logic_logic_matrix_set_element_tests_1
			-- New test routine
		note
			testing:  "user/G2"
		local
			logic_matrix: G2_LOGIC_MATRIX
			a_card: G2_LOGIC_CARD
			a_element: STRING
		do
			a_element:= "Fire"
			create a_card.make (true, a_element, 4, 5, 8, 6)
			create logic_matrix.make (a_card, a_element)
			assert ("Create logic_matrix and use set_element feature is correctly", logic_matrix.g2_matrix_element = a_element)
		end

	g2_logic_logic_matrix_set_element_tests_2
			-- New test routine
		note
			testing:  "user/G2"
		local
			logic_matrix: G2_LOGIC_MATRIX
			a_card: G2_LOGIC_CARD
			a_element: STRING
			rescued: BOOLEAN
		do
			if not rescued then
				create logic_matrix.make (a_card, a_element)
				rescued:= logic_matrix.g2_matrix_element/=void
			end
			assert ("element is not void", rescued)
			rescue
				if not rescued then
					rescued:= true
				end
				retry
		end

end


