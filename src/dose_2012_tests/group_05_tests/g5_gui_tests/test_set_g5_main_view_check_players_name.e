note
	description: "Summary description for {TEST_SET_G5_MAIN_VIEW_CHECK_PLAYERS_NAME}."
	author: "team RioCuarto 4"
	date: "$Date$"
	revision: "$Revision$"

class
	TEST_SET_G5_MAIN_VIEW_CHECK_PLAYERS_NAME

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

	test_check_players_name_0
			--test whether player "jesus" is in the list of players

		note
			testing: "G5_MAIN_VIEW/check_players_name"
		local
			ret: BOOLEAN
		do
			name := "jesus"
			ret := main_view.check_players_name (name)
			assert ("the name in contained in the list of players", ret)
		end

	test_check_players_name_1
			--test_negative, the name assigned does not player
		note
			testing: "G5_MAIN_VIEW/check_players_name"
		local
			ret: BOOLEAN
			rescued: BOOLEAN
		do
			if not rescued then
				name := "gabriele"
				ret := main_view.check_players_name (name)
			end
			assert ("the name is invalid", not ret)
		rescue
			if not rescued then
				rescued := True
				ret := True
				retry
			end
		end

end
