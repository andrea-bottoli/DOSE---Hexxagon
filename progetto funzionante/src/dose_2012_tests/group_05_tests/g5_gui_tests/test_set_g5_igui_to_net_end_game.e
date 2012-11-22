note
	description: "Summary description for {TEST_SET_G5_IGUI_TO_NET_PUT_CARDS}."
	author: "JESUS CASTELLI"
	date: "$19/11/2012$"
	revision: "$0.0$"

class
	TEST_SET_G5_IGUI_TO_NET_END_GAME

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

	scores: HASH_TABLE [INTEGER, STRING]
		-- Parameter of the command to test

feature -- Preparation of Tests

	on_prepare
		-- Initializes the necessary elements
		do
			create gui.make
			class_test := gui
		end

feature -- Test positive

	end_game0
		-- end_game([[20,"JAIME"],[29,"SERGIO"],[29,"JESUS"]])
		note
			testing: "G5_IGUI_TO_NET/.end_game"
		do
			scores.make (3)
			scores.put (20,"JAIME")
			scores.put (29,"SERGIO")
			scores.put (29,"JESUS")
			class_test.end_game (scores)
			assert ("end_game makes the punctuation is commensurate", class_test.a_pop_up_end.final_scores.is_equal(scores))
		end

	end_game1
		-- end_game([[31,"JAIME"],[38,"SERGIO"],[-5,"JESUS"]])
		note
			testing: "G5_IGUI_TO_NET/.end_game"
		do
			scores.make (3)
			scores.put (31,"JAIME")
			scores.put (38,"SERGIO")
			scores.put (-5,"JESUS")
			class_test.end_game (scores)
			assert ("end_game makes the punctuation is commensurate", class_test.a_pop_up_end.final_scores.is_equal(scores))
		end

feature -- Test negative

	end_game2
		-- end_game([[18,"JAIME"],[28,"SERGIO"],[29,"JESUS"],[12,"LUCA"],[20,"GABRIELE"],[31,"RICARDO"]])
		note
			testing: "G5_IGUI_TO_NET/.end_game"
		local
			rescued: BOOLEAN
		do
			if not rescued then
				scores.make (6)
				scores.put (18,"JAIME")
				scores.put (28,"SERGIO")
				scores.put (29,"JESUS")
				scores.put (12,"LUCA")
				scores.put (20,"GABRIELE")
				scores.put (31,"RICARDO")
				class_test.end_game (scores)
			end
			assert ("end_game raised problem", rescued)
			rescue
				if not rescued then
					rescued := TRUE
					retry
				end
		end

	end_game3
		-- end_game([[60,VOID]]])
		note
			testing: "G5_IGUI_TO_NET/.end_game"
		local
			rescued: BOOLEAN
		do
			if not rescued then
				scores.make (1)
				scores.put (60,VOID)
				class_test.end_game (scores)
			end
			assert ("end_game raised problem", rescued)
			rescue
				if not rescued then
					rescued := TRUE
					retry
				end
		end

end
