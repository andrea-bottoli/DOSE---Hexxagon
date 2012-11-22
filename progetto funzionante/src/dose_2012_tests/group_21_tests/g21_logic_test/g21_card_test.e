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
			assert ("card created, top assigned:", card.top=0)
			assert ("card created, right assigned:", card.right=0)
			assert ("card created, left assigned:", card.left=0)
			assert ("card created, bottom assigned:", card.bottom=0)
			assert ("card created, element assigned:", card.element=' ')
			assert ("card created, cardName assigned:", card.cardName=" ")

		end

end
