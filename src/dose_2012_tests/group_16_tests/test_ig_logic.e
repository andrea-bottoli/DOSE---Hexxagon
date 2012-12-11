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
			l_game_setting: IG_GAME_SETTINGS
		do
			create l_game_setting
			l_game_setting.set_host_address("192.168.000.001:5555")
			l_logic.make_with_host_settings(l_game_setting, Void, Void, Void)
			assert ("not_implemented", False) -- I still dont know what has to be checked in this routine
		end

	test_IG_LOGIC_make_with_join_settings
		-- Tests if the logic was created with the settings to join a game
		note
			testing:  "covers/{IG_LOGIC}.make_with_join_settings"
			testing:  "user/IG"
		local
			l_logic: IG_LOGIC
			l_game_setting: IG_GAME_SETTINGS
				-- a local variable for the game settings
		do
			create l_game_setting
			l_game_setting.set_host_address("192.168.000.001:5555")
			l_logic.make_with_join_settings(l_game_setting, Void, Void, Void)
			assert ("not_implemented", False) -- I still dont know what has to be checked in this routine
		end

	test_IG_GAMESTATE_not_void
			-- Tests if the gamestate is created along with the gameboard, scoreboards and tileracks
		note
			testing: "covers/IG_LOGIC"
			testing: "user/IG"
		local
			l_logic: IG_LOGIC
		do
			--create l_logic
			assert ("Gameboard not empty", l_logic.gameboard/=Void)
			assert ("Scoreboards not empty", l_logic.scoreboards/=Void)
		end

end



