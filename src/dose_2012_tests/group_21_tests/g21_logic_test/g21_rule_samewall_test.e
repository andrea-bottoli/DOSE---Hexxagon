note
	description: "Tests for the {G21_RULE_SAMEWALL} class."
	author: "Jacopo Sirianni"
	date: "$Date$"
	revision: "$Revision$"

class
	G21_RULE_SAMEWALL_TEST

inherit

	EQA_TEST_SET

feature -- Test Routines

	test_samewall_combo -- It tests the methods of G21_RULE_SAMEWALL by placing three cards on the board (combo).

		note
			testing: "covers/{G21_RULE_SAMEWALL}.makeChangeAndUpdate"
			testing: "covers/{G21_RULE_SAMEWALL}.isMakeChange"
			testing: "user/G21"

		local

			samewall: G21_RULE_SAMEWALL

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
			create samewall.make (board)

			-- It does not make much sense to initialize cards with values on only one side, but this is allowed by the contracts.
			create card_1.make
			card_1.settop (10)
			card_1.setright (4)
			create card_2.make
			card_2.settop (10)
			card_2.setleft (8)
			create card_3.make
			card_3.settop (10)
			card_3.setleft (4)
			card_3.setright (8)

			create cell_1.make
			cell_1.setcard (card_1)
			cell_1.setplayernumber(1)

			create cell_2.make
			cell_2.setcard (card_2)
			cell_2.setplayernumber(1)

			create cell_3.make
			cell_3.setcard (card_3)
			cell_3.setplayernumber(0)

			samewall.setcell (1, 1, cell_1)
			assert("Do not allow samewall after the placement of the first card:", not samewall.isMakeChange(1,1,card_1))
			board:=samewall.makechangeandupdate (1, 1)

			samewall.setcell (1, 3, cell_2)
			assert("Do not allow samewall after the placement of the second card:", not samewall.isMakeChange(1,3,card_2))
			board:=samewall.makechangeandupdate (1, 3)

			samewall.setcell (1, 2, cell_3)
			-- Not implemented
			--assert("Allow samewall after the placement of the third card:", samewall.isMakeChange(1,2,card_3))
			board:=samewall.makechangeandupdate (1, 2)

			assert("Flip cards 1 and 2 (combo):", board.item (1,1).playernumber=0 and then board.item (1,2).playernumber=0 and then board.item (1,3).playernumber=0)

		end

	test_same_not_not_samewall -- It tests a case where the samewall rule does not apply because of a missing 'A' near a border.

		note
			testing: "covers/{G21_RULE_SAMEWALL}.makeChangeAndUpdate"
			testing: "covers/{G21_RULE_SAMEWALL}.isMakeChange"
			testing: "user/G21"

		local

			samewall: G21_RULE_SAMEWALL

			card_1: G21_CARD		-- belongs to player 1
			card_2: G21_CARD		-- belongs to player 0

			empty_cell: G21_CELL

			cell_1: G21_CELL
			cell_2: G21_CELL

			board: ARRAY2[G21_CELL]

		do

			create empty_cell.make
			create board.make_filled (empty_cell, 3, 3)
			create samewall.make (board)

			-- It does not make much sense to initialize cards with values on only one side, but this is allowed by the contracts.
			create card_1.make
			card_1.setright (10)
			card_1.setbottom (2)
			create card_2.make
			card_2.setright (5)
			card_2.settop (2)

			create cell_1.make
			cell_1.setcard (card_1)
			cell_1.setplayernumber(1)

			create cell_2.make
			cell_2.setcard (card_2)
			cell_2.setplayernumber(0)

			samewall.setcell (1, 3, cell_1)
			assert("Do not allow same after the placement of the first card:", not samewall.isMakeChange(1,3,card_1))
			board:=samewall.makechangeandupdate (1, 3)

			samewall.setcell (2, 3, cell_2)
			assert("Do not allow same after the placement of the second card:", not samewall.isMakeChange(2,3,card_2))
			board:=samewall.makechangeandupdate (2, 3)

			assert("Flips not executed:", board.item (1,3).playernumber=1 and then board.item (2,3).playernumber=0)

		end

	test_not_samewall -- It tests a case where the samewall rule does not apply because of different touching values.

		note
			testing: "covers/{G21_RULE_SAMEWALL}.makeChangeAndUpdate"
			testing: "covers/{G21_RULE_SAMEWALL}.isMakeChange"
			testing: "user/G21"

		local

			samewall: G21_RULE_SAMEWALL

			card_1: G21_CARD		-- belongs to player 1
			card_2: G21_CARD		-- belongs to player 0

			empty_cell: G21_CELL

			cell_1: G21_CELL
			cell_2: G21_CELL

			board: ARRAY2[G21_CELL]

		do

			create empty_cell.make
			create board.make_filled (empty_cell, 3, 3)
			create samewall.make (board)

			-- It does not make much sense to initialize cards with values on only one side, but this is allowed by the contracts.
			create card_1.make
			card_1.setright (10)
			card_1.setbottom (2)
			create card_2.make
			card_2.setright (10)
			card_2.settop (7)

			create cell_1.make
			cell_1.setcard (card_1)
			cell_1.setplayernumber(1)

			create cell_2.make
			cell_2.setcard (card_2)
			cell_2.setplayernumber(0)

			samewall.setcell (1, 3, cell_1)
			assert("Do not allow same after the placement of the first card:", not samewall.isMakeChange(1,3,card_1))
			board:=samewall.makechangeandupdate (1, 3)

			samewall.setcell (2, 3, cell_2)
			assert("Do not allow same after the placement of the second card:", not samewall.isMakeChange(2,3,card_2))
			board:=samewall.makechangeandupdate (2, 3)

			assert("Flips not executed:", board.item (1,3).playernumber=1 and then board.item (2,3).playernumber=0)

		end

	test_not_samewall_because_same_player -- It tests a case where the samewall rule does not apply because the cards belong to the same player.

		note
			testing: "covers/{G21_RULE_SAMEWALL}.makeChangeAndUpdate"
			testing: "covers/{G21_RULE_SAMEWALL}.isMakeChange"
			testing: "user/G21"

		local

			samewall: G21_RULE_SAMEWALL

			card_1: G21_CARD
			card_2: G21_CARD

			empty_cell: G21_CELL

			cell_1: G21_CELL
			cell_2: G21_CELL

			board: ARRAY2[G21_CELL]

		do

			create empty_cell.make
			create board.make_filled (empty_cell, 3, 3)
			create samewall.make (board)

			-- It does not make much sense to initialize cards with values on only one side, but this is allowed by the contracts.
			create card_1.make
			card_1.setleft (10)
			card_1.setbottom (9)
			create card_2.make
			card_2.setleft(10)
			card_2.settop (9)

			create cell_1.make
			cell_1.setcard (card_1)
			cell_1.setplayernumber(0)

			create cell_2.make
			cell_2.setcard (card_2)
			cell_2.setplayernumber(0)

			samewall.setcell (1, 1, cell_1)
			assert("Do not allow same after the placement of the first card:", not samewall.isMakeChange(1,1,card_1))
			board:=samewall.makechangeandupdate (1, 1)

			samewall.setcell (2, 1, cell_2)
			assert("Do not allow same after the placement of the second card:", not samewall.isMakeChange(2,1,card_2))
			board:=samewall.makechangeandupdate (2, 1)

			assert("Flips not executed:", board.item (1,1).playernumber=0 and then board.item (2,2).playernumber=0)

		end

end
