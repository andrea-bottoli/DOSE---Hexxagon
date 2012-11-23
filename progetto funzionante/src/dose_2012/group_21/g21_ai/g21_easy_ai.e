note
	description: "Summary description for {G21_EASY_AI}."
	author: "Emanuele Del Sozzo"
	date: "17/11/2012"
	revision: "1.6"

class
	G21_EASY_AI -- It is an G21_AI descendent and it implements the EASY version of AI

inherit
	G21_AI 	redefine

			make_a_move

		end

create

	make

feature{G21_BOARD} -- Creation

	make (game_board: ARRAY[ARRAY[G21_CELL]]; ai_cards: ARRAYED_LIST[G21_CARD]) -- It creates the object G21_EASY_AI by receiving a link to both the game board and to the AI cards

		require

			game_board_valid: game_board/=void
			ai_cards_valid: ai_cards/=void

		do

		ensure

			game_board_not_modified: game_board/=void and then game_board = old game_board
			ai_cards_not_modified: ai_cards/=void and then ai_cards = old ai_cards and then ai_cards.count=old ai_cards.count
			game_board_assigned: game_board = board
			board_assigned_first_row: board.item(1, 1) = game_board.item(1).item(1) and then board.item(1, 2) = game_board.item(1).item(2) and then board.item(1, 3) = game_board.item(1).item(3)
			board_assigned_second_row: board.item(2, 1) = game_board.item(2).item(1) and then board.item(2, 2) = game_board.item(2).item(2) and then board.item(2, 3) = game_board.item(2).item(3)
			board_assigned_third_row: board.item(3, 1) = game_board.item(3).item(1) and then board.item(3, 2) = game_board.item(3).item(2) and then board.item(3, 3) = game_board.item(3).item(3)
			ai_cards_assigned: ai_cards = cards and then ai_cards.count=cards.count

		end

feature{G21_BOARD} -- Procedures

	make_a_move (card_position: G21_POINT; player_card: G21_CARD): G21_MOVE -- It redefines G21_AI feature. It makes an easy difficult level move

		--require

		local

			move: G21_MOVE

		do

			create move.make(random_card, random_position)
			Result:= move

		--ensure

		end



feature{NONE} -- Procedures

	random_card (): G21_CARD

		--require

		do

			cards.forth
			Result:= cards.item

		--ensure

		end



feature{NONE} -- Procedures

	random_position (): G21_POINT

		--require

		local

			random_row: RANDOM
			random_column: RANDOM
			first_cycle: BOOLEAN
			position: G21_POINT

		do

			--free_positions.forth
			--Result: free_positions.item
			--delete everything and uncomment when it is sure how free_positions is used, is clear.(problem: when delete a position??..)
			first_cycle:=TRUE

			random_column.forth
			random_row.forth

			from

			until

				first_cycle -- or else board.item(random_row)=void or else board.item(random_row).item(random_column)=void or else board.item(random_row).item(random_column).isOccupied=TRUE      --	position not empty

			loop

				if first_cycle=true then first_cycle:=false

				end

				from

				until

					random_column.item<1 or else random_column.item>3

				loop

					random_column.forth

				end

				from

				until

					random_row.item<1 or else random_column.item>3

				loop

					random_row.forth

				end

			end

			create position.make(random_row.item, random_column.item)

			result:= position

		ensure

			result/=void

		end

end
