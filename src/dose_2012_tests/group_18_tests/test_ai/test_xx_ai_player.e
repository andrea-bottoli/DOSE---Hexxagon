note
	description: "[
		Eiffel tests that can be executed by testing tool.
	]"
	author: "EiffelStudio test wizard"
	date: "$Date$"
	revision: "$Revision$"
	testing: "type/manual"

class
	TEST_XX_AI_PLAYER

inherit
	EQA_TEST_SET

--feature -- Test routines


---- Optional test cases for these routines because they are not defined at API.

--	test_ensure_move
--			-- New test routine
--		note
--			testing:  "covers/{XX_AI_PLAYER}.ensure_move"
--			testing: "/user/XX"
--		local
--			l_ensure_move: XX_AI_PLAYER
--			l_best_move: INTEGER
--		do
--			create l_ensure_move.ensure_move
--			l_best_move:=10
--			assert ("l_ensure_move not void", l_ensure_move /= Void)
--			assert ("l_ensure_move_AI_Solver not void", l_ensure_move.get_ai_solver /= Void)
--			assert ("check l_best_move",l_ensure_move.get_ai_solver.get_best_move.is_equal (l_best_move))

--		end


--	test_best_move
--			-- New test routine
--		note
--			testing: "covers/{XX_AI_PLAYER}"
--			testing: "/user/XX"
--		local
--			l_best_move: XX_AI_PLAYER
--			l_move: INTEGER
--		do
--			create l_best_move.ensure_move
--			l_move:=8
--			assert ("l_best_move not void", l_best_move /= Void)
--			assert ("l_best_move_AI_Solver not void", l_best_move.get_ai_solver /= Void)
--			assert ("check l_best_move",l_best_move.get_ai_solver.get_best_move.is_equal (l_move))

--		end



---- Methods that defined at API and test cases has to be provided.

--	test_set_board
--			-- New test routine
--		note
--			testing:  "covers/{XX_AI_PLAYER}.set_board"
--			testing: "/user/XX"
--		local
--			l_ensure_move: XX_AI_PLAYER
--			l_board: XX_BOARD
--			n_cell: INTEGER
--		do
--			create l_ensure_move.ensure_move
--			create l_board.make_board
--			n_cell:=58
--			assert("l_board not void",l_board /= Void)
--			assert("check n_cell",l_board.get_num_cells.is_equal (n_cell))
--			l_ensure_move.set_board (l_board)

--			create l_board.make_board
--			n_cell:=58
--			assert("l_board not void",l_board /= Void)
--			assert("check n_cell",l_board.get_num_cells.is_equal (n_cell))
--			l_ensure_move.set_board (l_board)

--			assert ("l_board not void", l_ensure_move /= Void)
--		end

--	test_set_game_status
--			-- New test routine
--		note
--			testing: "covers/{XX_AI_PLAYER}.set_game_status"
--			testing: "/user/XX"
--		local
--			l_ensure_move: XX_AI_PLAYER
--			player1: XX_PLAYER
--			player2: XX_PLAYER
--			active: BOOLEAN
--		do
--			create l_ensure_move.ensure_move

--			create player1.make_player ("player1","Pearls")
--			create player2.make_player ("player2","Rubies")
--			active := True
--			l_ensure_move.set_game_status (player1,player2,active)
--			assert("check player1",player1.get_player_id.is_equal ("player1"))
--			assert("check player2",player2.get_player_id.is_equal ("player2"))
--			assert("check colour1",player1.get_colour_piece.is_equal ("Pearls"))
--			assert("check colour2",player2.get_colour_piece.is_equal ("Rubies"))

--			create player1.make_player ("p1","Rubies")
--			create player2.make_player ("p2","Pearls")
--			active := False
--			l_ensure_move.set_game_status (player1,player2,active)
--			assert("check p1",player1.get_player_id.is_equal ("p1"))
--			assert("check p2",player2.get_player_id.is_equal ("p2"))
--			assert("check colour1",player1.get_colour_piece.is_equal ("Rubies"))
--			assert("check colour2",player2.get_colour_piece.is_equal ("Pearls"))

--			create player1.make_player ("pl1","Rubies")
--			create player2.make_player ("pl2","Pearls")
--			active := True
--			l_ensure_move.set_game_status (player1,player2,active)
--			assert("check pl1",player1.get_player_id.is_equal ("pl1"))
--			assert("check pl2",player2.get_player_id.is_equal ("pl2"))
--			assert("check colour1",player1.get_colour_piece.is_equal ("Rubies"))
--			assert("check colour2",player2.get_colour_piece.is_equal ("Pearls"))

--			assert ("l_ensure_move not void", l_ensure_move /= Void)

--		end


--	test_send_confirm
--			-- New test routine
--		note
--			testing: "covers/{XX_AI_PLAYER}.send_confirm"
--			testing: "/user/XX"
--		local
--			l_ensure_move: XX_AI_PLAYER
--			bool_value: BOOLEAN
--		do

--			create l_ensure_move.ensure_move

--			bool_value := True
--			l_ensure_move.send_confirm (bool_value)

--			bool_value := False
--			l_ensure_move.send_confirm (bool_value)

--			assert ("l_ensure_move not void", l_ensure_move /= Void)
--		end


end

