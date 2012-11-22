note
	description: "Summary description for {TEST_SET_G5_INET_TO_LOGIC_IS_VALID_NAME_PLAYER}."
	author: "JESUS CASTELLI"
	date: "$21/11/2012$"
	revision: "$0.0$"

class
	TEST_SET_G5_INET_TO_LOGIC_IS_VALID_NAME_PLAYER

inherit

	EQA_TEST_SET
		redefine
			on_prepare
		end

feature -- Elements needed to the test

	class_test: G5_INET_TO_LOGIC
		-- Instance to the class that contains the command to test

	net_server: G5_NET_SERVER
		-- Auxiliary to instantiate of G5_INET_TO_LOGIC

	gui_to_net: G5_IGUI_TO_NET
		-- Auxiliary to instantiate of G5_NET_CLIENT

	gui: G5_GUI
		-- Auxiliary to instantiate of G5_IGUI_TO_NET

	a_player_name: STRING
		-- First parameter of the command to test

	valid_connection: BOOLEAN
		-- Second parameter of the command to test

feature -- Preparation of Test

	on_prepare
		-- Initializes the necessary elements
		do
			create gui.make
			gui_to_net := gui
			create net_server.make (1025, 2)
			class_test := net_server
		end

feature -- Test positive

	is_valid_name_player0
		-- is_valid_name_player("JESUS",True)
		note
			testing: "G5_INET_TO_LOGIC/.is_valid_name_player"
		do
			a_player_name := "JESUS"
			valid_connection := True
			class_test.is_valid_name_player (a_player_name, valid_connection)
			assert ("start_game was successful", True)
		end

feature -- Test negative

	is_valid_name_player1
		-- is_valid_name_player(Void,True)
		note
			testing: "G5_INET_TO_LOGIC/.is_valid_name_player"
		local
			rescued: BOOLEAN
		do
			if not rescued then
				a_player_name := Void
				valid_connection := True
				class_test.is_valid_name_player (a_player_name, valid_connection)
			end
			assert ("is_valid_name_player raised problem", rescued)
			rescue
				if not rescued then
					rescued := True
					retry
				end
		end
end
