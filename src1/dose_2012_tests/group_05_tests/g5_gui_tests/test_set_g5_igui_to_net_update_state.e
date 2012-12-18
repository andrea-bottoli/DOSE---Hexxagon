note
	description: "Summary description for {TEST_SET_G5_IGUI_TO_NET_PUT_CARDS}."
	author: "JESUS CASTELLI"
	date: "$20/11/2012$"
	revision: "$0.0$"

class
	TEST_SET_G5_IGUI_TO_NET_UPDATE_STATE

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

	target_player: STRING
		-- First parameter of the command to test

	update_info: HASH_TABLE [INTEGER, STRING]
		-- Second parameter of the command to test

feature -- Preparation of Tests

	on_prepare
		-- Initializes the necessary elements
		do
			create gui.make_test
			class_test := gui
		end

feature -- Test positive

--	update_state0
--		-- update_state("JESUS",[[5,"HAND"],[15,"DECK"],[2,"BUY"]])
--		note
--			testing: "G5_IGUI_TO_NET/.update_state"
--		do
--			target_player := "JESUS"
--			update_info.make (3)
--			update_info.put (5,"HAND")
--			update_info.put (15,"DECK")
--			update_info.put (2,"BUY")
--			class_test.update_state (target_player, update_info)
--			assert ("update_state was successful", TRUE)
--		end

feature -- Test negative

	update_state1
		-- update_state("JESUS",[[0,"GHOST"],[4,"DECK"],[0,"BUY"]])
		note
			testing: "G5_IGUI_TO_NET/.update_state"
		local
			rescued: BOOLEAN
		do
			if not rescued then
				target_player := "JESUS"
				update_info.make (3)
				update_info.put (5,"HAND")
				update_info.put (15,"DECK")
				update_info.put (2,"BUY")
				class_test.update_state (target_player, update_info)
			end
			assert ("update_state raised problem", rescued)
			rescue
				if not rescued then
					rescued := TRUE
					retry
				end
		end

end
