note
	description: "Summary description for {TEST_HX_L_IBOARD}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	TEST_HX_L_IBOARD
inherit
	EQA_TEST_SET

feature -- Test routines
	gui: HX_G_DUMMYMANAGER
	game: HX_L_LOGIC
	board: HX_L_IBOARD

	test_hx_l_iboard_is_end
			-- New test routine
		note
			testing: "covers/{HX_L_IBOARD}"
			testing: "user/HX"

		do
			create gui.make
			create game.initialize(gui)
			board := game.board
			assert ("The board is not ended",not board.is_end)
		end

	test_hx_l_iboard_place
			-- New test routine
		note
			testing: "covers/{HX_L_IBOARD}"
			testing: "user/HX"

		do
			create gui.make
			create game.initialize(gui)
			board := game.board
			assert ("Result is not void ",board.place(1,1) /= Void)
		end

	test_hx_l_iboard_legal_moves
			-- New test routine
		note
			testing: "covers/{HX_L_IBOARD}"
			testing: "user/HX"

		do
			create gui.make
			create game.initialize(gui)
			board := game.board
			assert ("Result is not void ",board.legal_moves /= Void)
		end

	test_hx_l_iboard_legal_pice_count
			-- New test routine
		note
			testing: "covers/{HX_L_IBOARD}"
			testing: "user/HX"

		do
			create gui.make
			create game.initialize(gui)
			board := game.board
			assert ("Result is not void",board.pieces_count(game.player (1)) /= Void)
		end

	test_hx_l_iboard_is_piece_selectable
			-- New test routine
		note
			testing: "covers/{HX_L_IBOARD}"
			testing: "user/HX"

		do
			create gui.make
			create game.initialize(gui)
			board := game.board
			assert ("Piece is selectable",board.is_piece_selectable(1,1))
		end

	test_hx_l_iboard_possible_moves
			-- New test routine
		note
			testing: "covers/{HX_L_IBOARD}"
			testing: "user/HX"

		do
			create gui.make
			create game.initialize(gui)
			board := game.board
			assert("Result is not void",board.possible_moves(1,1) /= Void)
		end

	test_hx_l_iboard_moves_count
			-- New test routine
		note
			testing: "covers/{HX_L_IBOARD}"
			testing: "user/HX"

		do
			create gui.make
			create game.initialize(gui)
			board := game.board
			assert("Moves is greater than 0",board.moves_count >= 0 )
		end

	test_hx_l_iboard_clone_board
			-- New test routine
		note
			testing: "covers/{HX_L_IBOARD}"
			testing: "user/HX"

		do
			create gui.make
			create game.initialize(gui)
			board := game.board
			assert("Result is not void",board.clone_board /= Void)
		end
end
