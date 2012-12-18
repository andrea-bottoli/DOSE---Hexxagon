note
	description: "Summary description for {TEST_SET_G5_IGUI_TO_NET_PUT_CARDS}."
	author: "JESUS CASTELLI"
	date: "$19/11/2012$"
	revision: "$0.0$"

class
	TEST_SET_G5_IGUI_TO_NET_UPDATE_SUPPLY

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

	supply_state: HASH_TABLE [INTEGER, STRING]
		-- parameter of the command to test

feature -- Preparation of Tests

	on_prepare
		-- Initializes the necessary elements
		do
			create gui.make_test
			class_test := gui
		end

feature -- Test positive

--	update_supply0
--		-- update_supply([[3,"K6"],[7,"T3"]])
--		note
--			testing: "G5_IGUI_TO_NET/.update_supply"
--		do
--			supply_state.make (2)
--			supply_state.put (3, "K6")
--			supply_state.put (7, "T3")
--			class_test.update_supply (supply_state)
--			assert ("update_supply Supply updated correctly", class_test.main_view.supply_state.is_equal(supply_state))
--		end

feature -- Test negative

	update_supply1
		-- update_supply([[1,VOID],[2,"V2"]])
		note
			testing: "G5_IGUI_TO_NET/.update_supply"
		local
			rescued: BOOLEAN
		do
			if not rescued then
				supply_state.make (2)
				supply_state.put (1, VOID)
				supply_state.put (4, "V2")
				class_test.update_supply (supply_state)
			end
			assert ("Put VOID cards in HAND raised problem", rescued)
			rescue
				if not rescued then
					rescued := TRUE
					retry
				end
		end

	update_supply2
		-- update_supply([[11,"T1"],[30,"K16"]]))
		note
			testing: "G5_IGUI_TO_NET/.update_supply"
		local
			rescued: BOOLEAN
		do
			if not rescued then
				supply_state.make (2)
				supply_state.put (11, "T1")
				supply_state.put (30, "K16")
				class_test.update_supply (supply_state)
			end
			assert ("Put Cards in PLAY raised problem", rescued)
			rescue
				if not rescued then
					rescued := TRUE
					retry
				end
		end

	update_supply3
		-- update_supply([[-7,"V3"],[3,"K11"]]))
		note
			testing: "G5_IGUI_TO_NET/.update_supply"
		local
			rescued: BOOLEAN
		do
			if not rescued then
				supply_state.make (2)
				supply_state.put (-7, "V3")
				supply_state.put (3, "K11")
				class_test.update_supply (supply_state)
			end
			assert ("Put Cards in PLAY raised problem", rescued)
			rescue
				if not rescued then
					rescued := TRUE
					retry
				end
		end
end
