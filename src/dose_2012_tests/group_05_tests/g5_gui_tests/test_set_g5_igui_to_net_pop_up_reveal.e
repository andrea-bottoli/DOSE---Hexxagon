note
	description: "Summary description for {TEST_SET_G5_IGUI_TO_NET_PUT_CARDS}."
	author: "JESUS CASTELLI"
	date: "$19/11/2012$"
	revision: "$0.0$"

class
	TEST_SET_G5_IGUI_TO_NET_POP_UP_REVEAL

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

	player_that_reveal: STRING
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

	pop_up_revel0
		-- pop_up_revel ("JESUS",["K5,K7,T3"])
		note
			testing: "G5_IGUI_TO_NET/.pop_up_revel"
		do
			player_that_reveal := "JESUS"
			cards := <<"K5","K7","T3">>
			class_test.pop_up_reveal (player_that_reveal, cards)
			assert ("pop_up_revel revealed correct cards at the correct player", class_test.a_pop_up_reveal.list_of_cards.is_equal(cards) and class_test.a_pop_up_reveal.player.is_equal(player_that_reveal))
		end

feature -- Test negative

	pop_up_revel1
		-- pop_up_revel ("JESUS",[])
		note
			testing: "G5_IGUI_TO_NET/.pop_up_revel"
		local
			rescued: BOOLEAN
		do
			if not rescued then
				player_that_reveal := "JESUS"
				class_test.pop_up_reveal (player_that_reveal, cards)
			end
			assert ("pop_up_revel raised problem", rescued)
			rescue
				if not rescued then
					rescued := TRUE
					retry
				end
		end

--	pop_up_revel2
--		-- Player that reveal not exists
--		note
--			testing: "G5_IGUI_TO_NET/.pop_up_revel"
--		local
--			players: ARRAY [STRING]
--			rescued: BOOLEAN
--		do
--			if not rescued then
--				create gui.make_test
--				players.make_empty
--				players[0] := "JOSE"
--				create main_ui.make_and_launch
--				class_test.main_view.make (players,"JOSE", gui, main_ui)
--				player_that_reveal := "JESUS"
--				cards := <<"V1","V2","V3">>
--				class_test.pop_up_reveal (player_that_reveal, cards)
--			end
--			assert ("pop_up_revel raised problem", rescued)
--			rescue
--				if not rescued then
--					rescued := TRUE
--					retry
--				end
--		end

end
