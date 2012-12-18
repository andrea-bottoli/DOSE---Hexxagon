note
	description: "Summary description for {TEST_HX_L_BOARD}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	TEST_HX_L_BOARD

inherit
	EQA_TEST_SET
		redefine
			on_prepare,
			on_clean
		end

create
	default_create

feature {NONE} -- Preparationa and clean

	gui: HX_G_UIMANAGER
	logic: HX_L_LOGIC
	board: HX_L_BOARD
	resource_manager: HX_L_RESOURCE_MANAGER

	on_prepare
			-- Called after all initializations in default_create.
		do
			create gui.make
			create logic.initialize (gui)
			create resource_manager
			create board.make ("mero", "roli", TRUE, FALSE,
								resource_manager.template_by_name ("testing"), logic)
		end

	on_clean
			-- Called before clean performs any cleaning up.
		do
		end

feature

	test_hx_l_board_make
			-- Test routines
			-- New test routine
		do
			assert ("The board was created", True)
		end

	test_hx_l_board_is_end
			-- New test routine
		do
			assert ("The board is not ended", not board.is_end)
		end

	test_hx_l_board_place
			-- New test routine
		do
			assert ("Result is not void ", board.place (1, 1) /= Void)
		end

	test_hx_l_board_legal_moves
			-- New test routine
		do
			assert ("Result is not void ", board.legal_moves /= Void)
		end

	test_hx_l_board_legal_pice_count
			-- New test routine
		do
			assert ("Result is not void", board.pieces_count (board.player_1) /= Void)
		end

	test_hx_l_board_is_piece_selectable
			-- New test routine
		do
			assert ("Piece is selectable", board.is_piece_selectable (1, 1))
		end

	test_hx_l_board_possible_moves
			-- New test routine
		do
			assert ("Result is not void", board.possible_moves (1, 0) /= Void)
		end

	test_hx_l_board_moves_count
			-- New test routine
		do
			assert ("Moves is greater than 0", board.moves_count >= 0)
		end

	test_hx_l_board_clone_board
			-- New test routine
		do
			assert ("Result is not void", board.clone_board /= Void)
		end

	test_hx_l_board_move_piece
		do
			board.move_piece_and_continue (1, 1, 1, 2)
			assert ("Result is not void", not board.place (1, 2).is_empty)
		end

end -- class TEST_HX_L_BOARD
