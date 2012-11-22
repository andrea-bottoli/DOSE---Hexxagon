note
    description: "[
        Eiffel tests for the B8_MODE class.
    ]"
    author: "Dimitris Deyannis"
    date: "20/11/2012"
    revision: "0.1"
    testing: "type/manual"

class
    B8_TEST_MODE

inherit
    EQA_TEST_SET

feature -- Test routines

	test_is_game_over
			-- Tests game over
		note
			testing:	"covers/{B8_MODE}.is_game_over"
			testing:	"user/B8"
		local
			l_new_game: B8_LOGIC
		do
			create l_new_game.make
			l_new_game.abort_game
			assert("Game Over", l_new_game.game_mode.is_game_over = TRUE)
		end

	test_next_move
			-- Tests the next move
		note
			testing:	"covers/{B8_MODE}.next_turn"
			testing:	"user/B8"
		local
			l_new_game: B8_LOGIC
			l_tile: B8_GAME_TILE
		do
			create l_new_game.make
			create l_tile.make
			l_new_game.set_turn(0)
			assert("It is turn 0", l_new_game.get_turn = 0)
			assert("Make a move", l_new_game.make_a_move(0, 10, 10, l_tile))
			assert("Turn has changed", l_new_game.get_turn = 1)
		end
end
