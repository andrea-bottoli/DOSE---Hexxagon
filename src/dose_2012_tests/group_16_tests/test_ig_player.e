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
			l_logic: IG_LOGIC
			l_game_settings : IG_GAME_SETTINGS
		do
			create l_game_settings
			l_game_settings.set_computer_level (1)
			l_game_settings.set_total_players (2)
			l_game_settings.set_computer_players (1)
			l_game_settings.set_user_name ("Host")

			create l_logic.make_with_host_settings (l_game_settings, agent do  end, agent do  end, agent do_nothing_with_player)
			create l_player.make_ai_player (l_logic, 1)
			l_player.set_name ("MrPlayer")
			assert ("Name of the player set", l_player.name.is_equal ("MrPlayer"))
		end

		do_nothing_with_player(a_player : IG_AI_PLAYER)
		do

		end

end
