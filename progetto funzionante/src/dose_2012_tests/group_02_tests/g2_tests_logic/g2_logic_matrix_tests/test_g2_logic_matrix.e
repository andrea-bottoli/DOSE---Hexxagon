note
	description: "[
		Eiffel tests that can be executed by testing tool.
	]"
	author: "EiffelStudio test wizard"
	date: "20/11/2012"
	revision: "Revision 0.1"
	testing: "type/manual"

class
	TEST_G2_LOGIC_MATRIX

inherit

	EQA_TEST_SET

feature -- Test routines

	test_g2_logic_matrix_1
	    --testing with card=void and element /= void
		note
			testing: "user/G2"
		local
			matrix: G2_LOGIC_MATRIX
			card: G2_LOGIC_CARD
		do
			create matrix.make (card, "fire")
			--assert ("at loaded correctly the data ", matrix.g2_matrix_card.is_equal (card) and matrix.g2_matrix_element.is_equal ("fire"))
		end

	test_g2_logic_matrix_2
			-- testing witn card /= void and element /= void
		note
			testing: "user/G2"
		local
			matrix: G2_LOGIC_MATRIX
			card: G2_LOGIC_CARD
		do
			create card.make (true, "fire", "black", 4, 5, 8, 6)
			create matrix.make (card, "fire")
			--assert ("at loaded correctly the data ", matrix.g2_matrix_card.is_equal(card)and matrix.g2_matrix_element.is_equal ("fire"))
		end

	test_g2_logic_matrix_3
			-- testing that takes any element.
			-- this not should pass
		note
			testing: "user/G2"
		local
			matrix: G2_LOGIC_MATRIX
			card: G2_LOGIC_CARD
		do
			create card.make (true, "fire", "black", 4, 5, 8, 6)
			create matrix.make (card, "hola mundo")
			--assert ("at loaded correctly the data ", matrix.g2_matrix_card.is_equal (card) and matrix.g2_matrix_element.is_equal ("hola mundo"))
		end

		test_g2_logic_matrix_4
				-- testing that takes any element.
			note
				testing: "user/G2"
			local
				matrix: G2_LOGIC_MATRIX
				card: G2_LOGIC_CARD
				rescued : BOOLEAN
			do
				if not rescued then
				   	create card.make (true, "fire", "black", 4, 5, 8, 6)
					create matrix.make (card, void)
				end
                assert ("corrupts the pre-condition to of class g2_logic_matrix(feature make) ", rescued)
				rescue
				    if not rescued then
				    	rescued := true
				    end
				retry
			end

end
