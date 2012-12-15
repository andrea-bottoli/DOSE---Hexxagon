note
 	description: "Summary description for {G5_PLAYER}."
	author: "Team: Rio Cuarto 4"
 	date: "$17/11/2012$"
 	revision: "$0.3$"

class
 	G5_PLAYER

create
	make

feature -- Atributes

	name: STRING
		-- Identifies a player

feature -- Constants

	hand_size_default: INTEGER = 5
		-- Number of cards that has a hand for default

feature -- Elements

	deck: G5_DECK [G5_CARD]
 		-- Deck of play

 	hand_current: LINKED_LIST [G5_CARD]
 		-- Contains the hand current of player

	discard_pile: LINKED_STACK [G5_CARD]
		-- Contains the discarded cards

feature -- Measurements

	amount_action: INTEGER
		-- Indicates the number of actions available

	amount_buy: INTEGER
		-- Indicates the number of buys available

	amount_coin: INTEGER
		-- Indicates the number of coin available

	point_victory: INTEGER
		-- Indicates the victory points of player

feature -- References

	table: G5_TABLE
		-- Reference to the table where the player is playing

feature -- Intialization

	make (name_player: STRING; new_table: G5_TABLE)
		-- Create a new player
		require
			valid_arg: name_player /= Void and new_table /= Void
		local
			card: G5_CARD
			pile: G5_PILE_CARD_SUPPLY
		do
			-- Initializacion of atributes
			table := new_table
			name := name_player
			amount_action := 1
			amount_buy := 1
			amount_coin := 0
			point_victory := 0

			-- Initialization of deck
			create deck.make
			pile := table.supply.search_card ({G5_MACRO_CARDS}.copper)
			card := table.supply.take_card (pile)
			deck.put (card)
			card := table.supply.take_card (pile)
			deck.put (card)
			card := table.supply.take_card (pile)
			deck.put (card)
			card := table.supply.take_card (pile)
			deck.put (card)
			card := table.supply.take_card (pile)
			deck.put (card)
			card := table.supply.take_card (pile)
			deck.put (card)
			card := table.supply.take_card (pile)
			deck.put (card)

			pile := table.supply.search_card ({G5_MACRO_CARDS}.estate)
			card := pile.get_instance
			deck.put (card)
			deck.put (card)
			deck.put (card)

			deck.shuffle

			-- Initialization of discard pile
			create discard_pile.make

			-- Initialization of hand
			create hand_current.make
			get_new_hand()

		ensure
			initial_references: table /= Void
			initial_atribute: name = name_player
			initial_Measurements: amount_action = 1 and amount_buy = 1 and amount_coin = 0 point_victory = 0
			initial_elements: (deck /= Void and deck.is_empty = False) and (hand_current /= Void and hand_current.is_empty = False) and (deck /= Void and deck.is_empty = False) and (hand_current /= Void and hand_current.is_empty = False)
		end

feature {G5_TABLE, EQA_TEST_SET} -- Settings

	set_table(new_table: G5_TABLE)
		-- Set the table
		require
		do
			table := new_table
		ensure
			table = new_table
		end

	set_deck(new_deck: G5_DECK [G5_CARD])
		-- Set the deck
		require
		do
			deck := new_deck
		ensure
			deck = new_deck
		end

	set_hand_current(new_hand_current: LINKED_LIST [G5_CARD])
		-- Set the hand current
		require
		do
			hand_current := new_hand_current
		ensure
			hand_current = new_hand_current
		end

	set_discard_pile(new_discard_pile: LINKED_STACK [G5_CARD])
		-- Set the discard pile
		require
		do
			discard_pile := new_discard_pile
		ensure
			discard_pile = new_discard_pile
		end

feature -- Phase Action

	play_card(card: G5_CARD)
		-- Play the card that is passed as a parameter
		require
			valid_arg:(card.type.has_substring("action") or card.type.has_substring("attack")  and card /= Void)
			phase_action: table.phase_current.is_equal ({G5_MACRO_CARDS}.phase_action)
		do
			amount_action := amount_action - 1
			discard_pile.put(get_card_hand(card.id))
			if card.type.has_substring("action") then
				card.command1.execute
			end
			if card.type.has_substring("attack") then
				card.command2.execute
			end

		ensure
		end

	get_cards_playable(): ARRAY [STRING]
		-- Return of the hand the cards that can be played at the phase of action
		require
			phase_action: table.phase_current.is_equal ({G5_MACRO_CARDS}.phase_action)
		local
			i: INTEGER
		do
			from
				create result.make_empty
				hand_current.start
				i := 1
			until
				hand_current.index > hand_current.count
			loop
				if hand_current.item.type.has_substring ("action") or hand_current.item.type.has_substring ("attack") then
					result.grow (i)
					result.put (hand_current.item.id, i)
					i := i + 1
				end
				hand_current.forth
			end
		ensure
			valid_result: not result.is_empty implies hand_current.there_exists (agent (c: G5_CARD): BOOLEAN do Result := (c.type.has_substring ("action") or c.type.has_substring ("attack")) end )
		end

	get_cards_reaction(): ARRAY [STRING]
		-- Return of the hand the reactions cards
		require
			phase_action: table.phase_current.is_equal ({G5_MACRO_CARDS}.phase_action)
		local
			i: INTEGER
		do
			from
				create result.make_empty
				hand_current.start
				i := 1
			until
				hand_current.index > hand_current.count
			loop
				if hand_current.item.type.has_substring ("reaction") then
					result.grow (i)
					result.put (hand_current.item.id, i)
					i := i + 1
				end
				hand_current.forth
			end
		ensure
			valid_result: not result.is_empty implies hand_current.there_exists (agent (c: G5_CARD): BOOLEAN do Result := c.type.has_substring ("reaction") end )
		end

feature -- Phase Buy

	get_card_supply(id_card: STRING): G5_CARD
		-- Search a card in the supply by id. if found returns its stack
		require
			valid_arg: id_card /= Void
			valid_phase: table.phase_current.is_equal ({G5_MACRO_CARDS}.phase_action) or table.phase_current.is_equal ({G5_MACRO_CARDS}.phase_buy)
		local
			pile: G5_PILE_CARD_SUPPLY
		do
			pile := table.supply.search_card (id_card)
			result := table.supply.take_card (pile)
		ensure
			resulting_card: result = Void or result.id.is_equal (id_card)
		end

	count_treasures()
		-- Count the cards coming from coin treasures.
		require
			hand_state: hand_current /= Void
			valid_phase: table.phase_current.is_equal ({G5_MACRO_CARDS}.phase_buy)
		do
			from
				hand_current.start
			until
				hand_current.index > hand_current.count
			loop
				if (hand_current.item.type.has_substring ({G5_MACRO_CARDS}.treasure)) then
					hand_current.item.command2.execute
				end
				hand_current.forth
			end
		ensure
		end

feature -- Phase Clean-up

	cleaning_effect()
		-- To carry out the cleaning phase about the player
		require
			valid_phase: table.phase_current.is_equal({G5_MACRO_CARDS}.phase_clean_up)
		do
			Scavenging()
			get_new_hand()
			amount_action := 1
			amount_buy := 1
			amount_coin := 0
		ensure
			efect: not hand_current.is_empty and amount_action = 1 and amount_buy = 1 and amount_coin = 0
		end

feature -- Efect by Cards Action

	add_buy (quantity_buy: INTEGER)
		-- Increases the number of player buys, with the number passed as parameter
		require
			valid_arg: quantity_buy > 0
		do
			amount_buy := amount_buy + quantity_buy
		ensure
			valid_effect: amount_buy = old amount_buy + quantity_buy
		end

	add_action (quantity_action: INTEGER)
		-- Increases the number of player actions, with the number passed as parameter
		require
			valid_arg: quantity_action > 0
		do
			amount_action := amount_action + quantity_action
		ensure
			valid_effect: amount_action = old amount_action + quantity_action
		end

	add_coin (quantity_coin: INTEGER)
		-- Increases the number of player coins, with the number passed as parameter
		require
			valid_arg: quantity_coin > 0
		do
			amount_coin := amount_coin + quantity_coin
		ensure
			valid_effect: amount_coin = old amount_coin + quantity_coin
		end

	add_point_victory (quantity_point: INTEGER)
		-- Increases or decremented the number of point victory of player, with the number passed as parameter
		require
		do
			point_victory := point_victory + quantity_point
		ensure
			valid_effect: point_victory = old point_victory + quantity_point
		end

feature -- Operation about hand

	get_all_cards_hand(): ARRAY [STRING]
		-- Returns all cards of hand as "ids"
		require
			hand_current /= Void
		local
			i: INTEGER
		do
			from
				hand_current.start
				create result.make_filled ("", 1, hand_current.count)
				i:= 1
			until
				hand_current.index > hand_current.count
			loop
				result.put (hand_current.item.id, i)
				i := i + 1
				hand_current.forth
			end
		ensure
			valid_result: result.count = hand_current.count
		end

	get_new_hand()
		-- Gets a new hand for the player
		require
			hand_state: hand_current.is_empty
		do
			hand_current.append(draw_card_deck(hand_size_default))
		ensure
			lenght_hand: hand_current.count = 5
		end

	get_card_hand (id_card: STRING): G5_CARD
		-- Gets and removes a card in the hand. Returns VOID if the card is not in the hand
		require
			valid_arg: id_card /= Void
		local
			card: G5_CARD
			encountered: BOOLEAN
		do
			from
				hand_current.start
			until
				((hand_current.index > hand_current.count) or (encountered))
			loop
				if hand_current.item.id.is_equal (id_card) then
					result := hand_current.item
					hand_current.remove
					encountered := True
				end
				hand_current.forth
			end
			if (not encountered) then
				result := Void
			end
		ensure
			resulting_card: result = Void or result.id.is_equal (id_card)
		end

	adds_cards_hand(cards: LINKED_LIST [G5_CARD])
		-- Adds cards in hand
		require
			valid_arg: cards /= Void
		do
			hand_current.append (cards)
		ensure
			efect: hand_current.count = old hand_current.count + cards.count
		end

feature -- Operation about deck

	draw_card_deck (number_card: INTEGER): LINKED_LIST [G5_CARD]
		-- Gets of the deck, cards. The obtained number of cards is determined by the parameter
		require
			valid_arg: number_card > 0
		local
			i: INTEGER
			no_more_cards: BOOLEAN
		do
			from
				create result.make
				i := 0
			until
				i >= number_card or no_more_cards
			loop
				if deck.is_empty then
					translate_discard_pile_to_deck
					if deck.is_empty then
						no_more_cards := True
					else
						deck.shuffle
						result.extend (deck.item)
						deck.remove
						i := i + 1
					end
				else
					result.extend (deck.item)
					deck.remove
					i := i + 1
				end
			end
		ensure
			valid_result: (result.count = number_card) or (result.count < number_card and deck.is_empty and discard_pile.is_empty)
		end

feature -- Transfer of elements

	Scavenging()
		-- Translates the cards from the hand to the discard pile
		require
			state_elements: hand_current /= Void and discard_pile /= Void
		do
			discard_pile.append (hand_current)
			create hand_current.make
		ensure
			empty_hand: hand_current.is_empty
			length_discard_pile: discard_pile.count = old discard_pile.count + old hand_current.count
		end

	translate_deck_to_discard_pile()
		-- Move the deck to the discard pile.
		require
			state_elements: deck /= Void and discard_pile /= Void
		do
			discard_pile.append (deck)
			create deck.make
		ensure
			empty_deck: deck.is_empty
			length_discard_pile: discard_pile.count = old discard_pile.count + old deck.count
		end

	translate_discard_pile_to_deck()
		-- Move the discard pile to the deck.
		require
			state_elements: deck /= Void and discard_pile /= Void
		do
			deck.append (discard_pile)
			create discard_pile.make
		ensure
			empty_discard_pile: discard_pile.is_empty
			length_deck: deck.count = old discard_pile.count + old deck.count
		end

feature -- State finished

	count_victory_points():INTEGER
		-- Account victory points earned by the player
		require
			game_finished: table.is_finished
			hand_empty: hand_current.is_empty
			discard_pile_empty: discard_pile.is_empty
		local
			deck_clone: LINKED_STACK [G5_CARD]
		do
			from
				create deck_clone.make
				deck_clone.append (deck)
			until
				deck_clone.is_empty
			loop
				if deck_clone.item.type.has_substring ({G5_MACRO_CARDS}.victory)  then
					deck_clone.item.command2.execute
				end
				deck_clone.remove
			end
			result := point_victory
		ensure
		end

feature -- Player Status

	get_estate(): HASH_TABLE[INTEGER, STRING]
	-- Gets the most relevant information from player
	require
	do
		result.make (5)
		result.extend (amount_action, "ACTION")
		result.extend (amount_buy, "BUY")
		result.extend (amount_coin, "COIN")
		result.extend (deck.count, "DECK")
		result.extend (hand_current.count, "HAND")
	ensure
	end

end
