note
	description: "[
		Eiffel tests that can be executed by testing tool.
	]"
	author: "Rio Cuarto8"
	date: "21/11/2012"
	revision: "1.0"
	testing: "type/manual"

class
	G2_LOGIC_CARD_SET_LEVELRIGHT_TESTS

inherit
	EQA_TEST_SET

feature -- Test routines

	TEST_G2_LOGIC_CARD_SET_LEVELRIGHT_TESTS_1
			-- Test 1 - Create a G2_LOGIC_CARD and check set_LevelRight feature.
		note
			testing:  "user/G2"
		local
			logic_card: G2_LOGIC_CARD
			right: INTEGER
		do
			create logic_card.make(true, "element", 1, 1, 1, 1)
			right := 8
			logic_card.set_LevelLeft(right)
			assert ("the number in right has been setted", logic_card.g2_card_levelRight = right)
		end

	-- Negative Test

	TEST_G2_LOGIC_CARD_SET_LEVELRIGHT_TESTS_2
			-- Test 2 - Create a G2_LOGIC_CARD and check set_LevelRight feature.
		note
			testing:  "user/G2"
		local
			logic_card: G2_LOGIC_CARD
			right: INTEGER
			rescued: BOOLEAN
		do
			if not rescued then
				create logic_card.make(true, "element", 1, 1, 1, 1)
				right := 11
				logic_card.set_LevelRight(right)
			end
			assert ("right is out of range", rescued)
		rescue
				if not rescued then
					rescued:= true
				end
				retry
		end

end


