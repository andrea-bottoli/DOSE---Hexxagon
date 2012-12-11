note
	description: "Summary description for {TEST_SET_G5_MAIN_VIEW_SET_PHASE_OF_THE_GAME}."
	author: "team RioCuarto 4"
	date: "$Date$"
	revision: "$Revision$"

class
	TEST_SET_G5_MAIN_VIEW_SET_PHASE_OF_THE_GAME

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

	phase: STRING

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

	test_set_phase_of_the_game_0
			--test whether set the phase of the game to action
		note
			testing: "G5_MAIN_VIEW/set_phase_of_the_game"
		do
			phase := "Action"
			main_view.update_phase (phase)
			assert ("the phase of the game was changed correcty to ACTION", main_view.board.current_phase = "Action")
		end

	test_set_phase_of_the_game_1
			--test whether set the phase of the game to buy
		note
			testing: "G5_MAIN_VIEW/set_phase_of_the_game"
		do
			phase := "Buy"
			main_view.update_phase (phase)
			assert ("the phase of the game was changed correcty to BUY", main_view.board.current_phase = "Buy")
		end

	test_set_phase_of_the_game_2
			--test whether set the phase of the game to clean-up
		note
			testing: "G5_MAIN_VIEW/set_phase_of_the_game"
		do
			phase := "Clean-up"
			main_view.update_phase (phase)
			assert ("the phase of the game was changed correcty to CLEAN-UP", main_view.board.current_phase = "Clean-up")
		end

	test_set_phase_of_the_game_3
			--test negative, check phase invalid
		note
			testing: "G5_MAIN_VIEW/set_phase_of_the_game"
		local
			rescued: BOOLEAN
		do
			if not rescued then
				phase := "PLAY"
				main_view.update_phase (phase)
			end
			assert ("phase is invalied", rescued)
		rescue
			if not rescued then
				rescued := True
				retry
			end
		end

end
