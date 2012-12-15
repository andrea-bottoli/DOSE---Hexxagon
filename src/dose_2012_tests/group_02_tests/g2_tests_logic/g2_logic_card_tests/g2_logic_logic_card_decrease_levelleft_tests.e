note
	description: "[
		Eiffel tests that can be executed by testing tool.
	]"
	author: "RioCuarto8"
	date: "14/12/2012"
	revision: "1.1"
	testing: "type/manual"

class
	G2_LOGIC_LOGIC_CARD_DECREASE_LEVELLEFT_TESTS

inherit
	EQA_TEST_SET

feature -- Test routines

	g2_logic_logic_card_decrease_levelLeft_tests
			-- Test  - Check decrease_LevelLeft feature.
		note
			testing:  "user/G2"
		local
			logic_card: G2_LOGIC_CARD
			left: Integer
		do
			create logic_card.make(true, "element", 1, 1, 1, 1)
			left:= logic_card.g2_card_levelleft
			logic_card.decrease_levelleft
			assert ("the number in left has been decreased", logic_card.g2_card_levelleft = left-1)
		end

end


