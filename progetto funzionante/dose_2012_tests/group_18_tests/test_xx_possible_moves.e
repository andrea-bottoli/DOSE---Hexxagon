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

	--Tests the routine check_possible_moves
	test_check_possible_moves
		note
			testing:  "covers/{XX_HEXXAGON}.check_possible_moves"
			testing: "user/XX"
		local
			l_possible_move: XX_POSSIBLE_MOVES
			l_t: TUPLE
		do
			create l_possible_move.make_possible_moves
			create l_t.default_create
			l_t:=["C24","ciao","",25]
			assert ("Possible move is created ", l_possible_move/=Void)
			assert ("Possible move is created ", l_possible_move.get_possible_moves.is_equal (l_t))
		end

	--Tests the routine receive_board
	test_receive_board
		note
			testing:  "covers/{XX_HEXXAGON}.receive_board"
			testing: "user/XX"
		local
			--TODO
		do
			assert ("to implement ", TRUE)
		end

	--Tests the routine get_possible_moves
	test_get_possible_moves
		note
			testing:  "covers/{XX_HEXXAGON}.get_possible_moves"
			testing: "user/XX"
		local
			l_possible_move: XX_POSSIBLE_MOVES
			l_t: TUPLE
		do
			create l_possible_move.make_possible_moves
			create l_t.default_create
			l_t:=[50,"ciao","W",80]
			assert ("Possible move is created ", l_possible_move/=Void)
			assert ("Possible move is created ", l_possible_move.get_possible_moves.is_equal (l_t))
		end

	--Tests the routine message_possible_moves
	test_message_possible_moves
		note
			testing:  "covers/{XX_HEXXAGON}.message_possible_moves"
			testing: "user/XX"
		local
			l_possible_move: XX_POSSIBLE_MOVES
			l_i1: INTEGER
			l_i2: INTEGER
		do
			create l_possible_move.make_possible_moves
			l_i1:=20
			l_i2:=45
			l_possible_move.message_possible_moves (l_i1, l_i2)
			assert ("to implement",TRUE)
		end

	--Tests the routine read_message
	test_read_message

		note
			testing:  "covers/{XX_HEXXAGON}.read_message"
			testing: "user/XX"
		local
			l_possible_move: XX_POSSIBLE_MOVES
			l_s: STRING
		do
			create l_possible_move.make_possible_moves
			l_s:="HELLO"
			l_possible_move.read_message (l_s)
			assert ("to implement",TRUE)
		end

end
