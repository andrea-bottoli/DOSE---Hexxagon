note
	description: "This class displays a pop-up that is invoked when a thief card is played."
	author: "Gabriele Fanchini"
	date: "17.11.2012"
	revision: "1.0"

class
	G5_POP_UP_THIEF

create
	make

feature
	make(owner_player: STRING; the_revealed_cards: HASH_TABLE[STRING,STRING])
		-- the constructor of the class
		require
			valid_arg: owner_player/= void
			valid__arg: the_revealed_cards/= void
		do
			owner_thief_card:= owner_player
			revealed_cards:= the_revealed_cards
		end

feature -- variables

	owner_thief_card: STRING
		-- who played the thief card

	revealed_cards: HASH_TABLE [STRING,STRING]
		-- an hash_table in the form: player name (key) and a string in form (card_ID,card_ID)
end
