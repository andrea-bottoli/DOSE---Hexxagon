note
	description: "Summary description for {TEST_DO_VICTORY_CARD}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	TEST_DO_VICTORY_CARD

inherit
	EQA_TEST_SET

feature -- Test routines

--Tests the routine get_victory_points
	test_get_victory_points

		local
			victory_card: DO_VICTORY_CARD

		do
			create victory_card.make("name","type", -5, -10)
			assert ("checking cost:", victory_card.getcost.to_integer = -5)
			assert ("checking type:", victory_card.gettype = "type")
			assert ("checking name:", victory_card.getname = "name")
			assert ("checking victory points:", victory_card.getvictorypoints = -10)
		end

end
