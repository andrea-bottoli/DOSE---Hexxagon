note
	description: "Summary description for {TEST_SET_G5_MAIN_VIEW_PUT_CARD_ON_THE_TOP}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	TEST_SET_G5_MAIN_VIEW_PUT_CARD_ON_THE_TOP

inherit

	EQA_TEST_SET
		redefine
			on_prepare
		end

feature {NONE}

	gui: G5_GUI

	main_view: G5_MAIN_VIEW

	main_ui: MAIN_WINDOW

	players_name: ARRAY [STRING]

	my_name_in_the_match: STRING

	card: STRING

	player_name: STRING

	on_prepare
		do
			create gui.make_test
			players_name := <<"ruth", "jaime">>
			my_name_in_the_match := "jaime"
			create main_ui.make_and_launch
			main_view.make (players_name, my_name_in_the_match, gui, main_ui)
		end

feature -- test routines

--	test_put_card_on_the_top_0
--			--test whether put card on the top is correct
--		note
--			testing: "G5_MAIN_VIEW/put_card_on_the_top"
--		do
--			card := "K10"
--			player_name := "jaime"
--			main_view.put_card_on_the_top (card, player_name)
--			assert ("the card of the player was successfully put into your discard pile", main_view.me.top_card_discard_pile = "K10" and main_view.me.player_name = "jaime")
--		end

	test_put_card_on_the_top_1
			--test negative, values the card and player name incorrect
		note
			testing: "G5_MAIN_VIEW/put_card_on_the_top"
		local
			rescued: BOOLEAN
		do
			if not rescued then
				card := "K"
				player_name := "luca"
				main_view.update_top_discard_pile (player_name, card)
			end
			assert ("arguments raised problem", rescued)
		rescue
			if not rescued then
				rescued := True
				retry
			end
		end

end
