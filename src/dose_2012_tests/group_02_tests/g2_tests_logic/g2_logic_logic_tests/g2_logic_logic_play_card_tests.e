note
	description: "[
		Eiffel tests that can be executed by testing tool.
	]"
	author: "Rio Cuarto8"
	date: "21/11/2012"
	revision: "1.0"
	testing: "type/manual"

class
	G2_LOGIC_LOGIC_PLAY_CARD_TESTS

inherit

	EQA_TEST_SET

feature -- Test routines

	TEST_G2_LOGIC_LOGIC_PLAY_CARD_1
			-- Test 1 - Create a G2_LOGIC_LOGIC and check play_card feature.
		note
			testing: "user/G2"
		local
			logic: G2_LOGIC_LOGIC
			a_card: G2_LOGIC_CARD
			a_x, a_y: INTEGER
		do
--			create a_card.make()
--			create logic.make()
--			a_x:= 1
--			a_y:= 1
--			logic.play_card(a_card,a_x,a_y)
--			assert ("")
			assert ("not_implemented", False)
		end

	TEST_G2_LOGIC_LOGIC_PLAY_CARD_2
			-- Test 2 - Create a G2_LOGIC_LOGIC and check play_card feature.
		note
			testing: "user/G2"
		local
			logic: G2_LOGIC_LOGIC
			a_card: G2_LOGIC_CARD
			a_x, a_y: INTEGER
			rescued: BOOLEAN
		do
			if (not rescued) then
--				create logic.make()
--				a_x:= 1
--				a_y:= 1
--				logic.play_card(a_card,a_x,a_y)
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
