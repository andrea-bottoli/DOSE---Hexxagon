note
	description: "Summary description for {STATE}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	G2_LOGIC_STATE

inherit

	G2_LOGIC_ISTATE

feature {ANY} --Attributes

	g2_matrix: ARRAY2 [G2_LOGIC_MATRIX]

	g2_player1: ARRAY [G2_LOGIC_CARD]

	g2_player2: ARRAY [G2_LOGIC_CARD]

	g2_player: BOOLEAN

	g2_player1_number_cards: INTEGER

	g2_player2_number_cards: INTEGER

feature {ANY} --procedure

	set_player1_cards (cards1: ARRAY [BOOLEAN])
		require else
			non_void: cards1 /= void
		do
		ensure then
			g2_player1_cards: cards1 = g2_player1
		end

	set_player2_cards (cards2: ARRAY [BOOLEAN])
		require else
			non_void: cards2 /= void
		do
		ensure then
			g2_player2_cards: cards2 = g2_player2
		end

	update_matrix (e_matrix: ARRAY2 [BOOLEAN])
		require else
			non_void: e_matrix /= void
		do
		end

	state_is_equal(a_state:G2_LOGIC_ISTATE):BOOLEAN
		do

		end
		
invariant
	n5_cards_playe1: g2_player1.count = 5
	n5_cards_playe2: g2_player2.count = 5
	matrix_3X3: g2_matrix.count = 3

end
