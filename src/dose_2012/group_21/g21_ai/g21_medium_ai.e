note
	description: "Summary description for {G21_MEDIUM_AI}."
	author: "Emanuele Del Sozzo"
	date: "28/11/2012"
	revision: "2.0"

-- ALMOST COMPLETE (waiting for logic methods)

class
	G21_MEDIUM_AI -- It is an G21_NOT_EASY_AI descendent and it implements the MEDIUM version of AI

inherit

	G21_NOT_EASY_AI	redefine

					make_a_move,
					calculate_move_value

				end

create

	make

feature{NONE} -- Creation

	make (game_board: ARRAY2[G21_CELL]; ai_cards: ARRAYED_LIST[G21_CARD]) -- It creates the object G21_MEDIUM_AI by receiving a link to both the game board and to the AI cards

		require

			game_board_valid: game_board/=void
			ai_cards_valid: ai_cards/=void

		do

			board:=game_board
			cards:=ai_cards
			create_possible_moves

		ensure

			game_board_not_modified: game_board/=void and then game_board = old game_board
			ai_cards_not_modified: ai_cards/=void and then ai_cards = old ai_cards and then ai_cards.count=old ai_cards.count
			game_board_assigned: game_board = board
			create_possible_moves_valid: valuated_moves/=void
			board_assigned_first_row: board.item(1, 1) = game_board.item(1, 1) and then board.item(1, 2) = game_board.item(1, 2) and then board.item(1, 3) = game_board.item(1, 3)
			board_assigned_second_row: board.item(2, 1) = game_board.item(2, 1) and then board.item(2, 2) = game_board.item(2, 2) and then board.item(2, 3) = game_board.item(2, 3)
			board_assigned_third_row: board.item(3, 1) = game_board.item(3, 1) and then board.item(3, 2) = game_board.item(3, 2) and then board.item(3, 3) = game_board.item(3, 3)
			ai_cards_assigned: ai_cards = cards and then ai_cards.count=cards.count

		end

feature{G21_BOARD, TEST_G21_MEDIUM_AI_MAKE_A_MOVE} -- Interface Procedure

	make_a_move (card_position: G21_POINT): G21_MOVE -- It redefines G21_AI feature. It makes an medium difficult level move by using several features of G21_NOT_EASY_AI

		--require

		local

			move_to_make: G21_MOVE

		do

			if card_position/=void then

				remove_position_and_update(card_position, TRUE)

			end

			move_to_make:= choose_move.twin
			remove_card(move_to_make.card)
			remove_position_and_update(move_to_make.position, FALSE)
			result:=move_to_make.twin

		--ensure

		end

feature{NONE} -- Procedures

	calculate_move_value (actual_move: G21_VALUATED_MOVE) -- It redefines G21_NOT_EASY_AI feature. It is used to calculate how much a move is good according to medium difficult level

		--require

		local

			new_value: INTEGER

		do

			actual_move.set_value(0)
			new_value:= value_generation(actual_move.card.twin, actual_move.position.twin)
			actual_move.set_value (new_value)

		--ensure

		end


end

