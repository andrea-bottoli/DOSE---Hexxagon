note
 	description: "Summary description for {G5_PLAYER}."
	author: "Team: Rio Cuarto 4"
 	date: "$17/11/2012$"
 	revision: "$0.1$"

class
 	G5_PLAYER

create
	make

feature {ANY} -- Intialization

	make (id_player: INTEGER; name_player: STRING)
		-- Create a new player
		require
			valid_arg: name /= VOID
		do
		ensure
			initial_references: table /= VOID
			initial_atribute: name = name_player
			initial_Measurements: amount_action = 1 and amount_buy = 1 and amount_coin = 0 point_victory = 0
			initial_elements: (deck /= VOID and deck.is_empty = FALSE) and (hand_current /= VOID and hand_current.is_empty = FALSE) and (deck /= VOID and deck.is_empty = FALSE) and (hand_current /= VOID and hand_current.is_empty = FALSE)
		end

feature -- Atributes

	name: STRING
		-- Identifies a player

feature -- Elements

	deck: G5_DECK [G5_CARD]
 		-- Deck of play

 	hand_current: LIST [G5_CARD]
 		-- Contains the hand current of player

	discard_pile: STACK [G5_CARD]
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

feature -- Actions of Player

	play_card(card: G5_CARD)
		-- Play the card that is passed as a parameter
		require
			valid_arg:(card.type.has_substring("action") and card /= VOID)
			phase_action: table.phase_current = "ACTION"
		do
		ensure
		end

	get_card_supply(id_card: STRING): G5_CARD
		-- Search a card in the supply by id. If this is found then is returned
		require
			valid_arg: id_card /= void
		do
		ensure
			resulting_card: result = VOID or result.id = id_card
		end

feature -- Efect by Cards Action

	add_buy (quantity_buy: INTEGER)
		-- Increases the number of player buys, with the number passed as parameter
		require
			valid_arg: amount_buy > 0
		do
		ensure
			valid_effect: amount_buy = old amount_buy + quantity_buy
		end

	add_action (quantity_action: INTEGER)
		-- Increases the number of player actions, with the number passed as parameter
		require
			valid_arg: amount_action > 0
		do
		ensure
			valid_effect: amount_action = old amount_action + quantity_action
		end

	add_coin (quantity_coin: INTEGER)
		-- Increases the number of player coins, with the number passed as parameter
		require
			valid_arg: amount_coin > 0
		do
		ensure
			valid_effect: amount_coin = old amount_coin + quantity_coin
		end

feature -- Operation about hand

	get_new_hand()
		-- Gets a new hand for the player
		require
			hand_state: hand_current.is_empty
		do
		ensure
			lenght_hand: hand_current.count = 5
		end

	get_card_hand (id_card: STRING): G5_CARD
		-- Gets and removes a card in the hand. Returns VOID if the card is not in the hand
		require
			valid_arg: id_card /= VOID
		do
		ensure
			resulting_card: result = VOID or result.id = id_card
		end

feature -- Operation about deck

	draw_card_deck (number_card: INTEGER): ARRAY [G5_CARD]
		-- Gets of the deck, cards. The obtained number of cards is determined by the parameter
		require
			valid_arg: number_card > 0
		do
		ensure
			result.count = number_card
		end

feature -- Transfer of elements

	Scavenging()
		-- Translates the cards from the hand to the discard pile
		require
			state_elements: hand_current /= VOID and discard_pile /= VOID
		do
		ensure
			empty_hand: hand_current.is_empty
			length_discard_pile: discard_pile.count = old discard_pile.count + old hand_current.count
		end

	translate_deck_to_discard_pile()
		-- Move the deck to the discard pile.
		require
			state_elements: deck /= VOID and discard_pile /= VOID
		do
		ensure
			empty_deck: deck.is_empty
			length_discard_pile: discard_pile.count = old discard_pile.count + old deck.count
		end

	translate_discard_pile_to_deck()
		-- Move the discard pile to the deck.
		require
			state_elements: deck /= VOID and discard_pile /= VOID
		do
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
		do
		ensure
		end

end
