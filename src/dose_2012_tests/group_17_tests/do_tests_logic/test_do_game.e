note
	description: "Summary description for {TEST_DO_GAME}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	TEST_DO_GAME

inherit
	EQA_TEST_SET

feature -- Test routines

--Tests the routine play_game
	test_play_game

		local
			game: DO_GAME
			player : DO_PLAYER

		do
			create game.play_game(1)

			player.set_name ("Player 1");
			player.set_active (True)

			game.set_game ("Dominion")
			game.add_player (player)
			game.init_players
			game.init_deck_piles
			game.play_game(1)

			assert ("Is player active", player.get_active = False)

			assert ("Check whether move is valid", game.valid_move = False)

			assert ("Check whether game is end", game.is_end_game = False)
		end

end
