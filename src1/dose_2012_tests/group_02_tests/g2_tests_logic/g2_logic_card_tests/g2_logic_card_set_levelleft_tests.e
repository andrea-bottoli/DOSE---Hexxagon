note
	description: "[
		Eiffel tests that can be executed by testing tool.
	]"
	author: "Rio Cuarto8"
	date: "21/11/2012"
	revision: "1.0"
	testing: "type/manual"

class
	G2_LOGIC_CARD_SET_LEVELLEFT_TESTS

inherit
	EQA_TEST_SET

feature -- Test routines

	TEST_G2_LOGIC_CARD_SET_LEVELLEFT_TESTS_1
			-- Test 1 - Create a G2_LOGIC_CARD and check set_LevelLeft feature.
		note
			testing:  "user/G2"
		local
			logic_card: G2_LOGIC_CARD
			left: INTEGER
		do
			create logic_card.make(true, "element", 1, 1, 1, 1)
			left := 8
			logic_card.set_LevelLeft(left)
			assert ("the number in left has been setted", logic_card.g2_card_levelLeft = left)
		end

	-- Negative Test

	TEST_G2_LOGIC_CARD_SET_LEVELLEFT_TESTS_2
			-- Test 2 - Create a G2_LOGIC_CARD and check set_LevelLeft feature.
		note
			testing:  "user/G2"
		local
			logic_card: G2_LOGIC_CARD
			left: INTEGER
			rescued: BOOLEAN
		do
			if not rescued then
				create logic_card.make(true, "element", 1, 1, 1, 1)
				left := 11
				logic_card.set_LevelLeft(left)
			end
			assert ("left is out of range", rescued)
		rescue
				if not rescued then
					rescued:= true
				end
				retry
		end

end

