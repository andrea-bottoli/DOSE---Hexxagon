note
	description: "Summary description for {G21_CARD_TEST}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	G21_CARD_TEST

inherit

	EQA_TEST_SET

feature -- Test Routines

	test_make -- It tests the method "make"

		note
			testing: "covers/{G21_CARD}.make"
			testing: "user/G21"

		local
				card: G21_CARD

		do

			create card.make
			assert ("card created, not void:", card/=void)
			card.setTop(1)
			card.setRight(1)
			card.setLeft(1)
			card.setBottom(1)
			card.setElement('a')
			card.setCardName("b")

			assert ("card created, top assigned:", card.top=1)
			assert ("card created, right assigned:", card.right=1)
			assert ("card created, left assigned:", card.left=1)
			assert ("card created, bottom assigned:", card.bottom=1)
			assert ("card created, element assigned:", card.element='a')
			assert ("card created, cardName assigned:", card.cardName.is_equal("b")=TRUE)

		end

end
