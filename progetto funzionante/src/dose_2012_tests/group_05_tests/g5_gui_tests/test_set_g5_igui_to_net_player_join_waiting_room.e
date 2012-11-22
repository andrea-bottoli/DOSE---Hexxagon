note
	description: "Summary description for {TEST_SET_G5_IGUI_TO_NET_PUT_CARDS}."
	author: "JESUS CASTELLI"
	date: "$19/11/2012$"
	revision: "$0.0$"

class
	TEST_SET_G5_IGUI_TO_NET_PLAYER_JOIN_WAITING_ROOM

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

	name_new_player: STRING
		--  Parameter of the command to test

feature -- Preparation of Tests

	on_prepare
		-- Initializes the necessary elements
		do
			create gui.make
			class_test := gui
		end

feature -- Test positive

	player_join_waiting_room0
		-- player_join_waiting_room("JESUS")
		note
			testing: "G5_IGUI_TO_NET/.player_join_waiting_room"
		do
			name_new_player := "JESUS"
			class_test.player_join_waiting_room(name_new_player)
			assert ("player_join_waiting_room was successful", TRUE)
		end

end
