note
	description: "[
		Eiffel tests that can be executed by testing tool.
	]"
	author: "Rio Cuarto8"
	date: "16/12/2012"
	revision: "1.1"
	testing: "type/manual"

class
	G2_LOGIC_CARD_SET_LEVELUP_TESTS

inherit
	EQA_TEST_SET

feature -- Test routines

	TEST_G2_LOGIC_CARD_SET_LEVELUP_TESTS_1
			-- Test 1 - Create a G2_LOGIC_CARD and check set_LevelUp feature.
		note
			testing:  "user/G2"
		local
			logic_card: G2_LOGIC_CARD
			up: INTEGER
		do
			create logic_card.make(true, "element", 1, 1, 1, 1)
			up := 8
			logic_card.set_LevelUp(up)
			assert ("the number in up has been setted", logic_card.g2_card_levelUp = up)
		end

	-- Negative Test

	TEST_G2_LOGIC_CARD_SET_LEVELUP_TESTS_2
			-- Test 2 - Create a G2_LOGIC_CARD and check set_LevelUp feature.
		note
			testing:  "user/G2"
		local
			logic_card: G2_LOGIC_CARD
			up: INTEGER
			rescued: BOOLEAN
		do
			if not rescued then
				create logic_card.make(true, "element", 1, 1, 1, 1)
				up := 11
				logic_card.set_LevelUp(up)
				rescued:= logic_card.g2_card_levelup>=1 and logic_card.g2_card_levelup<=10
			end
			assert ("up is out of range", rescued)
		rescue
				if not rescued then
					rescued:= true
				end
				retry
		end


end


