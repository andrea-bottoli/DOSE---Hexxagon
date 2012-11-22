note
	description: "Summary description for {TEST_SET_G5_MAIN_VIEW_SET_SUPPLY_STATE}."
	author: "team RioCuarto 4"
	date: "$Date$"
	revision: "$Revision$"

class
	TEST_SET_G5_MAIN_VIEW_SET_SUPPLY_STATE

inherit

	EQA_TEST_SET
		redefine
			on_prepare
		end

feature {NONE}

	main_view: G5_MAIN_VIEW

	players_name: ARRAY [STRING]

	my_name_in_the_match: STRING

	on_prepare
		do
			players_name := <<"ruth", "jaime", "jesus">>
			my_name_in_the_match := "sergio"
			main_view.make (players_name, my_name_in_the_match)
			main_view.supply_state.make (17)
		end

feature -- test routines

	test_set_supply_state_0
			-- check set supply state
		note
			testing: "G5_MAIN_VIEW/set_supply_state"
		local
			the_supply: HASH_TABLE [INTEGER, STRING]
		do
			the_supply.make (17)
			the_supply.put (60, "T1")
			the_supply.put (40, "T2")
			the_supply.put (30, "T3")
			the_supply.put (12, "V1")
			the_supply.put (12, "V2")
			the_supply.put (12, "V3")
			the_supply.put (10, "K9")
			the_supply.put (10, "K22")
			the_supply.put (10, "K25")
			the_supply.put (10, "K12")
			the_supply.put (10, "K11")
			the_supply.put (10, "K13")
			the_supply.put (10, "T15")
			the_supply.put (10, "K16")
			the_supply.put (10, "T17")
			the_supply.put (10, "K20")
			the_supply.put (30, "C1")
			main_view.set_supply_state (the_supply)
			assert (" the supply state was set correctly with 17 elements for game initial of 4 players", the_supply.count = 17 and main_view.supply_state.is_equal (the_supply))
		end

	test_set_supply_state_1
			--check set supply state
		note
			testing: "G5_MAIN_VIEW/set_supply_state"
		local
			the_supply: HASH_TABLE [INTEGER, STRING]
		do
			main_view.supply_state.put (60, "T1")
			main_view.supply_state.put (40, "T2")
			main_view.supply_state.put (30, "T3")
			main_view.supply_state.put (12, "V1")
			main_view.supply_state.put (12, "V2")
			main_view.supply_state.put (12, "V3")
			main_view.supply_state.put (10, "K4")
			main_view.supply_state.put (10, "K22")
			main_view.supply_state.put (10, "K25")
			main_view.supply_state.put (10, "K12")
			main_view.supply_state.put (10, "K11")
			main_view.supply_state.put (10, "K13")
			main_view.supply_state.put (10, "T15")
			main_view.supply_state.put (10, "K16")
			main_view.supply_state.put (10, "T17")
			main_view.supply_state.put (10, "K20")
			main_view.supply_state.put (30, "C1")
			the_supply.make (17)
			the_supply.put (12, "T1")
			the_supply.put (20, "T2")
			the_supply.put (10, "T3")
			the_supply.put (4, "V1")
			the_supply.put (5, "V2")
			the_supply.put (7, "V3")
			the_supply.put (8, "K4")
			the_supply.put (5, "K22")
			the_supply.put (3, "K25")
			the_supply.put (1, "K12")
			the_supply.put (5, "K11")
			the_supply.put (7, "K13")
			the_supply.put (8, "T15")
			the_supply.put (2, "K16")
			the_supply.put (2, "T17")
			the_supply.put (8, "K20")
			the_supply.put (3, "C1")
			main_view.set_supply_state (the_supply)
			assert (" the supply state was set correctly with 17 elements", the_supply.count = 17 and main_view.supply_state.is_equal (the_supply))
		end

	test_set_supply_state_2
			--test negative, amount of supply elements is invalid
		note
			testing: "G5_MAIN_VIEW/set_supply_state"
		local
			the_supply: HASH_TABLE [INTEGER, STRING]
			rescued: BOOLEAN
		do
			if not rescued then
				the_supply.make (4)
				the_supply.put (60, "T1")
				the_supply.put (40, "T2")
				the_supply.put (30, "T3")
				the_supply.put (12, "V1")
				main_view.set_supply_state (the_supply)
			end
			assert ("amount of supply elements is invalid", rescued)
		rescue
			if not rescued then
				rescued := True
				retry
			end
		end

end
