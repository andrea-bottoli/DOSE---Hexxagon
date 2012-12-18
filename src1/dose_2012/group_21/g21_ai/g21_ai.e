note
	description: "Summary description for {G21_AI}."
	author: "Emanuele Del Sozzo"
	date: "28/11/2012"
	revision: "2.0"

-- ALMOST COMPLETE (waiting for logic methods)

deferred class

	G21_AI -- It is the father class of al the AI. It is a deferred class

feature{G21_AI} -- Attributes

	board: ARRAY2[G21_CELL] -- a link to the board used by the Logic component
	cards: ARRAYED_LIST[G21_CARD] -- a link to the AI deck stored in Logic component

feature{G21_AI} -- Interface Procedures, the only method the Logic component can use to call the AI

	make_a_move (card_position: G21_POINT): G21_MOVE --it returns and object move that the Logic will use to make AI move

		require

			position_enemy_card: card_position=void or else board.item(card_position.y, card_position.x).isOccupied=TRUE

		deferred

		ensure

			result_valid: result/=void
			free_position: board.item(result.position.x, result.position.y)/=void and then board.item(result.position.x, result.position.y).isoccupied=FALSE
			card_in_deck: cards.has(result.card)=TRUE
			card_position_not_changed: card_position=old card_position and then card_position.x=old card_position.x and then card_position.y=old card_position.y
			deck_not_changed: cards=old cards and then cards.count = old cards.count
			board_not_changed_first_row: board.item(1, 1) = old board.item(1, 1) and then board.item(1, 2) = old board.item(1, 2) and then board.item(1, 3) = old board.item(1, 3)
			board_not_changed_second_row: board.item(2, 1) = old board.item(2, 1) and then board.item(2, 2) = old board.item(2, 2) and then board.item(2, 3) = old board.item(2, 3)
			board_not_changed_third_row: board.item(3, 1) = old board.item(3, 1) and then board.item(3, 2) = old board.item(3, 2) and then board.item(3, 3) = old board.item(3, 3)

		end


feature{G21_AI} --Procedures

	equals_card (first_card: G21_CARD; second_card: G21_CARD): BOOLEAN -- It checks if two cards are equal; it returns true if and only if the two cards have the same numbers, element and name

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

end
