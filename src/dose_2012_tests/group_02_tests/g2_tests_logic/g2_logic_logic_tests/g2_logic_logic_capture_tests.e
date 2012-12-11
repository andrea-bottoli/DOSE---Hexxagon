note
	description: "[
		Eiffel tests that can be executed by testing tool.
	]"
	author: "Rio Cuarto8"
	date: "21/11/2012"
	revision: "1.0"
	testing: "type/manual"

class
	G2_LOGIC_LOGIC_CAPTURE_TESTS

inherit
	EQA_TEST_SET

feature -- Test routines

	TEST_G2_LOGIC_LOGIC_CAPTURE_1
			-- Test 1 - Create a G2_LOGIC_LOGIC and check capture feature.
		note
			testing:  "user/G2"
		local
			logic: G2_LOGIC_LOGIC
			a_card: G2_LOGIC_CARD
		do
--			create a_card.make()
--			create logic.make()
--			logic.capture(a_card)
--			assert ("")
			assert ("not_implemented", False)
		end

		-- Negative Test

		TEST_G2_LOGIC_LOGIC_CAPTURE_2
				-- Test 2 - Create a G2_LOGIC_LOGIC and check capture feature.
			note
				testing:  "user/G2"
			local
				logic: G2_LOGIC_LOGIC
				a_card: G2_LOGIC_CARD
				rescued: BOOLEAN
		do
			if (not rescued) then
--				create logic.make()
--				logic.capture(a_card)
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


