note
	description: "This class will contains info about one player info."
	author: "Gabriele Fanchini"
	date: "18.11.2012"
	revision: "1.1"

class
	G5_PLAYER_INFO

create
	make

feature

	make(my_name: STRING)
		-- This will set the name of the player
		require
			valid_arg: my_name /= void
		do
			player_name := my_name
		end

	set_number_of_cards_deck(a_value:INTEGER)
		require
			valid_arg: a_value >=0
		do
			number_of_cards_deck := a_value
		end

	set_number_of_cards_hand(a_value:INTEGER)
		require
			valid_arg: a_value >=0
		do
			number_of_cards_hand:= a_value
		end

	set_top_card_discard_pile(a_card: STRING)
		require
			valid_arg: a_card/=void
		do
			top_card_discard_pile := a_card
		end


feature -- Variable

	player_name: STRING
		-- The name that i used to register myself during the connection to the server

	number_of_cards_deck: INTEGER
		-- The number of cards in the deck

	number_of_cards_hand: INTEGER
		-- the number of cards in the hand of this player

	top_card_discard_pile: STRING
		-- The top card of the discard pile

end
