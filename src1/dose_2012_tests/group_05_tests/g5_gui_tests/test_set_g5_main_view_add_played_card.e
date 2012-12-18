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

--	test_add_played_card_0
--			--test wheter add a card played to an empty array
--		note
--			testing: "G5_MAIN_VIEW/add_played_cards"
--		local
--			cards: ARRAY[STRING]
--		do
--			cards := <<"K1">>
--			main_view.create_and_assign_card ("PLAY", cards)
--			assert ("the card was successfully added to the array of cards played", main_view.board.played_cards_list[1] = "K1")
--		end

--	test_add_played_card_1
--			--test whether added cards to the array of cards played
--		note
--			testing: "G5_MAIN_VIEW/add_played_cards"
--		local
--			cards: ARRAY[STRING]
--		do
--			cards := <<"K8">>
--			main_view.create_and_assign_card ("PLAY", cards)
--			cards := <<"K10">>
--			main_view.create_and_assign_card ("PLAY", cards)
--			cards := <<"T2">>
--			main_view.create_and_assign_card ("PLAY", cards)
--			assert ("the cards ware successfully added to the array of cards played", main_view.board.played_cards_list[1] = "K8" and main_view.board.played_cards_list[2] = "K10" and main_view.board.played_cards_list[3] = "T2")
--		end

--	test_add_played_card_2
--			--test negative, add a card invalid
--		note
--			testing: "G5_MAIN_VIEW/add_played_cards"
--		local
--			cards: ARRAY[STRING]
--			rescued: BOOLEAN
--		do
--			if not rescued then
--				cards := <<"K">>
--				main_view.create_and_assign_card ("PLAY", cards)
--			end
--			assert ("card invalid", rescued)
--		rescue
--			if not rescued then
--				rescued := True
--				retry
--			end
--		end

end
