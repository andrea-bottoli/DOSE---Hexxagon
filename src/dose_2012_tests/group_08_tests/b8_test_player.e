note
	description: "[
		Eiffel tests for B8_PLAYER.
	]"
	author: "Vangelis theodorakis,Andrea Braschi"
	date: "04/12/2012"
	revision: "1.0"
	testing: "type/manual"

class
	B8_TEST_PLAYER

inherit
	EQA_TEST_SET

feature -- Test routines

	test_initial_piles
			-- New test routine
		note
			testing:  "covers/{B8_PLAYER}.get_tiles"
		local
				l_new_game:B8_LOGIC
		do
			create l_new_game.make
			l_new_game.set_player_id(0)
		 	l_new_game.set_game_mode ({B8_MODE}.four_player)
			l_new_game.start_game
			assert("Players have the right tiles",l_new_game.get_players[1].get_tiles.count=21)

		end

	test_player_score

		note
			testing:  "covers/{B8_PLAYER}.get_score"
		local
			l_new_game:B8_LOGIC
					--local variable representing a new game

		do
			create l_new_game.make
			l_new_game.set_player_id(0)
		 	l_new_game.set_game_mode ({B8_MODE}.four_player)
			assert ("initial score of the players must be the sum of monominos of one colour", l_new_game.get_players[1].get_score=-89)
		end


end


