note
	description: "Summary description for {TEST_SET_G5_IGUI_TO_NET}."
	author: "JESUS CASTELLI"
	date: "$19/11/2012$"
	revision: "$0.1$"

class
	TEST_SET_G5_IGUI_TO_NET_START_GAME

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

	players_name: ARRAY [STRING]
		-- First parameter of the command to test

	my_name: STRING
		-- Second parameter of the command to test

feature -- Preparation of Tests

	on_prepare
		-- Initializes the necessary elements
		do
			create gui.make
			class_test := gui
			create players_name.make_empty
		end

feature -- Test positive

	test_start_game0
		-- start_game(["PEDRO","SANDRA","DIEGO"],"DIEGO")
		note
			testing: "G5_IGUI_TO_NET/.start_game"
		do
			players_name := <<"PEDRO","SANDRA","DIEGO">>
			my_name := "DIEGO"
			class_test.start_game (players_name, my_name)
			assert ("start game with 3 players?", class_test.main_view.amount_of_players = 3)
		end

feature -- Test negative

	test_start_game1
		-- Valid number of players
		note
			testing: "G5_IGUI_TO_NET/.start_game"
		local
			rescued: BOOLEAN
		do
			if not rescued then
				players_name := <<"JAIME","RUTH","SERGIO","JESUS","LUCA","GABRIELE","RICARDO">>
				my_name := "JESUS"
				class_test.start_game (players_name, my_name)
			end
			assert ("Start game with 8 players raised problem", rescued)
			rescue
				if not rescued then
					rescued := TRUE
					retry
				end
		end

	test_start_game2
		-- "my_name" not this in "players_name"
		note
			testing: "G5_IGUI_TO_NET/.start_game"
		local
			rescued: BOOLEAN
		do
			if not rescued then
				players_name := <<"JAIME","RUTH","SERGIO","JESUS">>
				my_name := "GHOST"
				class_test.start_game (players_name, my_name)
			end
			assert ("Start game with 'my_name' out of 'players_name' raised problem", rescued)
			rescue
				if not rescued then
					rescued := TRUE
					retry
				end
		end

	test_start_game3
		-- Parameter: My_name = VOID
		note
			testing: "G5_IGUI_TO_NET/.start_game"
		local
			rescued: BOOLEAN
		do
			if not rescued then
				players_name := <<"JAIME","RUTH","SERGIO","JESUS">>
				my_name := VOID
				class_test.start_game (players_name, my_name)
			end
			assert ("Start game with 'my_name' = VOID raised problem", rescued)
			rescue
				if not rescued then
					rescued := TRUE
					retry
				end
		end

end
