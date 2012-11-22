note
	description: "[
		Eiffel tests that can be executed by testing tool.
	]"
	author: "Rio Cuarto8"
	date: "20/11/2012"
	revision: "1.0"
	testing: "type/manual"

class
	G2_LOGIC_LOGIC_SET_RULES_TESTS

inherit

	EQA_TEST_SET

feature -- Test routines

	TEST_G2_LOGIC_LOGIC_SET_RULES_1
			-- Test 1 - Create a G2_LOGIC_LOGIC and check set_rules feature.
		note
			testing: "user/G2"
		local
			logic: G2_LOGIC_LOGIC
			a_g2_open: BOOLEAN
			b_g2_open: BOOLEAN
			a_g2_same: BOOLEAN
			a_g2_same_wall: BOOLEAN
			a_g2_sudden_death: BOOLEAN
			a_g2_plus: BOOLEAN
			a_g2_combo: BOOLEAN
			a_g2_elemental: BOOLEAN
			a_g2_state: G2_LOGIC_STATE
		do
			b_g2_open := True
--			create logic.make()
--			logic.set_rules (b_g2_open, a_g2_same, a_g2_same_wall, a_g2_sudden_death, a_g2_plus, a_g2_combo, a_g2_elemental)
--			assert ("Create logic and set the open rule", logic.g2_open = b_g2_open)
			assert ("not_implemented", False)
		end

	TEST_G2_LOGIC_LOGIC_SET_RULES_2
			-- Test 2 - Create a G2_LOGIC_LOGIC and check set_rules feature.
		note
			testing: "user/G2"
		local
			logic: G2_LOGIC_LOGIC
			a_g2_open: BOOLEAN
			a_g2_same: BOOLEAN
			b_g2_same: BOOLEAN
			a_g2_same_wall: BOOLEAN
			a_g2_sudden_death: BOOLEAN
			a_g2_plus: BOOLEAN
			a_g2_combo: BOOLEAN
			a_g2_elemental: BOOLEAN
			a_g2_state: G2_LOGIC_STATE
		do
			b_g2_same := True
--			create logic.make()
--			logic.set_rules (a_g2_open, b_g2_same, a_g2_same_wall, a_g2_sudden_death, a_g2_plus, a_g2_combo, a_g2_elemental)
--			assert ("Create logic and set the same rule", logic.g2_same = b_g2_same)
			assert ("not_implemented", False)
		end

	TEST_G2_LOGIC_LOGIC_SET_RULES_3
			-- Test 3 - Create a G2_LOGIC_LOGIC and check set_rules feature.
		note
			testing: "user/G2"
		local
			logic: G2_LOGIC_LOGIC
			a_g2_open: BOOLEAN
			a_g2_same: BOOLEAN
			a_g2_same_wall: BOOLEAN
			b_g2_same_wall: BOOLEAN
			a_g2_sudden_death: BOOLEAN
			a_g2_plus: BOOLEAN
			a_g2_combo: BOOLEAN
			a_g2_elemental: BOOLEAN
			a_g2_state: G2_LOGIC_STATE
		do
			b_g2_same_wall := True
--			create logic.make()
--			logic.set_rules (a_g2_open, a_g2_same, b_g2_same_wall, a_g2_sudden_death, a_g2_plus, a_g2_combo, a_g2_elemental)
--			assert ("Create logic and set the same wall rule", logic.g2_same_wall = b_g2_same_wall)
			assert ("not_implemented", False)
		end

	TEST_G2_LOGIC_LOGIC_SET_RULES_4
			-- Test 4 - Create a G2_LOGIC_LOGIC and check set_rules feature.
		note
			testing: "user/G2"
		local
			logic: G2_LOGIC_LOGIC
			a_g2_open: BOOLEAN
			a_g2_same: BOOLEAN
			a_g2_same_wall: BOOLEAN
			a_g2_sudden_death: BOOLEAN
			b_g2_sudden_death: BOOLEAN
			a_g2_plus: BOOLEAN
			a_g2_combo: BOOLEAN
			a_g2_elemental: BOOLEAN
			a_g2_state: G2_LOGIC_STATE
		do
			b_g2_sudden_death := True
--			create logic.make()
--			logic.set_rules (a_g2_open, a_g2_same, a_g2_same_wall, b_g2_sudden_death, a_g2_plus, a_g2_combo, a_g2_elemental)
--			assert ("Create logic and set the sudden death rule", logic.g2_sudden_death = b_g2_sudden_death)
			assert ("not_implemented", False)
		end

	TEST_G2_LOGIC_LOGIC_SET_RULES_5
			-- Test 5 - Create a G2_LOGIC_LOGIC and check set_rules feature.
		note
			testing: "user/G2"
		local
			logic: G2_LOGIC_LOGIC
			a_g2_open: BOOLEAN
			a_g2_same: BOOLEAN
			a_g2_same_wall: BOOLEAN
			a_g2_sudden_death: BOOLEAN
			a_g2_plus: BOOLEAN
			b_g2_plus: BOOLEAN
			a_g2_combo: BOOLEAN
			a_g2_elemental: BOOLEAN
			a_g2_state: G2_LOGIC_STATE
		do
			b_g2_plus := True
--			create logic.make()
--			logic.set_rules (a_g2_open, a_g2_same, a_g2_same_wall, a_g2_sudden_death, b_g2_plus, a_g2_combo, a_g2_elemental)
--			assert ("Create logic and set the plus rule", logic.g2_plus = b_g2_plus)
			assert ("not_implemented", False)
		end

	TEST_G2_LOGIC_LOGIC_SET_RULES_6
			-- Test 6 - Create a G2_LOGIC_LOGIC and check set_rules feature.
		note
			testing: "user/G2"
		local
			logic: G2_LOGIC_LOGIC
				--rules 1
			a_g2_open: BOOLEAN
			a_g2_same: BOOLEAN
			a_g2_same_wall: BOOLEAN
			a_g2_sudden_death: BOOLEAN
			a_g2_plus: BOOLEAN
			a_g2_combo: BOOLEAN
			b_g2_combo: BOOLEAN
			a_g2_elemental: BOOLEAN
			a_g2_state: G2_LOGIC_STATE
		do
			b_g2_combo := True
--			create logic.make()
--			logic.set_rules (a_g2_open, a_g2_same, a_g2_same_wall, a_g2_sudden_death, a_g2_plus, b_g2_combo, a_g2_elemental)
--			assert ("Create logic and set the combo rule", logic.g2_combo = b_g2_combo)
			assert ("not_implemented", False)
		end

	TEST_G2_LOGIC_LOGIC_SET_RULES_7
			-- Test 7 - Create a G2_LOGIC_LOGIC and check set_rules feature.
		note
			testing: "user/G2"
		local
			logic: G2_LOGIC_LOGIC
				--rules 1
			a_g2_open: BOOLEAN
			a_g2_same: BOOLEAN
			a_g2_same_wall: BOOLEAN
			a_g2_sudden_death: BOOLEAN
			a_g2_plus: BOOLEAN
			a_g2_combo: BOOLEAN
			a_g2_elemental: BOOLEAN
			b_g2_elemental: BOOLEAN
			a_g2_state: G2_LOGIC_STATE
		do
			b_g2_elemental := True
--			create logic.make()
--			logic.set_rules (a_g2_open, a_g2_same, a_g2_same_wall, a_g2_sudden_death, a_g2_plus, a_g2_combo, b_g2_elemental)
--			assert ("Create logic and set the elemental rule", logic.g2_elemental = b_g2_elemental)
			assert ("not_implemented", False)
		end

end
