note
	description: "Summary description for {G21_HARD_AI}."
	author: "Emanuele Del Sozzo"
	date: "03/12/2012"
	revision: "2.0"

-- ALMOST COMPLETE (waiting for logic methods)

class
	G21_HARD_AI -- It is an G21_NOT_EASY_AI descendent and it implements the HARD version of AI

inherit
	G21_NOT_EASY_AI	redefine

					make_a_move,
					calculate_move_value

				end

create

	make

feature{NONE} -- Attributes

	frozen rule_flip_value: INTEGER = 8
	frozen human_flip_value: INTEGER = 14
	rules: G21_RULES
	use_fake_board: BOOLEAN
	fake: G21_FAKE_BOARD
	ai_rules: G21_RULES

feature{NONE} -- Creation

	make (game_board: ARRAY2[G21_CELL]; ai_cards: ARRAYED_LIST[G21_CARD]; game_rules: G21_RULES) -- It creates the object G21_HARD_AI by receiving a link to: the game board, the AI cards and the game rules

		require

			game_board_valid: game_board/=void
			ai_cards_valid: ai_cards/=void
			game_rules_valid: game_rules/=void

		do

			board:=game_board
			cards:=ai_cards
			rules:=game_rules
			create_possible_moves

			if rules.getisopen=TRUE and then (rules.plus.getison or else rules.same.getison or else rules.samewall.getison) then

				use_fake_board:=TRUE
				fake.make(game_board)
				-- we create an object ai_rules by copying the values in rules or game_rules, but we have to pass the fake.fake_board


			else

				use_fake_board:=FALSE

			end


		ensure

			game_board_not_modified: game_board/=void and then game_board = old game_board
			ai_cards_not_modified: ai_cards/=void and then ai_cards = old ai_cards and then ai_cards.count=old ai_cards.count
			game_rules_not_modified: game_rules/=void and then game_rules = old game_rules
			game_board_assigned: board/=void and then game_board = board
			ai_cards_assigned: cards/=void and then ai_cards = cards and then ai_cards.count=cards.count
			game_rules_assigned: rules/=void and then game_rules = rules
			board_assigned_first_row: board.item(1, 1) = game_board.item(1, 1) and then board.item(1, 2) = game_board.item(1, 2) and then board.item(1, 3) = game_board.item(1, 3)
			board_assigned_second_row: board.item(2, 1) = game_board.item(2, 1) and then board.item(2, 2) = game_board.item(2, 2) and then board.item(2, 3) = game_board.item(2, 3)
			board_assigned_third_row: board.item(3, 1) = game_board.item(3, 1) and then board.item(3, 2) = game_board.item(3, 2) and then board.item(3, 3) = game_board.item(3, 3)

			end

feature{G21_BOARD, TEST_G21_HARD_AI_MAKE_A_MOVE} -- Interface Procedure	

	make_a_move (card_position: G21_POINT; player_card: G21_CARD): G21_MOVE -- It redefines G21_AI feature. It makes an hard difficult level move by using several features of G21_NOT_EASY_AI

		--require

		local

			move_to_make: G21_MOVE

		do

			if card_position/=void and then player_card/= void then

				remove_position_and_update(card_position, TRUE)

				if use_fake_board then

					fake.update(board)

				end

			end

			move_to_make:= choose_move.twin
			remove_card(move_to_make.card)
			remove_position_and_update(move_to_make.position, FALSE)
			result:=move_to_make.twin

		--ensure

		end

feature{NONE} -- Procedure

	calculate_move_value (actual_move: G21_VALUATED_MOVE) -- It redefines G21_NOT_EASY_AI feature. It is used to calculate how much a move is good according to hard difficult level

		--require

		local

			new_value: INTEGER
			card_to_use: G21_CARD

		do

			actual_move.set_value(0)
			card_to_use:=actual_move.card.twin

			if (rules.plus.getison and then rules.plus.ismakechange) or else (rules.same.getison and then rules.same.ismakechange) or else (rules.samewall.getison and then rules.samewall.ismakechange) then  --here we will have to modify the calls of ismakechange since the egyptian team
																																																				--should add parameters such as card and position

				actual_move.set_value (actual_move.value+rule_flip_value)

			end

			if use_fake_board and then check_human_move(card_to_use, actual_move.position) then

				actual_move.set_value (actual_move.value-human_flip_value)

			end

			if rules.getiselemental then

				if board.item (actual_move.position.x, actual_move.position.y).element = actual_move.card.element then

					--we have to add a +1 to each value, or use a method implemented by the egyptian (if they will implement it)

				else

					--we have to add a -1 to each value, or use a method implemented by the egyptian (if they will implement it)

				end

			end

			new_value:= value_generation(card_to_use, actual_move.position.twin)
			actual_move.set_value (actual_move.value+new_value)

		--ensure

		end

	check_human_move (ai_card: G21_CARD; ai_position: G21_POINT): BOOLEAN --It checks if the human player can use ai move to make plus, same or same_wall

		require

			card_valid: ai_card/=void
			ai_position_valid: ai_position/=void
			use_fake_board_true: use_fake_board=TRUE
			fake_valid: fake/=void
			ai_rules_valid: ai_rules/=void

		local

			human_cards: ARRAYED_LIST[G21_CARD]
			positions: ARRAY[G21_POINT]
			i: INTEGER

		do

			result:=FALSE
			fake.make_fake_move (create{G21_MOVE}.make(ai_card, ai_position))
			-- I copy the human player cards into human_cards by using the method of rules.open (when it will be implemented)

			positions.make_empty()
			positions.put(create{G21_POINT}.make(ai_position.x-1, ai_position.y),1)
			positions.put(create{G21_POINT}.make(ai_position.x+1, ai_position.y),2)
			positions.put(create{G21_POINT}.make(ai_position.x, ai_position.y-1),3)
			positions.put(create{G21_POINT}.make(ai_position.x, ai_position.y+1),4)


			from

				human_cards.start

			until

				human_cards.off or else result=TRUE

			loop

				from

					i:=1

				until

					i>positions.count or else result=TRUE

				loop

					if positions[i].x>=1 and then positions[i].x<=3 and then positions[i].y>=1 and then positions[i].y<=3 and then fake.fake_board.item(positions[i].x, positions[i].y).isoccupied=FALSE  then

						if ai_rules.plus.getison and then ai_rules.plus.ismakechange then

							result:=TRUE

						end

						if ai_rules.same.getison and then ai_rules.same.ismakechange then

							result:=TRUE

						end

						if ai_rules.plus.getison and then ai_rules.samewall.ismakechange then

							result:=TRUE

						end
						--here we will have to modify the calls of ismakechange since the egyptian team should add parameters such as card and position

					end

					i:=i+1

				end

				human_cards.forth

			end


			fake.remove_fake_move (ai_position)

		ensure

			card_not_changed: ai_card=old ai_card
			ai_position_not_changed: ai_position=old ai_position
			use_fake_board_not_changed: use_fake_board=old use_fake_board
			fake_valid: fake/=void
			ai_rules_valid: ai_rules/=void


		end

invariant

	rules_valid: rules /= void

end
