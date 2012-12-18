note
	description: "[
		Eiffel tests that can be executed by testing tool.
		The test are for the TTT_MODEL class of the TicTacToe game.
	]"
	author: "Christian Estler"
	date: "14.11.2012"
	revision: "1.0"
	testing: "type/manual"

class
	TEST_TTT_MODEL

inherit
	EQA_TEST_SET
		redefine
			on_prepare,
			on_clean
		end

feature {NONE} -- Events

	on_prepare
		do
			-- This routine is called before executing any test.
			-- You can use it, e.g. to prepare (i.e. create and set values to) objects
			-- that all your tests will need.
			-- We don't use it in this particualr class. but it's here so you learn about its existence.
		end

	on_clean
		do
			-- Similar to "on_prepare", this routine is automatically called after
			-- all tests have been executed. You can use it, for example, if you need
			-- to free resources etc. that your test were using.
		end

feature -- Test routines

	test_update_with_opponent_move
			-- Test to check if the setting of opponent moves is correct
			-- with respect to list `opponent_occupied_fields'.
		note
			testing: "covers/{TTT_MODEL}.update_with_opponent_move"
			testing: "user/TTT" -- this is tag with the class-prefix
		local
			l_board_model: TTT_MODEL
				-- a local variable for the board model
			l_list: like {TTT_MODEL}.opponent_occupied_fields
				-- a local variable for a list whose type is "like" the type of "opponent_occupied_fields"-list in class TTT_MODEL
		do
				-- first we create the board
			create l_board_model

				-- next, we make the the opponent occupy tile 1,1
			l_board_model.update_with_opponent_move (1, 1)
			l_board_model.update_with_opponent_move (2, 2)
			l_board_model.update_with_opponent_move (3, 3)

				-- now we check if the oppent moves actually led to occupied fields
				-- we get a copy of the list of "fields that are occupied by opponent"
			l_list := l_board_model.opponent_occupied_fields
				-- and we check the elements in that list
			l_list.start
			assert ("Opponent occupies 1, 1:", l_list.item.is_equal ([1,1]))
			l_list.forth
			assert ("Opponent occupies 2, 2:", l_list.item.is_equal ([2,2]))
			l_list.forth
			assert ("Opponent occupies 3, 3:", l_list.item.is_equal ([3,3]))
		end

	test_has_user_won_row1
			-- Test if we determine correctly if a user has won a game
		note
			testing: "covers/{TTT_MODEL}.has_user_won"
			testing: "user/TTT"
		local
			l_board_model: TTT_MODEL
		do
				-- we start with creating an empty board
			create l_board_model

				-- now we fill a row of fields which should lead to winning the game
			l_board_model.update_with_user_move (1, 1)
			l_board_model.update_with_user_move (1, 2)
			l_board_model.update_with_user_move (1, 3)

				-- check if we the game was won
			assert ("User has won the game:", l_board_model.has_user_won)
		end

	test_has_user_won_row2
			-- Test if we determine correctly if a user has won a game
		note
			testing: "covers/{TTT_MODEL}.has_user_won"
			testing: "user/TTT"
		local
			l_board_model: TTT_MODEL
		do
				-- we start with creating an empty board
			create l_board_model

				-- now we fill a row of fields which should lead to winning the game
			l_board_model.update_with_user_move (2, 1)
			l_board_model.update_with_user_move (2, 2)
			l_board_model.update_with_user_move (2, 3)

				-- check if we the game was won
			assert ("User has won the game:", l_board_model.has_user_won)
		end


	test_has_opponent_won_column1
			-- Test if we determine correctly if an opponent has won a game
		note
			testing: "covers/{TTT_MODEL}.has_user_won"
			testing: "user/TTT"
		local
			l_board_model: TTT_MODEL
		do
				-- we start with creating an empty board
			create l_board_model

				-- now we fill a row of fields which should lead to winning the game
			l_board_model.update_with_opponent_move (1, 1)
			l_board_model.update_with_opponent_move (2, 1)
			l_board_model.update_with_opponent_move (3, 1)

				-- check if the opponent has won the game
			assert ("Opponent has won the game:", l_board_model.has_opponent_won)
		end


	test_has_opponent_won_column3
			-- Test if we determine correctly if an opponent has won a game
		note
			testing: "covers/{TTT_MODEL}.has_user_won"
			testing: "user/TTT"
		local
			l_board_model: TTT_MODEL
		do
				-- we start with creating an empty board
			create l_board_model

				-- now we fill a row of fields which should lead to winning the game
			l_board_model.update_with_opponent_move (1, 3)
			l_board_model.update_with_opponent_move (2, 3)
			l_board_model.update_with_opponent_move (3, 3)

				-- check if the opponent has won the game
			assert ("Opponent has won the game:", l_board_model.has_opponent_won)
		end

end


