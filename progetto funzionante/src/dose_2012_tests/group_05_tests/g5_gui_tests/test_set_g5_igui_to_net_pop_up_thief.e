note
	description: "Summary description for {TEST_SET_G5_IGUI_TO_NET_PUT_CARDS}."
	author: "JESUS CASTELLI"
	date: "$19/11/2012$"
	revision: "$0.0$"

class
	TEST_SET_G5_IGUI_TO_NET_POP_UP_THIEF

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

	player_that_played_thief: STRING
		-- First parameter of the command to test

	cards_revealed_by_players: HASH_TABLE[STRING, STRING]
		-- Second parameter of the command to test

feature -- Preparation of Tests

	on_prepare
		-- Initializes the necessary elements
		do
			create gui.make
			class_test := gui
		end

feature -- Test positive

	pop_up_thief0
		-- pop_up_thief("JESUS",[["T3","T1"]])
		note
			testing: "G5_IGUI_TO_NET/.pop_up_thief"
		do
			cards_revealed_by_players.make (2)
			player_that_played_thief := "JESUS"
			cards_revealed_by_players.put ("T3","T1")
			cards_revealed_by_players.put ("K3","T1")
			class_test.pop_up_thief (player_that_played_thief, cards_revealed_by_players)
			assert ("pop_up_thief is played by a correct player, and revealed right cards", class_test.a_pop_up_thief.owner_thief_card.is_equal (player_that_played_thief) and class_test.a_pop_up_thief.revealed_cards.is_equal (cards_revealed_by_players))
		end

feature -- Test negative

	pop_up_thief1
		-- pop_up_thief("JESUS",[])
		note
			testing: "G5_IGUI_TO_NET/.pop_up_thief"
		local
			rescued: BOOLEAN
		do
			if not rescued then
				cards_revealed_by_players.make (5)
				player_that_played_thief := "JESUS"
				cards_revealed_by_players.put ("T3","T1")
				cards_revealed_by_players.put ("K3","T1")
				cards_revealed_by_players.put ("T1","T1")
				cards_revealed_by_players.put ("K7","C1")
				cards_revealed_by_players.put ("K10","K1")
				class_test.pop_up_thief (player_that_played_thief, cards_revealed_by_players)
			end
			assert ("pop_up_thief raised problem", rescued)
			rescue
				if not rescued then
					rescued := TRUE
					retry
				end
		end

end
