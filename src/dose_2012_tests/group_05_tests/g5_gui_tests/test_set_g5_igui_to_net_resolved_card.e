note
	description: "Summary description for {TEST_SET_G5_IGUI_TO_NET_PUT_CARDS}."
	author: "JESUS CASTELLI"
	date: "$19/11/2012$"
	revision: "$0.0$"

class
	TEST_SET_G5_IGUI_TO_NET_RESOLVED_CARD

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

	card: STRING
		-- Parameter of the command to test

feature -- Preparation of Tests

	on_prepare
		-- Initializes the necessary elements
		do
			create gui.make_test
			class_test := gui
		end

feature -- Test positive

	resolved_card0
		-- resolved_card("K13")
		note
			testing: "G5_IGUI_TO_NET/.resolved_card"
		do
			card := "K13"
			class_test.resolved_card (card)
			assert ("resolved_card ", class_test.main_view.last_played_card.is_equal(card))
		end

feature -- Test negative

	resolved_card1
		-- resolved_card("V1")
		note
			testing: "G5_IGUI_TO_NET/.resolved_card"
		local
			rescued: BOOLEAN
		do
			if not rescued then
				card := "V1"
				class_test.resolved_card (card)
			end
			assert ("Put VOID cards in HAND raised problem", rescued)
			rescue
				if not rescued then
					rescued := TRUE
					retry
				end
		end

end
