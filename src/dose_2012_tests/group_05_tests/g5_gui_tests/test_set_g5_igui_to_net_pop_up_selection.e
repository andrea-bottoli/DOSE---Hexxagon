note
	description: "Summary description for {TEST_SET_G5_IGUI_TO_NET_PUT_CARDS}."
	author: "JESUS CASTELLI"
	date: "$19/11/2012$"
	revision: "$0.0$"

class
	TEST_SET_G5_IGUI_TO_NET_POP_UP_SELECTION

inherit

	EQA_TEST_SET
		redefine
			on_prepare
		end

feature -- Elements needed to the test

	class_test: G5_IGUI_TO_NET
		-- Instance to the class that contains the command to test

	gui: G5_GUI
		-- Auxiliary to instantiate of G5_IGUI_TO_NET

	cards_are_from: STRING
		-- First parameter of the command to test

	min_choice: INTEGER
		-- Second parameter of the command to test

	max_choice: INTEGER
		-- Third parameter of the command to test

	cards: ARRAY [STRING]
		-- Fourth parameter of the command to test

feature -- Preparation of Tests

	on_prepare
		-- Initializes the necessary elements
		do
			create gui.make_test
			class_test := gui
			create cards.make_empty
		end

feature -- Test positive

	pop_up_selection0
		-- pop_up_selection("PLAY",2,2,["C1","K4","K8","V1"])
		note
			testing: "G5_IGUI_TO_NET/.pop_up_selection"
		do
			cards_are_from := "SUPPLY"
			min_choice := 2
			max_choice := 2
			cards := <<"C1","K4","K8","V1">>
			class_test.pop_up_selection (cards_are_from, min_choice,max_choice,cards)
			assert ("pop_up_selection has selected the correct cards correct place in a proper quantity ", class_test.a_pop_up_selection.list_of_cards.is_equal(cards) and class_test.a_pop_up_selection.place.is_equal(cards_are_from) and class_test.a_pop_up_selection.min_selection = min_choice and class_test.a_pop_up_selection.max_selection = max_choice)
		end

	pop_up_selection1
		-- pop_up_selection("PLAY",1,4,["C3","K1","V3"])
		note
			testing: "G5_IGUI_TO_NET/.pop_up_selection"
		do
			cards_are_from := "HAND"
			min_choice := 1
			max_choice := 4
			cards := <<"C3","K1","V3">>
			class_test.pop_up_selection (cards_are_from, min_choice,max_choice,cards)
			assert ("pop_up_selection has selected the correct cards correct place in a proper quantity ", class_test.a_pop_up_selection.list_of_cards.is_equal(cards) and class_test.a_pop_up_selection.place.is_equal(cards_are_from) and class_test.a_pop_up_selection.min_selection = min_choice and class_test.a_pop_up_selection.max_selection = max_choice)
		end

feature -- Test negative

	pop_up_selection2
		-- pop_up_selection("HAND",1,1,[])
		note
			testing: "G5_IGUI_TO_NET/.pop_up_selection"
		local
			rescued: BOOLEAN
		do
			if not rescued then
				cards_are_from := "HAND"
				min_choice := 1
				max_choice := 1
				class_test.pop_up_selection (cards_are_from, min_choice,max_choice,cards)
			end
			assert ("pop_up_selection raised problem", rescued)
			rescue
				if not rescued then
					rescued := TRUE
					retry
				end
		end

	pop_up_selection3
		-- pop_up_selection("SUPPLY",2,1,["T3","C3","K8"])
		note
			testing: "G5_IGUI_TO_NET/.pop_up_selection"
		local
			rescued: BOOLEAN
		do
			if not rescued then
				cards_are_from := "SUPPLY"
				min_choice := 2
				max_choice := 1
				cards := <<"T3","C3","K8">>
				class_test.pop_up_selection (cards_are_from, min_choice,max_choice,cards)
			end
			assert ("pop_up_selection raised problem", rescued)
			rescue
				if not rescued then
					rescued := TRUE
					retry
				end
		end

end
