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

		do

			create cell.make
			assert ("cell created, card.top assigned:", cell.card.top=0)
			assert ("cell created, card.right assigned:", cell.card.right=0)
			assert ("cell created, card.left assigned:", cell.card.left=0)
			assert ("cell created, card.bottom assigned:", cell.card.bottom=0)
			assert ("cell created, card.element assigned:", cell.card.element=' ')
			assert ("cell created, card.cardName assigned:", cell.card.cardName=" ")
			assert("cell created, element assigned:", cell.element=' ')
			assert("cell created, isOccupied assigned:", cell.isOccupied=FALSE)

		end

end


