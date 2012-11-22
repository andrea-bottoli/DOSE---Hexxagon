note
	description: "Summary description for {TEST_DO_COIN_CARD}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	TEST_DO_COIN_CARD

inherit
	EQA_TEST_SET

feature -- Test routines

--Tests the routine get_golds
	test_get_golds

		local
			coin_card: DO_COIN_CARD

		do
			create coin_card.make ("Cooper", "Coin cards", 2,10)
			assert ("checking gold:", coin_card.getgolds = 10)
		end

--Tests the routine do_action
	test_do_action

		local
			coin_card: DO_COIN_CARD

		do
			create coin_card.make ("Cooper", "Coin", 2,10)

			coin_card.doaction("Salvager")

			assert ("checking action:", False)
		end

end
