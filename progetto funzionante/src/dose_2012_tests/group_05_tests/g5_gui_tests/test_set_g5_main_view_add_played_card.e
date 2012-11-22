note
	description: "Summary description for {TEST_SET_G5_MAIN_VIEW_ADD_PLAYED_CARD}."
	author: "team RioCuarto 4"
	date: "$Date$"
	revision: "$Revision$"

class
	TEST_SET_G5_MAIN_VIEW_ADD_PLAYED_CARD

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

	test_add_played_card_0
			--test wheter add a card played to an empty array
		note
			testing: "G5_MAIN_VIEW/add_played_cards"
		local
			card: STRING
		do
			card := "K1"
			main_view.reset_played_cards ()
			main_view.add_played_card (card)
			assert ("the card was successfully added to the array of cards played", main_view.played_cards [1] = "K1")
		end

	test_add_played_card_1
			--test whether added cards to the array of cards played
		note
			testing: "G5_MAIN_VIEW/add_played_cards"
		local
			card: STRING
		do
			card := "K8"
			main_view.reset_played_cards ()
			main_view.add_played_card (card)
			card := "K10"
			main_view.add_played_card (card)
			card := "T2"
			assert ("the cards ware successfully added to the array of cards played", main_view.played_cards [1] = "K8" and main_view.played_cards [2] = "K10" and main_view.played_cards [3] = "T2")
		end

	test_add_played_card_2
			--test negative, add a card invalid
		note
			testing: "G5_MAIN_VIEW/add_played_cards"
		local
			card: STRING
			rescued: BOOLEAN
		do
			if not rescued then
				card := "K"
				main_view.add_played_card (card)
			end
			assert ("card invalid", rescued)
		rescue
			if not rescued then
				rescued := True
				retry
			end
		end

end
