note
	description: "Summary description for {STATE}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	G2_LOGIC_STATE

inherit

	G2_LOGIC_ISTATE

create
	make

feature
	make
		local
			tmp_matrix:G2_LOGIC_MATRIX
		do
			create tmp_matrix.make (void,"NONE")
			create g2_matrix.make_filled (tmp_matrix,3,3)
			create g2_player1.make(1, 5)
			create g2_player2.make(1, 5)
			g2_player1_number_cards:=0
			g2_player2_number_cards:=0
		end

feature {ANY} --Attributes

	g2_matrix: ARRAY2 [G2_LOGIC_MATRIX]

	g2_player1: ARRAY [G2_LOGIC_CARD]

	g2_player2: ARRAY [G2_LOGIC_CARD]

	g2_player: BOOLEAN

	g2_player1_number_cards: INTEGER

	g2_player2_number_cards: INTEGER

feature {ANY} --procedure
	set_player(a_player:BOOLEAN)
		do
			g2_player:=a_player
		end

	set_player1_number_cards(a_number:INTEGER)
	require else
			non_void:a_number/=0
		do
			g2_player1_number_cards := a_number
		ensure then
			cards_player1:g2_player1_number_cards = a_number
		end
	set_player2_number_cards(a_number:INTEGER)
		require else
			non_void:a_number/=0
		do
			g2_player2_number_cards := a_number
		ensure then
			cards_player2:g2_player2_number_cards.is_equal (a_number)
		end
	set_player1_cards (cards1: ARRAY [G2_LOGIC_CARD])
		require else
			non_void: cards1 /= void
		do
			g2_player1 := cards1

		ensure then
			g2_player1_cards: cards1.is_equal (g2_player1)
		end

	set_player2_cards (cards2: ARRAY [G2_LOGIC_CARD])
		require else
			non_void: cards2 /= void
		do
			g2_player2 := cards2
		ensure then
			g2_player2_cards: cards2.is_equal (g2_player2)
		end

	update_matrix (e_matrix:  ARRAY2 [G2_LOGIC_MATRIX])
		require else
			non_void: e_matrix /= void
		do
			g2_matrix := e_matrix
		end

	state_is_equal(a_state:G2_LOGIC_STATE):BOOLEAN
		do
			if g2_matrix.is_equal(a_state.g2_matrix) and g2_player1.is_equal(a_state.g2_player1) and g2_player2.is_equal(a_state.g2_player2) and g2_player1_number_cards =a_state.g2_player1_number_cards and g2_player2_number_cards=a_state.g2_player2_number_cards then
				Result := True
			else
				Result := False
			end

		end

invariant
	n5_cards_playe1: g2_player1.upper = 5
	n5_cards_playe2: g2_player2.upper = 5
	matrix_3X3: g2_matrix.height = 3
	matric_3X3: g2_matrix.width=3

end
