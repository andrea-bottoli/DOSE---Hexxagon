note
	description: "[
		Eiffel tests that can be executed by testing tool.
	]"
	author: "Rio Cuarto8"
	date: "20/11/2012"
	revision: "1.0"
	testing: "type/manual"

class
	G2_LOGIC_LOGIC_SET_NET_TESTS

inherit
	EQA_TEST_SET

feature -- Test routines

	TEST_G2_LOGIC_LOGIC_SET_NET_1
			-- Test 1 - Create a G2_LOGIC_LOGIC and check set_net feature.
		note
			testing: "user/G2"
		local
			logic: G2_LOGIC_LOGIC
			a_net:  G2_NET_INET
		do
--			create a_net.make()
--			create logic.make()
--			logic.set_net (a_net)
--			assert ("Create logic with and set the net", a_net.is_equals (logic.g2_net))
			assert ("not_implemented", False)
		end

	-- Negative test

	TEST_G2_LOGIC_LOGIC_SET_NET_2
			-- Test 2 - Create a G2_LOGIC_LOGIC and check set_state feature with a Void G2_LOGIC_STATE.
		note
			testing: "user/G2"
		local
			logic: G2_LOGIC_LOGIC
			a_net:  G2_NET_INET
			rescued: BOOLEAN
		do
			if (not rescued) then
--				create logic.make()
--				logic.set_net (a_net)
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


