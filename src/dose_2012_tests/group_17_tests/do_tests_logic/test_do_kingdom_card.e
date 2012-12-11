note
	description: "Summary description for {TEST_DO_KINGDOM_CARD}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	TEST_DO_KINGDOM_CARD

inherit
	EQA_TEST_SET

feature -- Test routines

--Tests the routine get_plus_cards
	test_get_plus_cards

		local
			kingdom_card: DO_KINGDOM_CARD

		do
			create kingdom_card.make("Village", "Kingdom card", 4, 3, 2, 1, 0, 0)

			assert ("Check plus cards number", kingdom_card.getpluscards = 3)
		end

--Tests the routine get_actions
	test_get_actions

		local
			kingdom_card: DO_KINGDOM_CARD

		do
			create kingdom_card.make ("Chapel", "Kingdom card", 4, 3, 2, 1, 0, 0)

			assert ("Check actions number", kingdom_card.getactions = 2)
		end


--Tests the routine get_buys
	test_get_buys

		local
			kingdom_card: DO_KINGDOM_CARD

		do
			create kingdom_card.make ("Laboratory", "Kingdom card", 4, 3, 2, 1, 0, 0)

			assert ("Check buys number", kingdom_card.getbuys = 1)
		end

--Tests the routine do_action
	test_do_action

		local
			kingdom_card: DO_KINGDOM_CARD

		do
			create kingdom_card.make ("Smithy", "Kingdom card", 4, 3, 2, 1, 0, 0)

			kingdom_card.doaction ("Smithy")

			assert ("Check do action", False)
		end

end
