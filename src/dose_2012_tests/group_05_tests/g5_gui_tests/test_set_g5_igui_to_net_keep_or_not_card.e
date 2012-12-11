note
	description: "Summary description for {TEST_SET_G5_IGUI_TO_NET_PUT_CARDS}."
	author: "JESUS CASTELLI"
	date: "$19/11/2012$"
	revision: "$0.0$"

class
	TEST_SET_G5_IGUI_TO_NET_KEEP_OR_NOT_CARD

inherit

	EQA_TEST_SET
		redefine
			on_prepare
		end

feature -- Elements needed to the test

	class_test: G5_IGUI_TO_NET
		-- Instance to the class that contains the consultation to test

	gui: G5_GUI
		-- Auxiliary to instantiate of G5_IGUI_TO_NET

	card: STRING
		-- Parameter of the consultation to test

feature -- Preparation of Tests

	on_prepare
		-- Initializes the necessary elements
		do
			create gui.make_test
			class_test := gui
		end

feature -- Test positive

	keep_or_not_card0
		-- keep_or_not_card0("K20")
		note
			testing: "G5_IGUI_TO_NET/.keep_or_not_card"
		do
			card := "K20"
			assert ("keep_or_not_card successfully completed", class_test.keep_or_not_card (card))
		end

feature -- Test negative

	keep_or_not_card1
		-- keep_or_not_card0("   ")
		note
			testing: "G5_IGUI_TO_NET/.keep_or_not_card"
		local
			rescued: BOOLEAN
		do
			if not rescued then
				card := "    "
				rescued := class_test.keep_or_not_card (card)
			end
			assert ("Put VOID cards in HAND raised problem", rescued)
			rescue
				if not rescued then
					rescued := TRUE
					retry
				end
		end

end
