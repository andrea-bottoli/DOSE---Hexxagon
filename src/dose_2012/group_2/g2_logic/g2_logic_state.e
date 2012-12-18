note
	description: "Summary description for {STATE}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	G2_LOGIC_STATE

inherit

	G2_LOGIC_ISTATE

	G2_NET_MJE

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
		end

feature {ANY} --Attributes

	g2_matrix: ARRAY2 [G2_LOGIC_MATRIX]

	g2_player1: ARRAY [G2_LOGIC_CARD]

	g2_player2: ARRAY [G2_LOGIC_CARD]

	g2_player: BOOLEAN

	g2_player1_number_cards: INTEGER
	local
		row, col, index, res: INTEGER
	do
		if g2_matrix = Void then
			Result := -1
		end
		from
			index := 1
		until
			index > 5
		loop
			if g2_player1.item (index) /= Void then
				res := res+1
			end
			index := index+1
		end
		from
			row := 1
		until
			row > 3
		loop
			from
				col := 1
			until
				col > 3
			loop
				if g2_matrix.item (row, col).g2_matrix_card /= Void then
					if g2_matrix.item (row, col).g2_matrix_card.g2_card_color = True then
						res := res+1
					end
				end
				col := col + 1
			end
			row := row + 1
		end
		Result := res
	end

	g2_player2_number_cards: INTEGER
	local
		row, col, index, res: INTEGER
	do
		if g2_matrix = Void then
			Result := -1
		end
		from
			index := 1
		until
			index > 5
		loop
			if g2_player2.item (index) /= Void then
				res := res+1
			end
			index := index+1
		end
		from
			row := 1
		until
			row > 3
		loop
			from
				col := 1
			until
				col > 3
			loop
				if g2_matrix.item (row, col).g2_matrix_card /= Void then
					if g2_matrix.item (row, col).g2_matrix_card.g2_card_color = False then
						res := res+1
					end
				end
				col := col + 1
			end
			row := row + 1
		end
		Result := res
	end

feature {ANY} --procedure
	set_player(a_player:BOOLEAN)
		do
			g2_player:=a_player
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
