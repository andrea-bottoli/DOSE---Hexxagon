note
	description: "The main class for the game's piles "
	author: "Team Crete12 of Group4"
	date:"13/11/2012"
	revision: "kutsukos"

deferred class G4_CARD_PILES
	inherit G4_CARDS

feature --Attributes
	Card_Pile: LINKED_LIST [G4_CARDS] --A simple linked list that contains all different pile of cards

feature --Function
	shuffle(Pile: LINKED_LIST[G4_CARDS]):LINKED_LIST[G4_CARDS] --suffles the cards on the pile
	do

	end
end
