note
	description: "[
		Eiffel tests that can be executed by testing tool.
		The test are for the IG_GAME_SETTINGS class of the Ingenious game.
	]"
	author: "Daiane Hemerich, Lucélia Chipeaux, Renata De Paris"
	date: "$Date$"
	revision: "$Revision$"
	testing: "Manual"

class
	TEST_IG_GAME_SETTINGS

inherit
	EQA_TEST_SET

feature {NONE} -- Events

	on_prepare
		do
			-- This routine is called before executing any test.
		end

	on_clean
		do
			-- This routine is automatically called after all tests have been executed.
		end

feature -- Test routines

	test_set_host_address
			-- Test to check if the setting of valid host address is correct
		note
			testing:  "covers/{IG_GAME_SETTINGS}.set_host_address"
		local
			l_game_setting: IG_GAME_SETTINGS
				-- a local variable for the game settings
		do
			create l_game_setting
			l_game_setting.set_host_address("192.168.000.001:5555")
			assert ("192.168.000.001:5555", l_game_setting.host_address)
		end

	test_set_user_name
			-- Test to check if the setting of valid user name is correct
		note
			testing:  "covers/{IG_GAME_SETTINGS}.set_user_name"
		local
			l_game_setting: IG_GAME_SETTINGS
				-- a local variable for the game settings
		do
			create l_game_setting
			l_game_setting.set_user_name("USER NAME")
			assert ("USER NAME", l_game_setting.user_name)
		end

	test_set_total_players
			-- Test to check if the setting of initial number of total players is correct
		note
			testing:  "covers/{IG_GAME_SETTINGS}.set_total_players"
		local
			l_game_setting: IG_GAME_SETTINGS
				-- a local variable for the game settings
		do
			create l_game_setting
			l_game_setting.set_total_players(2)
			assert (2, l_game_setting.total_players)
		end

	test_set_computer_players
			-- Test to check if the setting of initial number of computer players is correct
		note
			testing:  "covers/{IG_GAME_SETTINGS}.set_computer_players"
		local
			l_game_setting: IG_GAME_SETTINGS
				-- a local variable for the game settings
		do
			create l_game_setting
			l_game_setting.set_computer_players(1)
			assert (1, l_game_setting.computer_players)
		end

	test_set_computer_level
			-- Test to check if the setting level of all computer players is correct
		note
			testing:  "covers/{IG_GAME_SETTINGS}.set_computer_level"
		local
			l_game_setting: IG_GAME_SETTINGS
				-- a local variable for the game settings
		do
			create l_game_setting
			l_game_setting.set_computer_level(3)
			assert (3, l_game_setting.computer_level)
		end


end
