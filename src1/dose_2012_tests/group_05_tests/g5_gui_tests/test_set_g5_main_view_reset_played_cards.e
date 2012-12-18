note
	description: "Summary description for {TEST_SET_G5_MAIN_VIEW_RESET_PLAYED_CARDS}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	TEST_SET_G5_MAIN_VIEW_RESET_PLAYED_CARDS

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

--	test_reset_played_cards_0
			--test whether the array of played cards is reset
--	note
--		testing: "G5_MAIN_VIEW/reset_played_cards"
--	do
--		--main_view.reset_played_cards
--		assert("array played cards is reset correcty", main_view.board.played_cards_list.is_empty)
--	end

--	test_reset_played_cards_1
--			--test whether the array of played cards with two elements is reset
--	note
--		testing: "G5_MAIN_VIEW/reset_played_cards"
--	do
--		main_view.board.played_cards_list[1]:= "k4"
--		main_view.board.played_cards_list[2]:= "k5"
--		--main_view.reset_played_cards
--		assert("array played cards with two elements is reset correcty", main_view.played_cards.is_empty)
--	end

end
