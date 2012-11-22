note
	description: "Summary description for {G21_NOT_EASY_AI}."
	author: "Emanuele Del Sozzo"
	date: "17/11/2012"
	revision: "1.6"

deferred class
	G21_NOT_EASY_AI -- It is an G21_AI descendent and it is the father of MEDIUM and HARD difficult level AI. It is a deferred class

inherit
	G21_AI
	ANY

feature{G21_NOT_EASY_AI} -- Attributes

	valuated_moves: ARRAYED_LIST[G21_VALUATED_MOVE] -- An ARRAYED_LIST of G21_VALUATED_MOVE used to store all possible moves

feature{G21_NOT_EASY_AI} -- Procedures

	calculate_move_value (actual_move: G21_VALUATED_MOVE) -- It is a deferred feature. It is used to calculate how much a move is good at a certain difficult level

		require

			move_not_void: actual_move/=void and then actual_move.card/=void and then actual_move.position.x>=1 and then actual_move.position.x<=3 and then actual_move.position.y>=1 and then actual_move.position.y<=3

		deferred

		ensure

			actual_move_not_changed: actual_move=old actual_move and then actual_move.card=old actual_move and then actual_move.position.x=old actual_move.position.x and then actual_move.position.y=old actual_move.position.y

		end

	choose_move: G21_MOVE -- It returns the best move chosen from valuated_moves

		require

		local

			best_move: G21_VALUATED_MOVE

		do

			create best_move.make_with_value(valuated_moves[1].card, valuated_moves[1].position, valuated_moves[1].value)

			across valuated_moves as v_m loop

				if(v_m.item.value>best_move.value) then

					best_move.set_card(v_m.item.card)
					best_move.set_position(v_m.item.position)
					best_move.set_value(v_m.item.value)

				end

			end

			create result.make(best_move.card, best_move.position)

		ensure

			result_not_void:result/=void
			card_valid: result.card/=void
			result_in_list: cards.has(result.card) = true
			position_available: free_positions.has(result.position) = true
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

				i<=3

			loop

				from

					j:=1

				until

					j<=3

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

		local

			i: INTEGER_32

		do

			from

				i:= valuated_moves.count

			until

				i>=1

			loop

				if(equals_card(card_to_remove, valuated_moves[i].card)) then

					valuated_moves.prune (valuated_moves[i])

				end

				i:=i-1

			end

		ensure

			card_not_changed: equals_card(card_to_remove, old card_to_remove)
			valuated_moves_resized: valuated_moves.count<= old valuated_moves.count
			-- the other elements has not been changed

		end

	remove_position_and_update (position_to_remove: G21_POINT; update: BOOLEAN) -- It removes any element of valuated_moves that contains the position passed as parameter and, if update is true, it update the value of the valuated moves around the passed position

		require
		do
		ensure
		end

end
