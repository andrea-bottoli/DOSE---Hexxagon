note
	description: "[
		Eiffel tests for B8_PLAYER.
	]"
	author: "Vangelis theodorakis"
	date: "20/11/2012"
	revision: "0.1"
	testing: "type/manual"

class
	B8_TEST_PLAYER

inherit
	EQA_TEST_SET
inherit{NONE}
	B8_LOGIC
		rename
			default_create as B8_default_create
		end

feature -- Test routines

	test_initial_piles
			-- New test routine
		note
			testing:  "covers/{B8_PLAYER}.get_tiles"
		local
				l_new_game:B8_LOGIC
		do
			create l_new_game.make
			l_new_game.start_game
			assert("Players have the right tiles",l_new_game.players[0].get_tiles/=Void)

		end

	test_player_score

		note
			testing:  "covers/{B8_PLAYER}.get_score"
		local
			l_new_game:B8_LOGIC
					--local variable representing a new game

		do
			create l_new_game.make
			assert ("initial score of the players must be the sum of monominos of one colour", l_new_game.get_players[0].get_score=89)
		end


end


