note
	description: "Test on XX_POSSIBLE_MOVES class"
	author: "Team Milano2"
	date: "19-11-2012"
	revision: "0.2"
	testing: "type/manual"

class
	TEST_XX_POSSIBLE_MOVES

inherit
	EQA_TEST_SET

feature -- Test routines

	--Tests the routine make_possible_moves
	test_make_possible_moves
		note
			testing:  "covers/{XX_HEXXAGON}.make_possible_moves"
			testing: "user/XX"
		local
			l_possible_move: XX_POSSIBLE_MOVES
		do
			--First test
			create l_possible_move.make_possible_moves
			assert ("Possible move is created ", l_possible_move/=Void)
		end

	--Tests the routine get_piece
	test_get_piece
		note
			testing:  "covers/{XX_HEXXAGON}.get_piece"
			testing: "user/XX"
		local
			l_possible_move: XX_POSSIBLE_MOVES
			l_piece: INTEGER
		do
			create l_possible_move.make_possible_moves
			l_piece := 10
			assert ("Possible move is created ", l_possible_move/=Void)
			assert ("Check get piece", l_possible_move.get_piece.is_equal (l_piece))
		end

	--Tests the routine get_position
	test_get_position
		note
			testing:  "covers/{XX_HEXXAGON}.get_position"
			testing: "user/XX"
		local
			l_possible_move: XX_POSSIBLE_MOVES
			l_position: INTEGER
		do
			create l_possible_move.make_possible_moves
			l_position := 7
			assert ("Possible move is created ", l_possible_move/=Void)
			assert ("Check get position", l_possible_move.get_position.is_equal (l_position))
		end

	--Tests the routine get_type
	test_get_type
		note
			testing:  "covers/{XX_HEXXAGON}.get_type"
			testing: "user/XX"
		local
			l_possible_move: XX_POSSIBLE_MOVES
			l_type: INTEGER
		do
			create l_possible_move.make_possible_moves
			l_type := 1
			assert ("Possible move is created ", l_possible_move/=Void)
			assert ("Check get type", l_possible_move.get_type.is_equal (l_type))
		end

	--Tests the routine set_move
	test_set_move
		note
			testing:  "covers/{XX_HEXXAGON}.set_move"
			testing: "user/XX"
		local
			l_possible_move: XX_POSSIBLE_MOVES
			l_i1: INTEGER
			l_i2: INTEGER
			l_i3: INTEGER
		do
			create l_possible_move.make_possible_moves
			l_i1:=20
			l_i2:=45
			l_i3:=1
			l_possible_move.set_move (l_i1, l_i2, l_i3)
			assert ("to implement",TRUE)
		end


end
