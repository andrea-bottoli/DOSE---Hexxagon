note
	description: "This class will contains info about the player that are playing using this device."
	author: "Gabriele Fanchini"
	date: "18.11.2012"
	revision: "1.1"

class
	G5_MY_INFO

inherit
	G5_PLAYER_INFO
create
	make
feature

	set_cards_in_the_hand(a_list_of_cards: ARRAY[STRING])
		require
			valid_arg: a_list_of_cards /= void
			valid_size: a_list_of_cards.count >0
		local
			i:INTEGER
		do
			from
				i:=1
			until
				i>a_list_of_cards.count
			loop
				cards_in_the_hand.put(a_list_of_cards[i], cards_in_the_hand.count +1)
				i:=i+1
			end
		end


feature -- Variable

	cards_in_the_hand: ARRAY[STRING]
		-- The list of cards in the hand

end
