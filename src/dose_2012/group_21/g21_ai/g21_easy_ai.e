note
	description: "Summary description for {G21_EASY_AI}."
	author: "Emanuele Del Sozzo"
	date: "28/11/2012"
	revision: "2.0"

-- ALMOST COMPLETE (waiting for logic methods)

class
	G21_EASY_AI -- It is an G21_AI descendent and it implements the EASY version of AI

inherit

	G21_AI 	redefine

			make_a_move

		end

create

	make

feature{NONE} -- Attributes

	free_positions: ARRAYED_LIST[G21_POINT] -- a list of all the position available on the board during EASY_AI turn

feature{G21_BOARD} -- Creation

	make (game_board: ARRAY2[G21_CELL]; ai_cards: ARRAYED_LIST[G21_CARD]) -- It creates the object G21_EASY_AI by receiving a link to both the game board and to the AI cards

		require

			game_board_valid: game_board/=void
			ai_cards_valid: ai_cards/=void

		do

			board:=game_board
			cards:=ai_cards

		ensure

			game_board_not_modified: game_board/=void and then game_board = old game_board
			ai_cards_not_modified: ai_cards/=void and then ai_cards = old ai_cards and then ai_cards.count=old ai_cards.count
			game_board_assigned: game_board = board
			board_assigned_first_row: board.item(1, 1) = game_board.item(1, 1) and then board.item(1, 2) = game_board.item(1, 2) and then board.item(1, 3) = game_board.item(1, 3)
			board_assigned_second_row: board.item(2, 1) = game_board.item(2, 1) and then board.item(2, 2) = game_board.item(2, 2) and then board.item(2, 3) = game_board.item(2, 3)
			board_assigned_third_row: board.item(3, 1) = game_board.item(3, 1) and then board.item(3, 2) = game_board.item(3, 2) and then board.item(3, 3) = game_board.item(3, 3)
			ai_cards_assigned: ai_cards = cards and then ai_cards.count=cards.count

		end

feature{G21_BOARD, TEST_G21_EASY_AI_MAKE_A_MOVE} -- Procedures

	make_a_move (card_position: G21_POINT; player_card: G21_CARD): G21_MOVE -- It redefines G21_AI feature. It makes an easy difficult level move

		--require

		local

			move: G21_MOVE

		do

			create move.make(random_card, random_position)
			result:= move.twin

		--ensure

		end



feature{NONE} -- Procedures

	random_card: G21_CARD -- It returns a card chosen randomly for cards

		require

			cards_valid: cards/=void and then cards.count>=1

		local

      		random_sequence: RANDOM
      		l_time: TIME
      		l_seed: INTEGER

    	do

      		create l_time.make_now
      		l_seed := l_time.hour
      		l_seed := l_seed * 60 + l_time.minute
      		l_seed := l_seed * 60 + l_time.second
      		l_seed := l_seed * 1000 + l_time.milli_second
      		create random_sequence.set_seed (l_seed)
      		random_sequence.forth
			result:= cards.at (random_sequence.item\\cards.count)
			cards.start


		ensure

			result_valid: result/=void and then cards.has (result)

		end


	random_position: G21_POINT -- It returns a position chosen randomly from free_positions that is calculated each time this method is invoked

		require

		local

			random_sequence: RANDOM
      		l_time: TIME
      		l_seed: INTEGER

		do

			available_positions
      		create l_time.make_now
      		l_seed := l_time.hour
      		l_seed := l_seed * 60 + l_time.minute
      		l_seed := l_seed * 60 + l_time.second
      		l_seed := l_seed * 1000 + l_time.milli_second
      		create random_sequence.set_seed (l_seed)
      		random_sequence.forth
			result:= free_positions.at (random_sequence.item\\free_positions.count)
			free_positions.start

		ensure

			result_valid: result/=void and then result.x>=1 and then result.x<=3 and then result.y>=1 and then result.y<=3 and then free_positions.has (result)

		end

available_positions --it fills the variable free_positions with POINT objects. It uses the variable board to calculate the free positions on the board during that turn

		require

			board_valid: board/=void

		local

			row: INTEGER
			column: INTEGER
			position: G21_POINT

		do

			from

				column:=1

			until

				column>3

			loop

				from

					row:=1

				until

					row>3

				loop

					if board.item(row,column)/=void and then board.item(row, column).isOccupied=FALSE

					then

						create position.make(row, column)
					    free_positions.put( position )

					end

				end

			end


		ensure

			valid_free_positions: free_positions/=void and free_positions.count>0
			updated_free_positions: old free_positions/=void implies free_positions.count<=old free_positions.count

		end

end
