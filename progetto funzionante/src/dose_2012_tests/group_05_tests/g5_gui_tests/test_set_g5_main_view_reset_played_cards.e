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

	players_name: ARRAY [STRING]

	my_name_in_the_match: STRING

	on_prepare
		do
			players_name := <<"ruth", "jaime", "jesus">>
			my_name_in_the_match := "sergio"
			main_view.make (players_name, my_name_in_the_match)
		end

feature -- test routines

	test_reset_played_cards_0
			--test whether the array of played cards is reset
	note
		testing: "G5_MAIN_VIEW/reset_played_cards"
	do
		main_view.reset_played_cards
		assert("array played cards is reset correcty", main_view.played_cards.is_empty)
	end

	test_reset_played_cards_1
			--test whether the array of played cards with two elements is reset
	note
		testing: "G5_MAIN_VIEW/reset_played_cards"
	do
		main_view.played_cards [1]:= "k4"
		main_view.played_cards [2]:= "k5"
		main_view.reset_played_cards
		assert("array played cards with two elements is reset correcty", main_view.played_cards.is_empty)
	end

end
