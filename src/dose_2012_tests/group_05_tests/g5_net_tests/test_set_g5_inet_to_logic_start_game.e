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

	players: ARRAY [STRING]
		-- Parameter of the command to test

	table: G5_TABLE
		-- Server Logic for the test class

feature -- Preparation of Test

	on_prepare
		-- Initializes the necessary elements
		do
			create net_server.make (1025, 2)
			class_test := net_server
			create table.make_game_default (3, class_test)
			create players.make_empty
		end

feature -- Test negative: too many players
	-- Fixed by Luca Falsina
	start_game0
		-- start_game(<<"JAIME","SERGIO","JESUS","LUCA","GABRIELE","BINO">>)
		note
			testing: "G5_INET_TO_LOGIC/.start_game"
			testing: "user/G5" -- this is the tag based on the group-prefix for our tests
		local
			rescued: BOOLEAN
		do
			if not rescued then
				players := <<"JAIME","SERGIO","JESUS","LUCA","GABRIELE","BINO">>
				class_test.start_game (players)
			end
			assert ("start_game raised problem", rescued)
			rescue
				if not rescued then
					rescued := True
					retry
				end
		end

feature -- Test negative

	start_game1
		-- start_game(<<>>)
		note
			testing: "G5_INET_TO_LOGIC/.start_game"
			testing: "user/G5" -- this is the tag based on the group-prefix for our tests
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
