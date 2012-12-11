note
	description: "Tests for the IG_PLAYER class"
	author: "Adriana Selleri Rocha"
	date: "$Date$"
	revision: "$Revision$"

class
	TEST_IG_PLAYER

inherit
	EQA_TEST_SET

feature -- Test routines

	test_IG_PLAYER_set_name
			-- Test the name of the Player
		note
			testing:  "covers/{IG_PLAYER}.set_name"
			testing:  "user/IG"
		local
			l_player: IG_AI_PLAYER -- since AI_PLAYER is an abrastract class, we use the AI subclass to instantiate
		do
			--create l_player.make_ai_player (create {IG_LOGIC}, 1)
			l_player.set_name ("MrPlayer")
			assert ("Name of the player set", l_player.name.is_equal ("MrPlayer"))
		end

end
