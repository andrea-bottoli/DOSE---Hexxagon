note
	description: "Summary description for {TEST_SET_G5_MAIN_VIEW_SET_LAST_PLAYED_CARD}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	TEST_SET_G5_MAIN_VIEW_SET_LAST_PLAYED_CARD

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

	card: STRING

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

--	test_set_last_played_card_0
			--check that assigned card is the last card played
--		note
--			testing: "G5_MAIN_VIEW/set_last_played_card"
--		do
--			card := "K5"
--			main_view.set_last_played_card (card)
--			assert ("the last played card was set correcty", main_view.last_played_card = "K5")
--		end

--	test_set_last_played_card_1
--			--test negative, argument invalid
--		note
--			testing: "G5_MAIN_VIEW/set_last_played_card"
--		local
--			rescued: BOOLEAN
--		do
--			if not rescued then
--				card := "K120"
--				main_view.set_last_played_card (card)
--			end
--			assert ("the card is invalid", rescued)
--		rescue
--			if not rescued then
--				rescued := True
--				retry
--			end
--		end
--
--	test_set_last_played_card_2
--			--test negative, argument is void
--		note
--			testing: "G5_MAIN_VIEW/set_last_played_card"
--		local
--			rescued: BOOLEAN
--		do
--			if not rescued then
--				card := VOID
--				main_view.set_last_played_card (card)
--			end
--			assert ("the card does not exist", not (card /= void))
--		rescue
--			if not rescued then
--				rescued := True
--				retry
--			end
--		end

end
