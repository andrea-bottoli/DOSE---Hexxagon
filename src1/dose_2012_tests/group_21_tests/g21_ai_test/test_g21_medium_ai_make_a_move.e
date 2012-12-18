note
	description: "[
		Eiffel tests that can be executed by testing tool.
	]"
	author: "EiffelStudio test wizard"
	date: "$Date$"
	revision: "$Revision$"
	testing: "type/manual"

class
	TEST_G21_MEDIUM_AI_MAKE_A_MOVE

inherit
	EQA_TEST_SET

feature -- Test routines

	TEST_G21_MEDIUM_AI_MAKE_A_MOVE
			-- New test routine
		note
			testing:  "user/G21_AI"
		local
			o : INTEGER
			i : INTEGER
			a : INTEGER
			ai : G21_HARD_AI
			game_board: ARRAY[ARRAY[G21_CELL]]
			ai_cards: ARRAYED_LIST[G21_CARD]
			move : G21_MOVE
			card_position: G21_POINT
			player_card: G21_CARD
			temp_array : ARRAY[G21_CELL]
			test_cell : G21_CELL
			test_card : G21_CARD
		do
			test_cell.make
			test_card.make
			-- iniates a game board
			from o := 1	until o >= 3
			loop

			from i := 1 until i >= 3
				loop
					temp_array.force(test_cell, i)
				end	-- i iteration

			end -- o iteration
			game_board.force(temp_array, o)


			-- iniates a card list
			from a := 1
			until a >= 5
			loop
				ai_cards.force(test_card)
			end

			-- iniates an ai and asks to make a move
			-- ai.make(game_board, ai_cards)
			assert("AI is createrd", ai /= Void)
			-- card_position.make(1,1)
			-- player_card.make
			-- move := ai.make_a_move(card_position, player_card)
			assert("make_a_move returns a valid move", move /= Void)
			-- assert("card exists", move.card /= Void)
		end



end


