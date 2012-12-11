note
	description: "Summary description for {TEST_SET_G5_IGUI_TO_NET_PUT_CARDS}."
	author: "JESUS CASTELLI"
	date: "$19/11/2012$"
	revision: "$0.0$"

class
	TEST_SET_G5_IGUI_TO_NET_JOINED_PLAYER_WAITING_ROOM

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

feature -- Preparation of Tests

	on_prepare
		-- Initializes the necessary elements
		do
			create gui.make_test
			class_test := gui
		end

feature -- Test positive

	joined_player_waiting_room0
		-- joined_player_waiting_room()
		note
			testing: "G5_IGUI_TO_NET/.joined_player_waiting_room"
		do
			class_test.joined_player_waiting_room()
			assert ("joined_player_waiting_room was successfully performed", TRUE)
		end

end
