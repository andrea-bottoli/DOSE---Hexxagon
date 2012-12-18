note
	description: "Summary description for {TEST_SET_G5_INET_TO_LOGIC_END_GAME}."
	author: "JESUS CASTELLI"
	date: "$21/11/2012$"
	revision: "$0.0$"

class
	TEST_SET_G5_INET_TO_LOGIC_END_GAME

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

	scores: HASH_TABLE[INTEGER, STRING]
		-- Parameter of the command to test

feature -- Preparation of Test

	on_prepare
		-- Initializes the necessary elements
		do
			create gui.make_test
			gui_to_net := gui
			create net_server.make (1025, 2)
			class_test := net_server
		end

feature -- Test negative: not enough players

	end_game0
		-- end_game ([[35,"JESUS"]])
		note
			testing: "G5_INET_TO_LOGIC/.end_game"
			testing: "user/G5" -- this is the tag based on the group-prefix for our tests
		local
			rescued: BOOLEAN
		do
			if not rescued then
				scores.make (5)
				scores.put (35,"JESUS")
--				scores.put (38,"JAIME")
--				scores.put (26,"SERGIO")
--				scores.put (20,"RUTH")
--				scores.put (33,"GABRIELE")
				class_test.end_game (scores)
			end
			assert ("end_game raised problem", rescued)
			rescue
				if not rescued then
					rescued := True
					retry
				end
		end

feature -- Test negative: too much players

	end_game1
		-- end_game ([[35,"JESUS"],[38,"JAIME"],[26,"SERGIO"],[[20,"RUTH"],[33,"GABRIELE"]])
		note
			testing: "G5_INET_TO_LOGIC/.end_game"
			testing: "user/G5" -- this is the tag based on the group-prefix for our tests
		local
			rescued: BOOLEAN
		do
			if not rescued then
				scores.make (5)
				scores.put (35,"JESUS")
				scores.put (38,"JAIME")
				scores.put (26,"SERGIO")
				scores.put (20,"RUTH")
				scores.put (33,"GABRIELE")
				class_test.end_game (scores)
			end
			assert ("end_game raised problem", rescued)
			rescue
				if not rescued then
					rescued := True
					retry
				end
		end
end
