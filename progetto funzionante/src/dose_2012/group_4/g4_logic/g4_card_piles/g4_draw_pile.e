note
	description: "The main class for the game's Drawpile "
	author: "Team Crete12 of Group4"
	date:"13/11/2012"
	revision: "kutsukos"

class
	G4_DRAW_PILE
	Inherit G4_CARD_PILES
create
	make

feature --Constructor
	make
	do

	end

feature --Player's Actions

	pop: G4_CARDS
	do
	ensure
		Result.is_equal(Card_Pile.first)
	end

feature --Getter

	get_is_empty(): BOOLEAN
	do

	end
end
