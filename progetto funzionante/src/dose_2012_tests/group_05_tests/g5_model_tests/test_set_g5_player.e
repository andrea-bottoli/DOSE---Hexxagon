note
	description: "Summary description for {TEST_SET_G5_PLAYER}."
	author: "Gabriele Fanchini"
	date: "19.11.2012"
	revision: "1.0"
	testing: "type/manual"

class
	TEST_SET_G5_PLAYER

inherit
	EQA_TEST_SET


feature -- Test routines


	test_play_card
			-- tests the feature used to play a card
		note
			testing: "covers/{G5_PLAYER}.play_card"
			testing: "user/G5" -- this is the tag based on the group-prefix for our tests
		local
		--	a_card: G5_CARD
		--	a_player: G5_PLAYER
		do
			-- This feature can't be tested yet
		end


	test_add_action
			-- tests the increment of action points of the player
		note
			testing: "covers/{G5_PLAYER}.add_action"
			testing: "user/G5" -- this is the tag based on the group-prefix for our tests
		local
			a_player: G5_PLAYER
			old_amount_action: INTEGER
		do
			create a_player.make (1,"player_name")
			old_amount_action:= a_player.amount_action
			a_player.add_action (2)
			assert("the incrementation is correct:",a_player.amount_action.is_equal (old_amount_action +2))
		end


	test_add_coin
			-- tests the increment of coins of the player
		note
			testing: "covers/{G5_PLAYER}.add_coin"
			testing: "user/G5" -- this is the tag based on the group-prefix for our tests
		local
			a_player: G5_PLAYER
			old_amount_coin: INTEGER
		do
			create a_player.make (1,"player_name")
			old_amount_coin:= a_player.amount_coin
			a_player.add_coin (2)
			assert("the incrementation is correct:",a_player.amount_coin.is_equal (old_amount_coin +2))
		end


	test_get_new_hand
			-- tests the get_new_hand feature
		note
			testing: "covers/{G5_PLAYER}.get_new_hand"
			testing: "user/G5" -- this is the tag based on the group-prefix for our tests
		local
			a_player: G5_PLAYER
			old_hand: LIST[G5_CARD]
		do
			create a_player.make (1,"player_name")
			old_hand:= a_player.hand_current
			a_player.get_new_hand
			assert("hand has changed:",not a_player.hand_current.is_equal (old_hand))
		end


	test_get_card_hand
			-- tests the get_card_hand feature
		note
			testing: "covers/{G5_PLAYER}.get_card_hand"
			testing: "user/G5" -- this is the tag based on the group-prefix for our tests
		local
			a_player: G5_PLAYER
			card_returned: G5_CARD
			old_hand_amount: INTEGER
			selected_card: STRING
			contains_selected_card: BOOLEAN
			i: INTEGER
		do
			selected_card:= "cellar"
			create a_player.make (1,"player_name")
			old_hand_amount:= a_player.hand_current.count
			from
				i:=1
			until
				i>a_player.hand_current.count
			loop
				if
					a_player.hand_current[i].id.is_equal (selected_card)
				then
					contains_selected_card:=true
				end
				i:=i+1
			end

			if
				contains_selected_card=true
			then
				card_returned:= a_player.get_card_hand (selected_card)
				assert("the returned card is correct:",card_returned.id.is_equal (selected_card))
				assert("the card has been remove from the hand",old_hand_amount.is_equal (a_player.hand_current.count-1))
			else
				card_returned:= a_player.get_card_hand (selected_card)
				assert("no card has been returned",card_returned=void)
				assert("amount of cards in the hans didn't change:",old_hand_amount.is_equal (a_player.hand_current.count))
			end
		end



	test_draw_card_deck
			-- tests the draw_card_deck feature
		note
			testing: "covers/{G5_PLAYER}.draw_card_deck"
			testing: "user/G5" -- this is the tag based on the group-prefix for our tests
		local
			a_player: G5_PLAYER
			cards_drawn: ARRAY[G5_CARD]
		do
			create a_player.make (1,"player_name")
			cards_drawn:= a_player.draw_card_deck (4)
			assert("feature draws the correct number of cards:",cards_drawn.count.is_equal (4))
			-- add we deck is implemented the test that deck number of cards has been decresed by 4
		end


	test_scavening
			-- tests the scavening feature
		note
			testing: "covers/{G5_PLAYER}.scevening"
			testing: "user/G5" -- this is the tag based on the group-prefix for our tests
		local
			a_player: G5_PLAYER
			old_amount_hand: INTEGER
			old_amount_discard_pile: INTEGER
			old_hand: LIST[G5_CARD]
			i: INTEGER
			a_card: G5_CARD
		do
			create a_player.make (1,"player_name")

			--here i draw some cards
			a_player.get_new_hand

			old_hand:= a_player.hand_current
			old_amount_hand:= a_player.hand_current.count
			old_amount_discard_pile:= a_player.discard_pile.count

			a_player.scavenging

			assert("hand has been discarder:",a_player.hand_current.count.is_equal (0))
			assert("hand put in the discard pile:", a_player.discard_pile.count.is_equal (old_amount_hand + old_amount_discard_pile))

			-- this check that all the cards of the hand are now in the discard pile
			from
				i:=1
			until
				i>old_amount_hand
			loop
				a_card:=old_hand.i_th (i)
				assert("(this message will performed for every cards presente in the hand) card of the hand present in the discard pile:",a_player.discard_pile.has (a_card))
			end
		end


	test_translate_discard_pile_to_deck
			-- tests the translate_discard_pile_to_deck feature
		note
			testing: "covers/{G5_PLAYER}.translate_discard_pile_to_deck"
			testing: "user/G5" -- this is the tag based on the group-prefix for our tests
		local
			a_player: G5_PLAYER
			old_discard_pile_amount: INTEGER
			old_deck_amount: INTEGER
			new_deck_amount: INTEGER
		do
			create a_player.make (1,"player_name")
			old_discard_pile_amount:= a_player.discard_pile.count
			old_deck_amount:= a_player.deck.count

			a_player.translate_discard_pile_to_deck

			new_deck_amount:= a_player.deck.count
			assert("discard pile is empty:", a_player.discard_pile.is_empty)
			assert("discard pile is in the deck:", new_deck_amount.is_equal (old_deck_amount+old_discard_pile_amount))
		end


	test_count_victory_points
			-- tests the count_victory_points feature
		note
			testing: "covers/{G5_PLAYER}.count_victory_points"
			testing: "user/G5" -- this is the tag based on the group-prefix for our tests
		local
			--a_player: G5_PLAYER
			--table: G5_TABLE
		do
			-- this can't be tested yet
		end


end
