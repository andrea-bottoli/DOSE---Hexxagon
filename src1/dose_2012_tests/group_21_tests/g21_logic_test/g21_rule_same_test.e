note
	description: "Tests for the {G21_RULE_SAME_TEST} class."
	author: "Jacopo Sirianni"
	date: "$Date$"
	revision: "$Revision$"

class
	G21_RULE_SAME_TEST

inherit

	EQA_TEST_SET

feature -- Test Routines

	test_same_combo -- It tests the methods of G21_RULE_SAME by placing three cards on the board (combo).

		note
			testing: "covers/{G21_RULE_SAME}.makeChangeAndUpdate"
			testing: "covers/{G21_RULE_SAME}.isMakeChange"
			testing: "user/G21"

		local

			same: G21_RULE_SAME

			card_1: G21_CARD		-- belongs to player 1
			card_2: G21_CARD		-- belongs to player 1
			card_3: G21_CARD		-- belongs to player 0 and flips card_1 and card_2 (combo)

			empty_cell: G21_CELL

			cell_1: G21_CELL
			cell_2: G21_CELL
			cell_3: G21_CELL

			board: ARRAY2[G21_CELL]

		do

			create empty_cell.make
			create board.make_filled (empty_cell, 3, 3)
			create same.make (board)

			-- It does not make much sense to initialize cards with values on only  one side, but this is allowed by the contracts.
			create card_1.make
			card_1.setleft (4)
			create card_2.make
			card_2.settop (1)
			create card_3.make
			card_3.setright (4)
			card_3.setbottom (1)

			create cell_1.make
			cell_1.setcard (card_1)
			cell_1.setplayernumber(1)

			create cell_2.make
			cell_2.setcard (card_2)
			cell_2.setplayernumber(1)

			create cell_3.make
			cell_3.setcard (card_3)
			cell_3.setplayernumber(0)

			board.put (cell_1, 1, 2)
			assert("Do not allow same after the placement of the first card:", not same.isMakeChange(1,2,card_1))
			board.put (cell_2, 2, 1)
			assert("Do not allow same after the placement of the second card:", not same.isMakeChange(2,1,card_2))

			board.put (cell_3, 1, 1)
			assert("Allow same after the placement of the third card:", same.isMakeChange(1,1,card_3))

			board:=same.makechangeandupdate (1, 1)
			assert("Flip cards 1 and 2 (combo):", board.item (2,1).playernumber=0 and then board.item (1,2).playernumber=0)

		end

	test_not_same -- It tests a case where the same rule does not apply.

		note
			testing: "covers/{G21_RULE_SAME}.makeChangeAndUpdate"
			testing: "covers/{G21_RULE_SAME}.isMakeChange"
			testing: "user/G21"

		local

			same: G21_RULE_SAME

			card_1: G21_CARD		-- belongs to player 1
			card_2: G21_CARD		-- belongs to player 0

			empty_cell: G21_CELL

			cell_1: G21_CELL
			cell_2: G21_CELL

			board: ARRAY2[G21_CELL]

		do

			create empty_cell.make
			create board.make_filled (empty_cell, 3, 3)
			create same.make (board)

			-- It does not make much sense to initialize cards with values on only  one side, but this is allowed by the contracts.
			create card_1.make
			card_1.setleft (4)
			create card_2.make
			card_2.setright (1)

			create cell_1.make
			cell_1.setcard (card_1)
			cell_1.setplayernumber(1)

			create cell_2.make
			cell_2.setcard (card_2)
			cell_2.setplayernumber(0)

			board.put (cell_1, 3, 3)
			assert("Do not allow same after the placement of the first card:", not same.isMakeChange(1,2,card_1))
			board:=same.makechangeandupdate (3, 3)
			board.put (cell_2, 3, 2)
			assert("Do not allow same after the placement of the second card:", not same.isMakeChange(2,1,card_2))
			board:=same.makechangeandupdate (3, 2)
			assert("Flips not executed:", board.item (3,3).playernumber=0 and then board.item (3,2).playernumber=0)

		end

	test_not_same_because_same_player -- It tests a case where the same rule does not apply because the cards belong to the same player (and the numbers are the same).

		note
			testing: "covers/{G21_RULE_SAME}.makeChangeAndUpdate"
			testing: "covers/{G21_RULE_SAME}.isMakeChange"
			testing: "user/G21"

		local

			same: G21_RULE_SAME

			card_1: G21_CARD
			card_2: G21_CARD

			empty_cell: G21_CELL

			cell_1: G21_CELL
			cell_2: G21_CELL

			board: ARRAY2[G21_CELL]

		do

			create empty_cell.make
			create board.make_filled (empty_cell, 3, 3)
			create same.make (board)

			-- It does not make much sense to initialize cards with values on only  one side, but this is allowed by the contracts.
			create card_1.make
			card_1.setbottom (9)
			create card_2.make
			card_2.settop (9)

			create cell_1.make
			cell_1.setcard (card_1)
			cell_1.setplayernumber(0)

			create cell_2.make
			cell_2.setcard (card_2)
			cell_2.setplayernumber(0)

			board.put (cell_1, 1, 2)
			assert("Do not allow same after the placement of the first card:", not same.isMakeChange(1,2,card_1))
			board:=same.makechangeandupdate (1, 2)
			board.put (cell_2, 2, 2)
			assert("Do not allow same after the placement of the second card:", not same.isMakeChange(2,1,card_2))
			board:=same.makechangeandupdate (2, 2)
			assert("Flips not executed:", board.item (1,2).playernumber=0 and then board.item (2,2).playernumber=0)

		end

end
