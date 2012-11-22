note
	description: "Summary description for {TEST_SET_G5_INET_TO_LOGIC_START_GAME}."
	author: "JESUS CASTELLI"
	date: "$21/11/2012$"
	revision: "$0.0$"

class
	TEST_SET_G5_INET_TO_LOGIC_START_GAME

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

	players: ARRAY [STRING]
		-- Parameter of the command to test

feature -- Preparation of Test

	on_prepare
		-- Initializes the necessary elements
		do
			create gui.make
			gui_to_net := gui
			create net_server.make (1025, 2)
			class_test := net_server
			players.make_empty
		end

feature -- Test positive

	start_game0
		-- start_game(<<"JAIME","SERGIO","JESUS">>)
		note
			testing: "G5_INET_TO_LOGIC/.start_game"
		do
			players := <<"JAIME","SERGIO","JESUS">>
			class_test.start_game (players)
			assert ("start_game was successful", True)
		end

feature -- Test negative

	start_game1
		-- start_game(<<>>)
		note
			testing: "G5_INET_TO_LOGIC/.start_game"
		local
			rescued: BOOLEAN
		do
			if not rescued then
				class_test.start_game (players)
			end
			assert ("start_game raised problem", rescued)
			rescue
				if not rescued then
					rescued := True
					retry
				end
		end
end
