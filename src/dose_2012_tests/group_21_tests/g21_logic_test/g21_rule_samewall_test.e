note
	description: "Summary description for {G21_RULE_SAMEWALL_TEST}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	G21_RULE_SAMEWALL_TEST

inherit

	EQA_TEST_SET

feature -- Test Routines

	test_isMakeChange -- It tests the method "isMakeChange"

		note
			testing: "covers/{G21_RULE_SAMEWALL}.isMakeChange"
			testing: "user/G21"

		local

			same_wall: G21_RULE_SAMEWALL
			board_object: G21_BOARD
			card_1: G21_CARD
			card_2: G21_CARD
			card_3: G21_CARD

		do

			create board_object.make (0, 0)
			-- create same_wall.make
			create card_1.make
			create card_2.make
			create card_3.make
			board_object.makeplay (1, 2, 0)
			board_object.makeplay (2, 1, 0)
			assert("isMakeChange false:", not same_wall.isMakeChange)

		end

	test_makeChangeAndUpdate -- It tests the method "makeChangeAndUpdate"

		note
			testing: "covers/{G21_RULE_SAMEWALL}.makeChangeAndUpdate"
			testing: "user/G21"

		local

			same_wall: G21_RULE_SAMEWALL
			board_object: G21_BOARD
			card_1: G21_CARD
			card_2: G21_CARD
			card_3: G21_CARD

		do

			create board_object.make (0, 0)
			-- create same_wall.make
			create card_1.make
			create card_2.make
			create card_3.make
			board_object.makeplay (1, 2, 0)
			board_object.makeplay (2, 1, 0)
			assert("makeChangeAndUpdate not possible:", not same_wall.isMakeChange)
			same_wall.makeChangeAndUpdate(2, 2, card_3)
			-- assert on the possession of the cards on the board 	

		end

	test_getIsOpen -- It tests the method "getIsOpen"

		note
			testing: "covers/{G21_RULE_SAMEWALL}.getIsOpen"
			testing: "user/G21"

		local

			same_wall: G21_RULE_SAMEWALL

		do

			-- create same_wall.make
			assert("getIsOpen false:", not same_wall.getIsOpen)

		end

end
