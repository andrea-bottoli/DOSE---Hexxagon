note
	description: "Test routines for the IG_LOGIC class"
	author: "Adriana Selleri Rocha"
	date: "$Date$"
	revision: "$Revision$"
	testing: "type/manual"

class
	TEST_IG_LOGIC

inherit
	EQA_TEST_SET

feature -- Test routines

	test_IG_LOGIC_make_with_host_settings
			-- Tests if the logic was created with the settings to host a game
		note
			testing:  "covers/{IG_LOGIC}.make_with_host_settings"
			testing:  "user/IG"
	local
			l_logic: IG_LOGIC
			l_game_settings: IG_GAME_SETTINGS
		do
			create l_game_settings
			l_game_settings.set_computer_level (1)
			l_game_settings.set_total_players (2)
			l_game_settings.set_computer_players (1)
			l_game_settings.set_user_name ("Host")

			create l_logic.make_with_host_settings(l_game_settings, agent do  end, agent do  end, agent do_nothing_with_logic)
			assert ("User Player Created", l_logic.user_player.name.is_equal ("Host"))
		end

	test_IG_LOGIC_make_with_join_settings
		-- Tests if the logic was created with the settings to join a game
		note
			testing:  "covers/{IG_LOGIC}.make_with_join_settings"
			testing:  "user/IG"
		local
			l_logic: IG_LOGIC
			l_game_settings: IG_GAME_SETTINGS
			do
				create l_game_settings
				l_game_settings.set_computer_level (1)
				l_game_settings.set_total_players (2)
				l_game_settings.set_computer_players (1)
				l_game_settings.set_user_name ("Guest")

				create l_logic.make_with_host_settings(l_game_settings, agent do  end, agent do  end, agent do_nothing_with_logic)
				assert ("User Player Created", l_logic.user_player.name.is_equal ("Guest"))
		end

	test_IG_GAMESTATE_not_void
			-- Tests if the gamestate is created along with the gameboard, scoreboards and tileracks
		note
			testing: "covers/IG_LOGIC"
			testing: "user/IG"
		local
			l_logic: IG_LOGIC
			l_settings: IG_GAME_SETTINGS
		do
			create l_settings
			l_settings.set_host_address ("127.0.0.1")
			l_settings.set_user_name ("Eve")
			l_settings.set_total_players (2)
			l_settings.set_computer_players (1)
			l_settings.set_computer_level (1)
			create l_logic.make_with_host_settings (l_settings, agent do end, agent do  end, agent do_nothing_with_logic)
			assert ("Gameboard not empty", l_logic.gameboard/=Void)
			assert ("Scoreboards not empty", l_logic.scoreboards/=Void)
		end

	do_nothing_with_logic (a_player : IG_PLAYER)
		do

		end

end



