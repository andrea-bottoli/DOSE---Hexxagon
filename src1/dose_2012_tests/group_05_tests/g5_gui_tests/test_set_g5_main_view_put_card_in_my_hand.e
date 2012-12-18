note
	description: "Summary description for {TEST_SET_G5_MAIN_VIEW_PUT_CARD_IN_MY_HAND}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	TEST_SET_G5_MAIN_VIEW_PUT_CARD_IN_MY_HAND

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

	cards: ARRAY [STRING]

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

--	test_put_card_in_my_hand_0
--			-- test whether the cards in the hand is correct
--		note
--			testing: "G5_MAIN_VIEW/put_card_in_my_hand"
--		do
--			cards [1] := "T3"
--			cards [2] := "T1"
--			cards [3] := "K12"
--			cards [4] := "K7"
--			cards [5] := "V3"
--			main_view.put_card_in_my_hand (cards)
--			assert ("put cards in the hand was successfully", main_view.me.cards_in_the_hand = ["T3", "T1", "K12", "K7", "V3"])
--		end

--	test_put_card_in_my_hand_1
--			--test negative, array the cards assigned is empty
--		note
--			testing: "G5_MAIN_VIEW/put_card_in_my_hand"
--		local
--			rescued: BOOLEAN
--		do
--			if not rescued then
--				cards.make_empty
--				main_view.create_and_assign_card ("HAND", cards)
--			end
--			assert ("putting cards in the hand raised problem", rescued)
--		rescue
--			if not rescued then
--				rescued := True
--				retry
--			end
--		end

end
