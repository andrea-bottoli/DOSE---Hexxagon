note
	description: "[
		Eiffel tests that can be executed by testing tool.
	]"
	author: "Rio Cuarto8"
	date: "20/11/2012"
	revision: "1.0"
	testing: "type/manual"

class
	G2_LOGIC_LOGIC_SET_STATE_TESTS

inherit

	EQA_TEST_SET

feature -- Test routines

	TEST_G2_LOGIC_LOGIC_SET_STATE_1
			-- Test 1 - Create a G2_LOGIC_LOGIC and check set_state feature.
		note
			testing: "user/G2"
		local
			logic: G2_LOGIC_LOGIC
			a_g2_state: G2_LOGIC_STATE
		do
--			create a_g2_state.make()
--			create logic.make()
--			logic.set_state (a_g2_state)
--			assert ("Create logic with and set the state", a_g2_state.is_equals (logic.g2_state))
			assert ("not_implemented", False)
		end

	-- Negative test

	TEST_G2_LOGIC_LOGIC_SET_STATE_2
			-- Test 2 - Create a G2_LOGIC_LOGIC and check set_state feature with a Void G2_LOGIC_STATE.
		note
			testing: "user/G2"
		local
			logic: G2_LOGIC_LOGIC
			a_g2_state: G2_LOGIC_STATE
			rescued: BOOLEAN
		do
			if (not rescued) then
--				create logic.make()
--				logic.set_state (a_g2_state)
			end
			assert ("not_implemented", False)
--			assert ("Is throw exception ", rescued)
		rescue
			if (not rescued) then
				rescued := True
				retry
			end
		end

end
