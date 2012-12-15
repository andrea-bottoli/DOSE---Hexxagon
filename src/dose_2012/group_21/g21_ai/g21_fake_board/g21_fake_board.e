note
	description: "Summary description for {G21_FAKE_BOARD}."
	author: "Emanuele Del Sozzo"
	date: "28/11/2012"
	revision: "2.0"

-- ALMOST COMPLETE (waiting for logic methods)

class
	G21_FAKE_BOARD 	-- This class is used by G21_HARD_AI when the rule "OPEN" and one of the rules "PLUS", "SAME", or "SAME-WALL" are on.
					--The G21_HARD_AI uses it to see if an AI possible move can be used by the human player to make "PLUS", "SAME", or "SAME-WALL".

create

	make

feature{G21_HARD_AI} -- Attributes

	fake_board: ARRAY2[G21_CELL] -- the copy of the real board used by the Logic component

feature{G21_HARD_AI} -- Creation

	make (logic_board: ARRAY2[G21_CELL]) -- it creates the object G21_FAKE_BOARD by copying the elements of Logic board into the fake_board
		require

			logic_board_valid: logic_board/=void

		local

			row: INTEGER
			column: INTEGER

		do

			create fake_board.make_filled(void, 3, 3)

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

					fake_board.item(row, column):=logic_board.item (row, column).twin

				end

			end

		ensure

			logic_board_valid: logic_board/=void
			logic_board_as_before: logic_board = old logic_board
			fake_board_valid: fake_board/=void
			fake_board_equal_to_logic_board_first_row: equals_cell(fake_board.item(1, 1), logic_board.item(1, 1))=TRUE and then equals_cell(fake_board.item(1, 2), logic_board.item(1, 2))=TRUE and then equals_cell(fake_board.item(1, 3), logic_board.item(1, 3))=TRUE
			fake_board_equal_to_logic_board_second_row: equals_cell(fake_board.item(2, 1), logic_board.item(2, 1))=TRUE and then equals_cell(fake_board.item(2, 2), logic_board.item(2, 2))=TRUE and then equals_cell(fake_board.item(2, 3), logic_board.item(2, 3))=TRUE
			fake_board_equal_to_logic_board_third_row: equals_cell(fake_board.item(3, 1), logic_board.item(3, 1))=TRUE and then equals_cell(fake_board.item(3, 2), logic_board.item(3, 2))=TRUE and then equals_cell(fake_board.item(3, 3), logic_board.item(3, 3))=TRUE

		end

feature{NONE} -- Procedure

	equals_card (first_card: G21_CARD; second_card: G21_CARD): BOOLEAN -- It checks if two cards are equals (two cards are equals even if both are void)

		--require

		do

			result:= (first_card=void and then second_card=void) or else (first_card/=void and then second_card/=void and then first_card.right=second_card.right and then first_card.left=second_card.left and then first_card.top=second_card.top and then first_card.bottom=second_card.bottom and then first_card.element=second_card.element and then first_card.cardName=second_card.cardName)


		ensure

			first_card_not_changed: first_card = old first_card
			second_card_not_changed: second_card = old second_card
			true_result: result=TRUE implies (first_card=void and then second_card=void) or else (first_card/=void and then second_card/=void and then first_card.right=second_card.right and then first_card.left=second_card.left and then first_card.top=second_card.top and then first_card.bottom=second_card.bottom and then first_card.element=second_card.element and then first_card.cardName=second_card.cardName)
			false_result: result=FALSE implies (first_card=void and then second_card/=void) or else (first_card/=void and then second_card=void) or else (first_card.right/=second_card.right or else first_card.left/=second_card.left or else first_card.top/=second_card.top or else first_card.bottom/=second_card.bottom or else first_card.element/=second_card.element or else first_card.cardName/=second_card.cardName)

		end

	equals_cell (first_cell: G21_CELL; second_cell: G21_CELL): BOOLEAN -- It checks if two cells are equals

		require

			first_cell_valid: first_cell/=void
			second_cell_valid: second_cell/=void

		do

			result:= equals_card(first_cell.card, second_cell.card) and then first_cell.element=second_cell.element and then first_cell.isOccupied=second_cell.isOccupied and then first_cell.getplayernumber=second_cell.getplayernumber

		ensure

			first_cell_not_changed: first_cell = old first_cell
			second_cell_not_changed: second_cell = old second_cell
			true_result: result=TRUE implies equals_card(first_cell.card, second_cell.card) and then first_cell.element=second_cell.element and then first_cell.isOccupied=second_cell.isOccupied and then first_cell.getplayernumber=second_cell.getplayernumber
			false_result: result=FALSE implies (not equals_card(first_cell.card, second_cell.card)) or else first_cell.element/=second_cell.element or else first_cell.isOccupied/=second_cell.isOccupied or else first_cell.getplayernumber/=second_cell.getplayernumber

		end

feature{G21_HARD_AI} -- Procedures

	update (logic_board: ARRAY2[G21_CELL]) -- it updates the fake_board with the new changes made in the Logic board

		require

			logic_board_valid: logic_board/=void

		local

			row: INTEGER
			column: INTEGER

		do

			from

				row:= 1

			until

				row>3

			loop

				from

					column:= 1

				until

					column>3

				loop

					if not equals_cell(fake_board.item (row, column), logic_board.item (row, column)) then

						fake_board.item(row, column):=logic_board.item (row, column).twin

					end

				end

			end


		ensure

			logic_board_valid: logic_board/=void
			logic_board_as_before: logic_board = old logic_board
			fake_board_valid: fake_board/=void
			fake_board_equal_to_logic_board_first_row: equals_cell(fake_board.item(1, 1), logic_board.item(1, 1))=TRUE and then equals_cell(fake_board.item(1, 2), logic_board.item(1, 2))=TRUE and then equals_cell(fake_board.item(1, 3), logic_board.item(1, 3))=TRUE
			fake_board_equal_to_logic_board_second_row: equals_cell(fake_board.item(2, 1), logic_board.item(2, 1))=TRUE and then equals_cell(fake_board.item(2, 2), logic_board.item(2, 2))=TRUE and then equals_cell(fake_board.item(2, 3), logic_board.item(2, 3))=TRUE
			fake_board_equal_to_logic_board_third_row: equals_cell(fake_board.item(3, 1), logic_board.item(3, 1))=TRUE and then equals_cell(fake_board.item(3, 2), logic_board.item(3, 2))=TRUE and then equals_cell(fake_board.item(3, 3), logic_board.item(3, 3))=TRUE

		end

	make_fake_move (fake_move: G21_MOVE) -- it makes a fake move and set the parameter fake_move.card into the fake_board at the received fake_move.position

		require

			fake_board_position_available: fake_board.item (fake_move.position.x, fake_move.position.y).isoccupied=FALSE and then fake_board.item (fake_move.position.x, fake_move.position.y).card=void
			card_valid: fake_move.card/=void
			position_valid: fake_move.position/=void and then fake_move.position.x>=1 and then fake_move.position.x<=3 and then fake_move.position.y>=1 and then fake_move.position.y<=3

		do

			fake_board.item (fake_move.position.x, fake_move.position.y).setcard (fake_move.card.twin)
			fake_board.item (fake_move.position.x, fake_move.position.y).setplayernumber (2)

		ensure

			fake_board_valid: fake_board/=void
			card_as_before: equals_card(fake_move.card, old fake_move.card)=true --otherwise card_set might be true if the card has been modified during the function
			card_set: equals_card(fake_board.item(fake_move.position.x, fake_move.position.y).card, fake_move.card)=TRUE and then fake_board.item (fake_move.position.x, fake_move.position.y).isoccupied=TRUE
			position_not_changed: fake_move.position=old fake_move.position and then fake_move.position.x=old fake_move.position.x and then fake_move.position.y=old fake_move.position.y

		end

	remove_fake_move (fake_position: G21_POINT) -- it removes the card in the passed position from the fake board

		require

			fake_board_position_not_available: fake_board.item (fake_position.x, fake_position.y).isoccupied=TRUE and then fake_board.item (fake_position.x, fake_position.y).card/=void
			fake_position_valid: fake_position/=void and then fake_position.x>=1 and then fake_position.x<=3 and then fake_position.y>=1 and then fake_position.y<=3

		local

			empty_cell: G21_CELL

		do

			create empty_cell.make
			empty_cell.setelement (fake_board.item (fake_position.x, fake_position.y).getelement)
			fake_board.item (fake_position.x, fake_position.y):=empty_cell.twin

		ensure

			fake_board_valid: fake_board/=void
			position_as_before: fake_position.equals_position (old fake_position) and then fake_position = old fake_position
			card_removed: fake_board.item(fake_position.x, fake_position.y).card=void and then fake_board.item (fake_position.x, fake_position.y).isoccupied=FALSE

		end

end
