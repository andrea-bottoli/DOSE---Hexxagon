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
			assert ("Host Address not set yet", l_game_setting.host_address.is_empty)
--			l_game_setting.set_host_address("192x.168x.000x.001x")
--			assert("Invalid Host Address", l_game_setting.host_address.is_empty)
			l_game_setting.set_host_address("192.168.000.001")
			assert ("Valid Host Address", l_game_setting.host_address.is_equal ("192.168.000.001"))
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
			assert ("User Name not set yet", l_game_setting.user_name.is_empty)
			l_game_setting.set_user_name("USER NAME")
			assert ("Testing User Name", l_game_setting.user_name.is_equal ("USER NAME"))
		end

	test_set_total_players
			-- Test to check if the setting of initial number of total players is correct
		note
			testing:  "covers/{IG_GAME_SETTINGS}.set_total_players"
		local
			l_game_setting: IG_GAME_SETTINGS
			i: INTEGER
				-- local variables for the game settings
		do
			create l_game_setting
			from
				i := 1
			until
				i = 4
			loop
				i := i + 1
				l_game_setting.set_total_players(i)
				assert ("Total Player is valid", l_game_setting.total_players = i)
			end
		end

	test_set_computer_players
			-- Test to check if the setting of initial number of computer players is correct
		note
			testing:  "covers/{IG_GAME_SETTINGS}.set_computer_players"
		local
			l_game_setting: IG_GAME_SETTINGS
			i: INTEGER
				-- a local variables for the game settings
		do
			create l_game_setting
			from
				i := 1
			until
				i > 3
			loop
				--Fbesser
				l_game_setting.set_total_players (i+1)
				l_game_setting.set_computer_players(i)
				assert ("Computer players is valid", l_game_setting.computer_players = i)
				i := i + 1
			end
		end

	test_set_computer_level
			-- Test to check if the setting level of all computer players is correct
		note
			testing:  "covers/{IG_GAME_SETTINGS}.set_computer_level"
		local
			l_game_setting: IG_GAME_SETTINGS
			i: INTEGER
				-- a local variables for the game settings
		do
			create l_game_setting
			from
				i := 0
			until
				i = 3
			loop
				i := i + 1
				l_game_setting.set_computer_level(i)
				assert ("Computer level is valid", l_game_setting.computer_level = i)
			end
		end

end
