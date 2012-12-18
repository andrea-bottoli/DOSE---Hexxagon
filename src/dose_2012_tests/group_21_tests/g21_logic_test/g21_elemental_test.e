note
	description: "Tests for {G21_ELEMENTAL} class."
	author: "Jacopo Sirianni"
	date: "$Date$"
	revision: "$Revision$"

class
	G21_ELEMENTAL_TEST

inherit

	EQA_TEST_SET

feature -- Test Routines

	test_fillBoardWithElements -- It tests that at least an element set is added to a cell of the board.

		note
			testing: "covers/{G21_ELEMENTAL}.fillBoardWithElements"
			testing: "user/G21"

		local

			elemental: G21_ELEMENTAL

			board: ARRAY2[G21_CELL]

			empty_cell: G21_CELL

			row: INTEGER
			column: INTEGER

			element_found: BOOLEAN

		do

			create empty_cell.make
			create board.make_filled (empty_cell, 3, 3)
			create elemental.make (board)

			elemental.fillboardwithelements

			element_found:=false

			from
				row:=1
			until
				row>3
			loop
				from
					column:=1
				until
					column>3
				loop
					if(elemental.gameboard.item (row, column).element='f' or else elemental.gameboard.item (row, column).element='i' or else elemental.gameboard.item (row, column).element='t' or else elemental.gameboard.item (row, column).element='e' or else elemental.gameboard.item (row, column).element='w' or else elemental.gameboard.item (row, column).element='n' or else elemental.gameboard.item (row, column).element='p' or else elemental.gameboard.item (row, column).element='h') then
						element_found:=true
					end
					column:=column+1
				end
				row:=row+1
			end

			assert("Element found in the board: ", element_found)

		end

	test_elemental_increment -- It tests the flip by placing two cards with the same values. The card which causes the flip takes advantage on the increment of its values.

		note
			testing: "covers/{G21_ELEMENTAL}.makeChangeAndUpdate"
			testing: "covers/{G21_ELEMENTAL}.isMakeChange"
			testing: "user/G21"

		local

			elemental: G21_ELEMENTAL

			card_1: G21_CARD		-- belongs to player 1
			card_2: G21_CARD		-- belongs to player 0 (flips card_1 using the elemental rule)

			empty_cell: G21_CELL

			cell_1: G21_CELL
			cell_2: G21_CELL

			board: ARRAY2[G21_CELL]

		do

			create empty_cell.make
			create board.make_filled (empty_cell, 3, 3)
			create elemental.make (board)
			elemental.gameboard.item (2, 2).setelement ('f')

			-- It does not make much sense to initialize cards with values on only one side, but this is allowed by the contracts.
			create card_1.make
			card_1.setleft (5)

			create card_2.make
			card_2.setright (5)
			card_2.setelement ('f')

			create cell_1.make
			cell_1.setcard (card_1)
			cell_1.setplayernumber(1)

			create cell_2.make
			cell_2.setcard (card_2)
			cell_2.setplayernumber(0)

			elemental.setcell (2, 3, cell_1)
			assert("Do not allow elemental after the placement of the first card:", not elemental.isMakeChange(2,3,card_1))
			board:=elemental.makechangeandupdate (2, 3)

			elemental.setcell (2, 2, cell_2)
			-- Not implemented
			--assert("Allow elemental after the placement of the second card:", elemental.isMakeChange(2,2,card_2))
			board:=elemental.makechangeandupdate (2, 2)

			assert("Flip card_1:", board.item (2,2).playernumber=0 and then board.item (2,3).playernumber=0)

		end

	test_elemental_decrement -- It tests the flip by placing two cards with the same values. The card which causes the flip takes advantage on the decrement of the values of the other card.

		note
			testing: "covers/{G21_ELEMENTAL}.makeChangeAndUpdate"
			testing: "covers/{G21_ELEMENTAL}.isMakeChange"
			testing: "user/G21"

		local

			elemental: G21_ELEMENTAL

			card_1: G21_CARD		-- belongs to player 1
			card_2: G21_CARD		-- belongs to player 0 (flips card_1 using the elemental rule)

			empty_cell: G21_CELL

			cell_1: G21_CELL
			cell_2: G21_CELL

			board: ARRAY2[G21_CELL]

		do

			create empty_cell.make
			create board.make_filled (empty_cell, 3, 3)
			create elemental.make (board)
			elemental.gameboard.item (2, 3).setelement ('t')

			-- It does not make much sense to initialize cards with values on only one side, but this is allowed by the contracts.
			create card_1.make
			card_1.setleft (5)
			card_1.setelement ('e')

			create card_2.make
			card_2.setright (5)

			create cell_1.make
			cell_1.setcard (card_1)
			cell_1.setplayernumber(1)

			create cell_2.make
			cell_2.setcard (card_2)
			cell_2.setplayernumber(0)

			elemental.setcell (2, 3, cell_1)
			assert("Do not allow elemental after the placement of the first card:", not elemental.isMakeChange(2,3,card_1))
			board:=elemental.makechangeandupdate (2, 3)

			elemental.setcell (2, 2, cell_2)
			-- Not implemented
			--assert("Allow elemental after the placement of the second card:", elemental.isMakeChange(2,2,card_2))
			board:=elemental.makechangeandupdate (2, 2)

			assert("Flip card_1:", board.item (2,2).playernumber=0 and then board.item (2,3).playernumber=0)

		end

	test_elemental_with_same -- In the case in which another rule between same (used in this test), samewall or plus is active, the elemental rule has no effect.

		note
			testing: "covers/{G21_ELEMENTAL}.makeChangeAndUpdate"
			testing: "covers/{G21_ELEMENTAL}.isMakeChange"
			testing: "user/G21"

		local

			elemental: G21_ELEMENTAL

			same: G21_RULE_SAME

			card_1: G21_CARD		-- belongs to player 1
			card_2: G21_CARD		-- belongs to player 0 (flips card_1 using the same rule)

			empty_cell: G21_CELL

			cell_1: G21_CELL
			cell_2: G21_CELL

			board: ARRAY2[G21_CELL]

		do

			create empty_cell.make
			create board.make_filled (empty_cell, 3, 3)
			create same.make (board)
			create elemental.make (board)
			elemental.gameboard.item (2, 3).setelement ('t')

			-- It does not make much sense to initialize cards with values on only one side, but this is allowed by the contracts.
			create card_1.make
			card_1.setleft (5)
			card_1.setelement ('t')

			create card_2.make
			card_2.setright (5)

			create cell_1.make
			cell_1.setcard (card_1)
			cell_1.setplayernumber(1)

			create cell_2.make
			cell_2.setcard (card_2)
			cell_2.setplayernumber(0)

			elemental.setcell (2, 3, cell_1)
			same.setcell (2, 3, cell_1)
			assert("Do not allow elemental after the placement of the first card:", not elemental.isMakeChange(2,3,card_1))
			board:=elemental.makechangeandupdate (2, 3)
			board:=same.makechangeandupdate (2, 3)

			board.put (cell_2, 2, 2)
			elemental.setcell (2, 2, cell_2)
			same.setcell (2, 2, cell_2)
			assert("Do not allow elemental after the placement of the second card:", not elemental.isMakeChange(2,2,card_2))
			board:=elemental.makechangeandupdate (2, 2)
			board:=same.makechangeandupdate (2, 2)

			assert("Flip card_1:", board.item (2,2).playernumber=0 and then board.item (2,3).playernumber=0)

		end

	test_not_elemental_because_same_player -- It tests a case where the elemental rule does not apply because the cards belong to the same player.

		note
			testing: "covers/{G21_ELEMENTAL}.makeChangeAndUpdate"
			testing: "covers/{G21_ELEMENTAL}.isMakeChange"
			testing: "user/G21"

		local

			elemental: G21_ELEMENTAL

			card_1: G21_CARD
			card_2: G21_CARD

			empty_cell: G21_CELL

			cell_1: G21_CELL
			cell_2: G21_CELL

			board: ARRAY2[G21_CELL]

		do

			create empty_cell.make
			create board.make_filled (empty_cell, 3, 3)
			create elemental.make (board)

			board.item (2, 2).setelement ('h')

			-- It does not make much sense to initialize cards with values on only one side, but this is allowed by the contracts.
			create card_1.make
			card_1.setleft (5)

			create card_2.make
			card_2.setright (5)
			card_2.setelement ('h')

			create cell_1.make
			cell_1.setcard (card_1)
			cell_1.setplayernumber(1)

			create cell_2.make
			cell_2.setcard (card_2)
			cell_2.setplayernumber(1)

			elemental.setcell (2, 3, cell_1)
			assert("Do not allow elemental after the placement of the first card:", not elemental.isMakeChange(2,3,card_1))
			board:=elemental.makechangeandupdate (2, 3)

			board.put (cell_2, 2, 2)
			elemental.setcell (2, 2, cell_2)
			assert("Do not allow elemental after the placement of the second card:", not elemental.isMakeChange(2,2,card_2))
			board:=elemental.makechangeandupdate (2, 2)

			assert("Flips not executed:", board.item (2,2).playernumber=1 and then board.item (2,3).playernumber=1)

		end

end
