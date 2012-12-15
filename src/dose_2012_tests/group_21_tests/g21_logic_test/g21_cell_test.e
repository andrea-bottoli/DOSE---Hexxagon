note
	description: "Summary description for {G21_CELL_TEST}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	G21_CELL_TEST

inherit

	EQA_TEST_SET

feature -- Test Routines

	test_make -- It tests the method "make"

		note
			testing: "covers/{G21_CELL}.make"
			testing: "user/G21"
		local

			cell: G21_CELL
			card: G21_CARD

		do

			create cell.make
			assert ("cell created, card.top assigned:", cell.card/=void)

			cell.getCard.setTop(1)
			cell.getCard.setRight(1)
			cell.getCard.setLeft(1)
			cell.getCard.setBottom(1)
			cell.getCard.setElement('a')
			cell.getCard.setCardName("b")
			cell.setPlayerNumber(0)
			cell.setElement('c')


			assert("cell created, isOccupied assigned:", cell.isOccupied=FALSE)
			assert ("cell created, card.top assigned:", cell.card.top=1)
			assert ("cell created, card.right assigned:", cell.card.right=1)
			assert ("cell created, card.left assigned:", cell.card.left=1)
			assert ("cell created, card.bottom assigned:", cell.card.bottom=1)
			assert ("cell created, card.element assigned:", cell.card.element='a')
			assert ("cell created, card.cardName assigned:", cell.card.cardName.is_equal("b")=TRUE)
			assert("cell created, element assigned:", cell.element='c')
			assert("cell created, playernumber assigned:", cell.playernumber=0)

			create card.make
			assert ("card created, not void:", card/=void)
			card.setTop(2)
			card.setRight(2)
			card.setLeft(2)
			card.setBottom(2)
			card.setElement('d')
			card.setCardName("e")

			cell.setcard(card)

			assert("cell created, isOccupied assigned2:", cell.isOccupied=TRUE)
			assert ("cell created, card.top assigned2:", cell.card.top=2)
			assert ("cell created, card.right assigned2:", cell.card.right=2)
			assert ("cell created, card.left assigned2:", cell.card.left=2)
			assert ("cell created, card.bottom assigned2:", cell.card.bottom=2)
			assert ("cell created, card.element assigned2:", cell.card.element='d')
			assert ("cell created, card.cardName assigned2:", cell.card.cardName.is_equal("e")=TRUE)

		end

end


