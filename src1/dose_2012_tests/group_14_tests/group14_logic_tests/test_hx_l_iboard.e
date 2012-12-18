note
	description: "Summary description for {TEST_HX_L_IBOARD}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	TEST_HX_L_IBOARD

inherit
	EQA_TEST_SET
	redefine
		on_prepare,
		on_clean
	end

feature {NONE} -- Preparationa and clean

	gui: HX_G_DUMMYMANAGER
	game: HX_L_LOGIC
	board: HX_L_IBOARD

	on_prepare
		do
			create gui.default_create
			create game.initialize(gui)
			game.start_single_player ("Test", 1, "notemplate")
		end

	on_clean
		do

		end

feature -- Test routines


	test_hx_l_iboard_is_end
			-- New test routine
		note
			testing: "covers/{HX_L_IBOARD}"
			testing: "user/HX"

		do
			assert ("The game is not ended", not game.board.is_end)
		end

	test_hx_l_iboard_place
			-- New test routine
		note
			testing: "covers/{HX_L_IBOARD}"
			testing: "user/HX"

		do
			assert ("Result is not void ", game.board.place(1,1) /= Void)
		end

	test_hx_l_iboard_legal_moves
			-- New test routine
		note
			testing: "covers/{HX_L_IBOARD}"
			testing: "user/HX"

		do
			assert ("Result is not void ", game.board.legal_moves /= Void)
		end

	test_hx_l_iboard_legal_pice_count
			-- New test routine
		note
			testing: "covers/{HX_L_IBOARD}"
			testing: "user/HX"

		do
			assert ("Result is not void", game.board.pieces_count(game.player (1)) /= Void)
		end

	test_hx_l_iboard_is_piece_selectable
			-- New test routine
		note
			testing: "covers/{HX_L_IBOARD}"
			testing: "user/HX"

		do
			assert ("Piece is selectable", game.board.is_piece_selectable(1,1))
		end

	test_hx_l_iboard_possible_moves
			-- New test routine
		note
			testing: "covers/{HX_L_IBOARD}"
			testing: "user/HX"

		do
			assert("Result is not void", game.board.possible_moves(1,1) /= Void)
		end

	test_hx_l_iboard_moves_count
			-- New test routine
		note
			testing: "covers/{HX_L_IBOARD}"
			testing: "user/HX"

		do
			assert("Moves is greater than 0", game.board.moves_count >= 0 )
		end

	test_hx_l_iboard_clone_board
			-- New test routine
		note
			testing: "covers/{HX_L_IBOARD}"
			testing: "user/HX"

		do
			assert("Result is not void", game.board.clone_board /= Void)
		end

	test_hx_l_iboard_move_piece
			note
			testing: "covers/{HX_L_IBOARD}"
			testing: "user/HX"

		do
			game.board.move_piece_and_continue (1, 1, 1, 2)
			assert("Result is not void", not game.board.place (1, 2).is_empty)
		end
end
