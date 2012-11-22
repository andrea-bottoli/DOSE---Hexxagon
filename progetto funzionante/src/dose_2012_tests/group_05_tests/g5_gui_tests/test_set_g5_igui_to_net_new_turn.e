note
	description: "Summary description for {TEST_SET_G5_IGUI_TO_NET_PUT_CARDS}."
	author: "JESUS CASTELLI"
	date: "$19/11/2012$"
	revision: "$0.0$"

class
	TEST_SET_G5_IGUI_TO_NET_NEW_TURN

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

	new_current_player: STRING
		-- Parameter of the command to test

feature -- Preparation of Tests

	on_prepare
		-- Initializes the necessary elements
		do
			create gui.make
			class_test := gui
		end

feature -- Test positive

	new_turn0
		-- new_turn("JESUS")
		note
			testing: "G5_IGUI_TO_NET/.new_turn"
		do
			new_current_player := "JESUS"
			class_test.new_turn(new_current_player)
			assert ("new turn of JESUS makes is found in the action stage, with one action, one buy and 0 coins available", class_test.main_view.phase_of_the_game.is_equal ("ACTION") and class_test.main_view.current_player_info.current_player_name.is_equal (new_current_player) and class_test.main_view.current_player_info.action_points = 1 and class_test.main_view.current_player_info.buy_points = 1 and class_test.main_view.current_player_info.coins = 0)
		end

feature -- Test negative

	new_turn1
		-- new_current_player is not one player
		note
			testing: "G5_IGUI_TO_NET/.new_turn"
		local
			rescued: BOOLEAN
		do
			if not rescued then
				new_current_player := "JESUS"
				class_test.new_turn(new_current_player)
			end
			assert ("Put VOID cards in HAND raised problem", rescued)
			rescue
				if not rescued then
					rescued := TRUE
					retry
				end
		end

end
