note
	description: "Summary description for {TEST_SET_G5_MAIN_VIEW_REMOVE_FROM_PLAYERS_LIST}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	TEST_SET_G5_MAIN_VIEW_REMOVE_FROM_PLAYERS_LIST

inherit

	EQA_TEST_SET
		redefine
			on_prepare
		end

feature {NONE}

	main_view: G5_MAIN_VIEW

	main_ui: MAIN_WINDOW

	players_name: ARRAY [STRING]

	my_name_in_the_match: STRING

	name: STRING

	gui: G5_GUI

	on_prepare
		do
			create gui.make_test
			players_name := <<"ruth", "jaime", "jesus">>
			my_name_in_the_match := "sergio"
			create main_ui.make_and_launch
			main_view.make (players_name, my_name_in_the_match, gui, main_ui)
		end

feature -- test routines

--	test_remove_from_players_list_0
--			--test whether remove name from the players list
--		note
--			testing: "G5_MAIN_VIEW/remove_from_players_list"
--		do
--			name := "sergio"
--			main_view.remove_player_from_the_game (name)
--			assert ("player sergio has been remove from list correcty", main_view.players = ["ruth", "jaime", "jesus"] and main_view.amount_of_players = 3)
--		end

--	test_remove_from_players_list_1
--			--test whether remove all the players list
--		note
--			testing: "G5_MAIN_VIEW/remove_from_players_list"
--		do
--			name := "sergio"
--			main_view.remove_player_from_the_game (name)
--			name := "ruth"
--			main_view.remove_player_from_the_game (name)
--			name := "jaime"
--			main_view.remove_player_from_the_game (name)
--			name := "jesus"
--			main_view.remove_player_from_the_game (name)

--			assert ("the players have been remove from list correcty", main_view.players.is_empty and main_view.amount_of_players = 0)
--		end

--	test_remove_from_players_list_2
--			--test negative argument invalid
--		note
--			testing: "G5_MAIN_VIEW/remove_from_players_list"
--		local
--			rescued: BOOLEAN
--		do
--			if not rescued then
--				name := "luca"
--				main_view.remove_player_from_the_game (name)
--			end
--			assert ("player luca does not valid", rescued)
--		rescue
--			if not rescued then
--				rescued := True
--				retry
--			end
--		end

end
