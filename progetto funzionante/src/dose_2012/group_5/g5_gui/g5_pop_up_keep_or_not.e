note
	description: "This class displays a pop-up with a card, and asks to the player if he wants to take or not this."
	author: "Gabriele Fanchini"
	date: "17.11.2012"
	revision: "1.0"

class
	G5_POP_UP_KEEP_OR_NOT

create
	make

feature
	make (a_card: STRING)
		-- The constructor of the class
		require
			valid_arg: a_card /= void
		do
			card := a_card
		end

feature -- variables
	card: STRING
		-- the card to be displayed

end
