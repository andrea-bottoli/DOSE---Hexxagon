note
	description: "[
		Eiffel tests that can be executed by testing tool.
	]"
	author: "RioCuarto8"
	date: "14/12/2012"
	revision: "1.1"
	testing: "type/manual"

class
	G2_LOGIC_LOGIC_CARD_INCREASE_LEVELUP_TESTS

inherit
	EQA_TEST_SET

feature -- Test routines

	g2_logic_logic_card_increase_levelUp_tests
			-- Test  - Check increase_levelUp feature.
		note
			testing:  "user/G2"
		local
			logic_card: G2_LOGIC_CARD
			up: Integer
		do
			create logic_card.make(true, "element", 1, 1, 1, 1)
			up:= logic_card.g2_card_levelup
			logic_card.increase_levelup
			assert ("the number in up has been increased", logic_card.g2_card_levelup = up+1)
		end

end


