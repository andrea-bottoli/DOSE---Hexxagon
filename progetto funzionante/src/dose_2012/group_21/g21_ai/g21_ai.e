note
	description: "Summary description for {G21_AI}."
	author: "Emanuele Del Sozzo"
	date: "17/11/2012"
	revision: "1.6"

deferred class
	G21_AI -- It is the father class of al the AI. It is a deferred class

feature{G21_AI} -- Attributes

	board: ARRAY2[G21_CELL] -- a link to the board used by the Logic component
	cards: ARRAYED_LIST[G21_CARD] -- a link to the AI deck stored in Logic component
	free_positions: ARRAYED_LIST[G21_POINT] -- a list of all the position available on the board during AI turn      PROBABLY IT'S USELESS

feature{G21_AI, G21_BOARD} -- Interface Procedures, the only method the Logic component can use to call the AI

	make_a_move (card_position: G21_POINT; player_card: G21_CARD): G21_MOVE --it returns and object move that the Logic will use to make AI move

		require

			valid_card_position: card_position/=void
			card_position_in_x_limit: card_position.x>=1 and then card_position.x<=3
			card_position_in_y_limit: card_position.y>=1 and then card_position.y<=3
			valid_player_card: player_card/=void

		deferred

		ensure

			valid_move: result/=void
			--free_position: board.item(result.position.x, result.position.y)=void
			valid_card: result.card/=void
			card_in_deck: cards.has(result.card)=TRUE
			card_position_not_changed: card_position=old card_position and then card_position.x=old card_position.x and then card_position.y=old card_position.y
			card_not_changed: player_card=old player_card and then cards.count = old cards.count
			valid_position: result.position.x>=1 and then result.position.x<=3 and then result.position.y>=1 and then result.position.y<=3
			board_not_changed_first_row: board.item(1, 1) = old board.item(1, 1) and then board.item(1, 2) = old board.item(1, 2) and then board.item(1, 3) = old board.item(1, 3)
			board_not_changed_second_row: board.item(2, 1) = old board.item(2, 1) and then board.item(2, 2) = old board.item(2, 2) and then board.item(2, 3) = old board.item(2, 3)
			board_not_changed_third_row: board.item(3, 1) = old board.item(3, 1) and then board.item(3, 2) = old board.item(3, 2) and then board.item(3, 3) = old board.item(3, 3)

		end

feature{G21_AI} -- Procedures


	available_positions --it fills the variable free_positions with POINT objects. It uses the variable board to calculate the free positions on the board during that turn PROBABLY IT'S USELESS

		require

			--table contains minimum one available position
			free_positions=void and then free_positions.is_empty=TRUE

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
			updated_free_positions: old free_positions/=void implies free_positions.count<old free_positions.count
			-- result[0]/= void and then (result[0].x>=0 and then result[0].x<=2 and then result[0].y>=0 and then result[0].y<=2)
			-- result[1]/= void and then (result[1].x>=0 and then result[1].x<=2 and then result[1].y>=0 and then result[1].y<=2)
			-- result[2]/= void and then (result[2].x>=0 and then result[2].x<=2 and then result[2].y>=0 and then result[2].y<=2)
			-- result[3]/= void and then (result[3].x>=0 and then result[3].x<=2 and then result[3].y>=0 and then result[3].y<=2)
			-- result[4]/= void and then (result[4].x>=0 and then result[4].x<=2 and then result[4].y>=0 and then result[4].y<=2)
			-- result[5]/= void and then (result[5].x>=0 and then result[5].x<=2 and then result[5].y>=0 and then result[5].y<=2)
			-- result[6]/= void and then (result[6].x>=0 and then result[6].x<=2 and then result[6].y>=0 and then result[6].y<=2)
			-- result[7]/= void and then (result[7].x>=0 and then result[7].x<=2 and then result[7].y>=0 and then result[7].y<=2)
			-- result[8]/= void and then (result[8].x>=0 and then result[8].x<=2 and then result[8].y>=0 and then result[8].y<=2)

		end

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


invariant

	board_valid: board /= void
	cards_valid:cards /= void
	free_positions_valid: free_positions /= void

end
