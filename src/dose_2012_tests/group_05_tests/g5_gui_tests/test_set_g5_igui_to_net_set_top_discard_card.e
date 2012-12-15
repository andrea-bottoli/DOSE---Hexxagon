note
	description: "Summary description for {TEST_SET_G5_IGUI_TO_NET_PUT_CARDS}."
	author: "JESUS CASTELLI"
	date: "$19/11/2012$"
	revision: "$0.0$"

class
	TEST_SET_G5_IGUI_TO_NET_SET_TOP_DISCARD_CARD

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

	main_ui: MAIN_WINDOW

	player_name: STRING
		-- First parameter of the command to test

	a_card: STRING
		-- Second parameter of the command to test

feature -- Preparation of Tests

	on_prepare
		-- Initializes the necessary elements
		do
			create gui.make_test
			class_test := gui
		end

feature -- Test positive

--	set_top_discard_card0
--		-- set_top_discard_card("JESUS","K7")
--		note
--			testing: "G5_IGUI_TO_NET/.set_top_discard_card"
--		do
--			player_name := "JESUS"
--			a_card := "K7"
--			class_test.set_top_discard_card (player_name, a_card)
--			assert ("Set top discard card with card K7 is valid", TRUE)
--		end

feature -- Test negative

	set_top_discard_card1
		-- Player name different of the name of the main view
		note
			testing: "G5_IGUI_TO_NET/.set_top_discard_card"
		local
			players: ARRAY [STRING]
			rescued: BOOLEAN
		do
			if not rescued then
				create gui.make_test
				players.make_empty
				players[0] := "JOSE"
				create main_ui.make_and_launch
				class_test.main_view.make (players,"JOSE", gui, main_ui)
				player_name := "JESUS"
				a_card := "K7"
				class_test.set_top_discard_card (player_name, a_card)
			end
			assert ("Set top discard card raised problem", rescued)
			rescue
				if not rescued then
					rescued := TRUE
					retry
				end
		end

end
