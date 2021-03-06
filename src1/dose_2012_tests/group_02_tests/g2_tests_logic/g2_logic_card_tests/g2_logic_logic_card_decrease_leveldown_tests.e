note
	description: "[
		Eiffel tests that can be executed by testing tool.
	]"
	author: "RioCuarto8"
	date: "14/12/2012"
	revision: "1.1"
	testing: "type/manual"

class
	G2_LOGIC_LOGIC_CARD_DECREASE_LEVELDOWN_TESTS

inherit
	EQA_TEST_SET

feature -- Test routines

	g2_logic_logic_card_decrease_levelDown_tests
			-- Test  - Check decrease_LevelDown feature.
		note
			testing:  "user/G2"
		local
			logic_card: G2_LOGIC_CARD
			down: Integer
		do
			create logic_card.make(true, "element", 1, 1, 1, 1)
			down:= logic_card.g2_card_leveldown
			logic_card.decrease_leveldown
			assert ("the number in down has been decreased", logic_card.g2_card_leveldown = down - 1)
		end

end


