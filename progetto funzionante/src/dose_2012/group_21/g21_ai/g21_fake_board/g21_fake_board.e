note
	description: "Summary description for {G21_FAKE_BOARD}."
	author: "Emanuele Del Sozzo"
	date: "17/11/2012"
	revision: "1.6"

class
	G21_FAKE_BOARD 	-- This class is used by G21_HARD_AI when the rule "OPEN" and one of the rules "PLUS", "SAME", or "SAME-WALL" are on.
					--The G21_HARD_AI uses it to see if an AI possible move can be used by the human player to make "PLUS", "SAME", or "SAME-WALL".

create

	make

feature{G21_HARD_AI} -- Attributes

	fake_board: ARRAY2[G21_CELL] -- the copy of the real board used by the Logic component

feature{NONE} -- Creation

	make (logic_board: ARRAY[ARRAY[G21_CELL]]) -- it creates the object G21_FAKE_BOARD by copying the elements of Logic board into the fake_board
		require

			logic_board_valid: logic_board/=void

		local

			row: INTEGER
			column: INTEGER
			cell: G21_CELL
			default_cell: G21_CELL

		do
			
			create default_cell.make
			create fake_board.make_filled(default_cell, 3, 3)

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

					--create cell.make  It will be used when the egyptian team will implement the method cell.make
					fake_board.item(row, column):=cell

				end

			end


--I can have only one cycle where I create any element of fake_board by copying the elements of logic_board

--			--insert values into fake_board
--			from
--				row:=1
--			until
--				row>3
--			loop
--				from
--					column:=1
--				until
--					column>3
--				loop
--					if logic_board.item(row)/=void and then logic_board.item(row).item(column)/=void and then logic_board.item(row).item(column)/=void
--						then
--						-- create cell.make() ??????????????????????
--						fake_board.item(row).put( cell,column)
--					end
--				end
--			end

		ensure
			logic_board_valid: logic_board/=void
			logic_board_as_before: logic_board = old logic_board
			fake_board_valid: fake_board/=void
			fake_board_equal_to_logic_board_first_row: equals_cell(fake_board.item(1, 1), logic_board.item(1).item(1))=TRUE and then equals_cell(fake_board.item(1, 2), logic_board.item(1).item(2))=TRUE and then equals_cell(fake_board.item(1, 3), logic_board.item(1).item(3))=TRUE
			fake_board_equal_to_logic_board_second_row: equals_cell(fake_board.item(2, 1), logic_board.item(2).item(1))=TRUE and then equals_cell(fake_board.item(2, 2), logic_board.item(2).item(2))=TRUE and then equals_cell(fake_board.item(2, 3), logic_board.item(2).item(3))=TRUE
			fake_board_equal_to_logic_board_third_row: equals_cell(fake_board.item(3, 1), logic_board.item(3).item(1))=TRUE and then equals_cell(fake_board.item(3, 2), logic_board.item(3).item(2))=TRUE and then equals_cell(fake_board.item(3, 3), logic_board.item(3).item(3))=TRUE
		end

feature{NONE} -- Procedure

	equals_card (first_card: G21_CARD; second_card: G21_CARD): BOOLEAN -- It checks if two cards are equals

		require

			first_card_valid: first_card/=void
			second_card_valid: second_card/=void

		do

			result:= first_card.right=second_card.right and then first_card.left=second_card.left and then first_card.top=second_card.top and then first_card.bottom=second_card.bottom and then first_card.element=second_card.element and then first_card.cardName=second_card.cardName

		ensure

			first_card_not_changed: first_card = old first_card
			second_card_not_changed: second_card = old second_card
			true_result: result=TRUE implies first_card.right=second_card.right and then first_card.left=second_card.left and then first_card.top=second_card.top and then first_card.bottom=second_card.bottom and then first_card.element=second_card.element and then first_card.cardName=second_card.cardName
			false_result: result=FALSE implies first_card.right/=second_card.right or else first_card.left/=second_card.left or else first_card.top/=second_card.top or else first_card.bottom/=second_card.bottom or else first_card.element/=second_card.element or else first_card.cardName/=second_card.cardName

		end

	equals_cell (first_cell: G21_CELL; second_cell: G21_CELL): BOOLEAN -- It checks if two cells are equals
		require
		do
		ensure
			first_cell_not_changed: first_cell = old first_cell
			second_cell_not_changed: second_cell = old second_cell
			true_result: result=TRUE implies (first_cell=void and then second_cell=void) or else ((first_cell/=void and then second_cell/=void) and then (equals_card(first_cell.card, second_cell.card) and then first_cell.element=second_cell.element and then first_cell.isOccupied=second_cell.isOccupied))
			false_result: result=FALSE implies (first_cell/=void and then second_cell=void) or else (first_cell=void and then second_cell/=void) or else not (equals_card(first_cell.card, second_cell.card)) or else first_cell.element/=second_cell.element or else first_cell.isOccupied/=second_cell.isOccupied
		end

feature{G21_HARD_AI} -- Procedures

	update (logic_board: ARRAY[ARRAY[G21_CELL]]) -- it updates the fake_board with the new changes made in the Logic board
		require
			logic_board_valid: logic_board/=void
		do
		ensure
			logic_board_valid: logic_board/=void
			logic_board_as_before: logic_board = old logic_board
			fake_board_valid: fake_board/=void
			fake_board_equal_to_logic_board_first_row: equals_cell(fake_board.item(1, 1), logic_board.item(1).item(1))=TRUE and then equals_cell(fake_board.item(1, 2), logic_board.item(1).item(2))=TRUE and then equals_cell(fake_board.item(1, 3), logic_board.item(1).item(3))=TRUE
			fake_board_equal_to_logic_board_second_row: equals_cell(fake_board.item(2, 1), logic_board.item(2).item(1))=TRUE and then equals_cell(fake_board.item(2, 2), logic_board.item(2).item(2))=TRUE and then equals_cell(fake_board.item(2, 3), logic_board.item(2).item(3))=TRUE
			fake_board_equal_to_logic_board_third_row: equals_cell(fake_board.item(3, 1), logic_board.item(3).item(1))=TRUE and then equals_cell(fake_board.item(3, 2), logic_board.item(3).item(2))=TRUE and then equals_cell(fake_board.item(3, 3), logic_board.item(3).item(3))=TRUE
		end

	make_fake_move (fake_move: G21_MOVE) -- it makes a fake move and set the parameter fake_move.card into the fake_board at the received fake_move.position
		require
			card_valid: fake_move.card/=void
			position_valid: fake_move.position/=void and then fake_move.position.x>=1 and then fake_move.position.x<=3 and then fake_move.position.y>=1 and then fake_move.position.y<=3
		do
		ensure
			fake_board_valid: fake_board/=void
			card_as_before: equals_card(fake_move.card, old fake_move.card)=true --otherwise card_set might be true if the card has been modified during the function
			card_set: equals_card(fake_board.item(fake_move.position.x, fake_move.position.y).card, fake_move.card)=TRUE
			position_not_changed: fake_move.position=old fake_move.position and then fake_move.position.x=old fake_move.position.x and then fake_move.position.y=old fake_move.position.y
		end

end
