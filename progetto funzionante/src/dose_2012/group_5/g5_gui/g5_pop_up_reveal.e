note
	description: "This class displays a pop-up containing a list of cards."
	author: "Gabriele Fanchini"
	date: "17.11.2012"
	revision: "1.0"

class
	G5_POP_UP_REVEAL

create
	make
feature

	make(a_player: STRING; a_list_of_cards: ARRAY[STRING])
		--The constructor of the class
		require
			valid_arg: a_list_of_cards /= void
			valid_arg: a_player /= void
		do
			list_of_cards:= a_list_of_cards
			player:= a_player
		end

feature -- Variable

	list_of_cards: ARRAY[STRING]
		-- The list of cards to be displayed

	player:STRING
		-- the player that reveal cards

end
