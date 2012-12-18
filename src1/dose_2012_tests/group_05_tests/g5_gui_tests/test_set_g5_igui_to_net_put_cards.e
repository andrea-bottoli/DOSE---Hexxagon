note
	description: "Summary description for {TEST_SET_G5_IGUI_TO_NET_PUT_CARDS}."
	author: "JESUS CASTELLI"
	date: "$19/11/2012$"
	revision: "$0.0$"

class
	TEST_SET_G5_IGUI_TO_NET_PUT_CARDS

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

	place: STRING
		-- First parameter of the command to test

	cards: ARRAY [STRING]
		-- Second parameter of the command to test

feature -- Preparation of Tests

	on_prepare
		-- Initializes the necessary elements
		do
			create gui.make_test
			class_test := gui
			create cards.make_empty
		end

feature -- Test positive

--	put_card0
--		-- put_cards("PLAY",["C1"])
--		note
--			testing: "G5_IGUI_TO_NET/.put_cards"
--		do
--			place := "PLAY"
--			cards := <<"C1">>
--			class_test.put_cards (place, cards)
--			assert ("put C1 card in PLAY inplies that last card played is equal to C1 ", class_test.main_view.last_played_card.is_equal(cards.item(1)))
--		end

feature -- Test negative

	put_card1
		-- put_cards("HAND",VOID)
		note
			testing: "G5_IGUI_TO_NET/.put_cards"
		local
			rescued: BOOLEAN
		do
			if not rescued then
				place := "HAND"
				cards := VOID
				class_test.put_cards (place, cards)
			end
			assert ("Put VOID cards in HAND raised problem", rescued)
			rescue
				if not rescued then
					rescued := TRUE
					retry
				end
		end

	put_card2
		-- put_cards("PLAY",["T3","V2"])
		note
			testing: "G5_IGUI_TO_NET/.put_cards"
		local
			rescued: BOOLEAN
		do
			if not rescued then
				place := "PLAY"
				cards := <<"T3","V2">>
				class_test.put_cards (place, cards)
			end
			assert ("Put Cards in PLAY raised problem", rescued)
			rescue
				if not rescued then
					rescued := TRUE
					retry
				end
		end
end
