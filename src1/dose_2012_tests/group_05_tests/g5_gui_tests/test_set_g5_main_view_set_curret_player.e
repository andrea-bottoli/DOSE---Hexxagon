note
	description: "Summary description for {TEST_SET_G5_MAIN_VIEW_SET_CURRET_PLAYER}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	TEST_SET_G5_MAIN_VIEW_SET_CURRET_PLAYER

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
			main_view.make (players_name, my_name_in_the_match, gui,main_ui)
		end

feature -- test routines

--	test_set_curret_player_0
--			--
--		note
--			testing: "G5_MAIN_VIEW/set_curret_player"
--		do
--			name := "sergio"
--			main_view.set_curret_player (name)
--			assert ("set curret player executed correcty", main_view.current_player_info.current_player_name = "sergio" and main_view.current_player_info.action_points = 1 and main_view.current_player_info.buy_points = 1 and main_view.current_player_info.coins = 0)
--		end

--	test_set_curret_player_1
--			--test negative, argument is invalid
--		note
--			testing: "G5_MAIN_VIEW/set_curret_player"
--		local
--			rescued: BOOLEAN
--		do
--			if not rescued then
--				name := "luca"
--				main_view.set_curret_player (name)
--			end
--			assert ("the name of player is invalid", rescued)
--		rescue
--			if not rescued then
--				rescued := True
--				retry
--			end
--		end

end
