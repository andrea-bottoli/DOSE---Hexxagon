note
	description: "[
		Eiffel tests for B8_LOGIC & B8_GAME_TILE.
	]"
	author: "George Vardakis"
	date: "20/11/2012"
	revision: "0.1"
	testing: "type/manual"

class
	B8_TEST_LOGIC_AND_GAME_TILE

inherit
	EQA_TEST_SET

feature -- Test routines

	test_valid_move

		note
			testing:  "covers/{B8_LOGIC}.make_a_move"
		local
			l_new_game:B8_LOGIC
					--local variable represnting the game's logic
			l_one_mono_tile:B8_GAME_TILE
					--local variable representing the tile of the game which has one monomino only
			l_two_monos_tile:B8_GAME_TILE
					--local variable representing the tile of the game which has two monominos
		do
			create l_new_game.make
			create l_one_mono_tile.make
			create l_two_monos_tile.make
			l_one_mono_tile.place (0, 0, l_new_game.get_board)

			assert ("Placing the second tile on the board is valid",l_new_game.make_a_move(0,1,1,l_two_monos_tile)=True)

		end

	test_start_game_and_initial_color
			-- New test routine
		note
			testing:  "covers/{B8_LOGIC}.start_game"
		local
			l_new_game:B8_LOGIC
					--new local variable for the game's logic
		do
			create l_new_game.make
			l_new_game.start_game

			assert("game is started",l_new_game.game_is_started=True)
			assert ("The initial active player is the one with ID=0", l_new_game.current_turn=0)
			assert("The colour of the player with ID=0 must be Blue",l_new_game.get_color=0)
			assert("The ID of this player's logic must be 0",l_new_game.my_id=0)
			assert("The board of the game must be empty",l_new_game.board = void)
			l_new_game.abort_game
			assert("Game is finished",l_new_game.game_is_started=False)
		end

end


