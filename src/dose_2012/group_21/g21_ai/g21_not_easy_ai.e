note
	description: "Summary description for {G21_NOT_EASY_AI}."
	author: "Emanuele Del Sozzo"
	date: "28/11/2012"
	revision: "2.0"

-- ALMOST COMPLETE (waiting for logic methods)


deferred class

	G21_NOT_EASY_AI -- It is an G21_AI descendent and it is the father of MEDIUM and HARD difficult level AI. It is a deferred class

inherit

	G21_AI

feature{G21_NOT_EASY_AI} -- Attributes

	valuated_moves: ARRAYED_LIST[G21_VALUATED_MOVE] -- An ARRAYED_LIST of G21_VALUATED_MOVE used to store all possible moves
	frozen flip_value: INTEGER = 6
	frozen not_flip_value: INTEGER = 2
	frozen border_value: INTEGER = 3

feature{G21_NOT_EASY_AI} -- Procedures

	calculate_move_value (actual_move: G21_VALUATED_MOVE) -- It is a deferred feature. It is used to calculate how much a move is good at a certain difficult level

		require

			actual_move_valid: actual_move/=void and then actual_move.card/=void and then actual_move.position/=void
			actual_move_position_valid: actual_move.position.x>=1 and then actual_move.position.x<=3 and then actual_move.position.y>=1 and then actual_move.position.y<=3
			actual_move_in_valuated_moves: valuated_moves.has (actual_move)

		deferred

		ensure

			actual_move_card_not_changed: equals_card(actual_move.card, old actual_move.card)
			actual_move_position_not_changed: actual_move.position.equals_position (old actual_move.position)

		end

	value_generation(card: G21_CARD; position: G21_POINT): INTEGER --it calculate how much a move is good looking at the cards around the position passed

		require

			card_valid: card/=void
			position_valid: position/=void and then position.x>=1 and then position.x<=3 and then position.y>=1 and then position.y<=3

		local

			row: INTEGER
			column: INTEGER
			move_value: INTEGER
			human_id: INTEGER

		do

			human_id:= 1
			move_value:= 0
			row:=position.x
			column:=position.y

			if row-1>=1 then

				move_value:= move_value + card.top

				if board.item (row-1, column).isoccupied=TRUE then

					if 	board.item(row-1, column).getplayernumber=human_id and then	card.top>board.item (row-1, column).card.bottom then

						move_value:= move_value + flip_value

					else

						move_value:= move_value - not_flip_value

					end

				end

			else

				move_value:= move_value + border_value

			end

			if row+1<=3 then

				move_value:= move_value + card.bottom

				if board.item (row+1, column).isoccupied=TRUE then

					if board.item(row+1, column).getplayernumber=human_id and then card.bottom>board.item (row+1, column).card.top then

						move_value:= move_value + flip_value

					else

						move_value:= move_value - not_flip_value

					end

				end

			else

				move_value:= move_value + border_value

			end


			if column-1>=1 then

				move_value:= move_value + card.left

				if board.item (row, column-1).isoccupied=TRUE then

					if board.item(row, column-1).getplayernumber=human_id and then card.left>board.item (row, column-1).card.right then

						move_value:= move_value + flip_value

					else

						move_value:= move_value - not_flip_value

					end

				end

			else

				move_value:= move_value + border_value

			end

			if column+1<=3 then

				move_value:= move_value + card.right

				if board.item (row, column+1).isoccupied=TRUE then

					if board.item(row, column+1).getplayernumber=human_id and then card.right>board.item (row, column+1).card.left then

						move_value:= move_value + flip_value

					else

						move_value:= move_value - not_flip_value

					end

				end

			else

				move_value:= move_value + border_value

			end

		result:=move_value

		ensure

			card_not_changed: equals_card(card, old card)
			position_not_changed: position.equals_position (old position)

		end

	choose_move: G21_MOVE -- It returns the best move chosen from valuated_moves

		require

		local

			best_move: G21_VALUATED_MOVE

		do

			create best_move.make_with_value(valuated_moves[1].card, valuated_moves[1].position, valuated_moves[1].value)

			from

				valuated_moves.start

			until

				valuated_moves.off

			loop

				if valuated_moves.item.value>best_move.value then

					best_move.set_card(valuated_moves.item.card)
					best_move.set_position(valuated_moves.item.position)
					best_move.set_value(valuated_moves.item.value)

				end

				valuated_moves.forth

			end

			valuated_moves.start
			create result.make(best_move.card, best_move.position)

		ensure

			result_not_void:result/=void
			card_valid: result.card/=void
		--	result_in_list: cards.index_of(result.card,1)/=0
			valid_position: result.position.x>=1 and then result.position.x<=3 and then result.position.y>=1 and then result.position.y<=3

		end

	create_possible_moves -- It fill the variable valueted_moves with G21_VALUATED_MOVE objects. This method should be called only during the creationn of a MEDIUM or HARD AI, so it should contains 45 element (5 cards * 9 positions)

		require

		local

			valuated_move: G21_VALUATED_MOVE
			position: G21_POINT
			i: INTEGER_32
			j: INTEGER_32
			k: INTEGER_32

		do

			create valuated_moves.make(0)

			from

				i:= 1
				k:= 1

			until

				i>3

			loop

				from

					j:=1

				until

					j>3

				loop

					across cards as c loop

						create position.make(i, j)
						create valuated_move.make_with_value(c.item, position, 0)
						valuated_moves.extend(valuated_move)
						calculate_move_value(valuated_moves[k])
						k:=k+1

					end

					j:=j+1

				end

				i:=i+1

			end

		ensure

			result_not_void: valuated_moves/=void
			result_elements: valuated_moves.count>0 and then valuated_moves.count=45

		end

	remove_card (card_to_remove: G21_CARD) -- It removes any element of valuated_moves that contains the card passed as parameter

		require

			card_valid: card_to_remove/=void
			valuated_moves_size_valid: valuated_moves.count>=1

		do

			from

				valuated_moves.start

			until

				valuated_moves.off

			loop

				if equals_card(card_to_remove, valuated_moves.item.card) then

					valuated_moves.remove

				else

					valuated_moves.forth

				end

			end

			valuated_moves.start

		ensure

			card_not_changed: equals_card(card_to_remove, old card_to_remove)
			valuated_moves_resized: valuated_moves.count<= old valuated_moves.count

		end

	remove_position_and_update (position_to_remove: G21_POINT; update: BOOLEAN) -- It removes any element of valuated_moves that contains the position passed as parameter and, if update is true, it update the value of the valuated moves around the passed position

		require

			position_valid: position_to_remove/=void and then position_to_remove.x>=1 and then position_to_remove.x<=3 and then position_to_remove.y>=1 and then position_to_remove.y<=3
			valuated_moves_size_valid: valuated_moves.count>=1

		do

			from

				valuated_moves.start

			until

				valuated_moves.off

			loop

				if position_to_remove.equals_position(valuated_moves.item.position) then

					valuated_moves.remove

				else

					if update and then position_to_remove.around_the_point(valuated_moves.item.position) then

						calculate_move_value(valuated_moves.item)

					end

					valuated_moves.forth

				end

			end

			valuated_moves.start

		ensure

			position_not_changed: position_to_remove.equals_position(old position_to_remove)
			valuated_moves_resized: valuated_moves.count<= old valuated_moves.count

		end

invariant

	valuate_moves_valid: valuated_moves/=void

end
