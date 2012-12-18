note
	description: "[
		Eiffel tests that can be executed by testing tool.
	]"
	author: "Nikos Sourligas, Theocharis Vavouris"
	date: "$Date$"
	revision: "$Revision$"
	testing: "type/manual"

class
	TEST_XX_AI_PLAYER

inherit
	EQA_TEST_SET

feature -- Test routines


		test_set_board
				-- New test routine
		note
			testing:  "covers/{XX_AI_PLAYER}.set_board"
			testing: "/user/XX"
		local
			hexx: XX_HEXXAGON
			ai_player: XX_AI_PLAYER
			l_board: XX_BOARD
			t_board: XX_BOARD
			n_cell: INTEGER
		do
			create hexx.make_hexxagon
			create l_board.make_board
			assert("l_board not void",l_board /= Void)
			create ai_player.ensure_move(hexx,l_board)
			ai_player.set_board (l_board)

			create t_board.make_board
			assert("t_board not void",t_board /= Void)
			create ai_player.ensure_move(hexx,t_board)
			ai_player.set_board (t_board)
		end


		test_get_ai_solver
		-- New test routine
		note
			testing:  "covers/{XX_AI_PLAYER}.get_ai_solver"
			testing:  "/user/XX"
		local
			board: XX_BOARD
			hexx: XX_HEXXAGON
			ai_player: XX_AI_PLAYER
			one_ai_solver: XX_AI_SELECT_MOVE
			second_ai_solver: XX_AI_SELECT_MOVE
		do
			create ai_player.ensure_move(hexx,board)
			one_ai_solver := ai_player.get_ai_solver
			second_ai_solver := ai_player.get_ai_solver
			assert("first solver not void",one_ai_solver /= Void)
			assert("second solver not void",second_ai_solver /= Void)
		end



		test_set_game_status
			-- New test routine
		note
			testing: "covers/{XX_AI_PLAYER}.set_game_status"
			testing: "/user/XX"
		local
			l_ensure_move: XX_AI_PLAYER
			board: XX_BOARD
			hexx: XX_HEXXAGON
			player1: XX_PLAYER
			player2: XX_PLAYER
			active: BOOLEAN
		do
			create hexx.make_hexxagon
			create board.make_board
			create l_ensure_move.ensure_move(hexx,board)
			create player1.make_player ("player1","Pearls")
			create player2.make_player ("player2","Rubies")
			active := True

			l_ensure_move.set_game_status (player1,player2,active)
			assert("check player1",player1.get_player_id.is_equal ("player1"))
			assert("check player2",player2.get_player_id.is_equal ("player2"))
			assert("check colour1",player1.get_colour_piece.is_equal ("Pearls"))
			assert("check colour2",player2.get_colour_piece.is_equal ("Rubies"))

			create player1.make_player ("p1","Rubies")
			create player2.make_player ("p2","Pearls")
			active := False
			l_ensure_move.set_game_status (player1,player2,active)
			assert("check p1",player1.get_player_id.is_equal ("p1"))
			assert("check p2",player2.get_player_id.is_equal ("p2"))
			assert("check colour1",player1.get_colour_piece.is_equal ("Rubies"))
			assert("check colour2",player2.get_colour_piece.is_equal ("Pearls"))

			create player1.make_player ("pl1","Rubies")
			create player2.make_player ("pl2","Pearls")
			active := True
			l_ensure_move.set_game_status (player1,player2,active)
			assert("check pl1",player1.get_player_id.is_equal ("pl1"))
			assert("check pl2",player2.get_player_id.is_equal ("pl2"))
			assert("check colour1",player1.get_colour_piece.is_equal ("Rubies"))
			assert("check colour2",player2.get_colour_piece.is_equal ("Pearls"))

			assert ("l_ensure_move not void", l_ensure_move /= Void)

		end


	test_send_confirm
			-- New test routine
		note
			testing: "covers/{XX_AI_PLAYER}.send_confirm"
			testing: "/user/XX"
		local
			l_ensure_move: XX_AI_PLAYER
			board: XX_BOARD
			hexx: XX_HEXXAGON
			bool_value: BOOLEAN
		do
			create hexx.make_hexxagon
			create board.make_board
			create l_ensure_move.ensure_move(hexx,board)

			bool_value := True
			l_ensure_move.send_confirm (bool_value)
			assert("l_ensure_move is True",bool_value)

			bool_value := False
			l_ensure_move.send_confirm (bool_value)
			assert("l_ensure_move is True",bool_value)

			assert ("l_ensure_move not void", l_ensure_move /= Void)
		end


end

