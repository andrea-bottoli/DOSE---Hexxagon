note
	description: "The main class for the game's character's pile"
	author: "Team Crete12 of Group4"
	date:"13/11/2012"
	revision: "kutsukos"

class
	G4_CHARACTER_PILE
	inherit G4_CARD_PILES
create
	make

feature --Constructor
	make()
	do

	end
feature --Attributes
	character_pile: LINKED_LIST[G4_CHARACTERS]
	do

	end
feature --Rest functions
	player_pick():G4_CARDS --Each Player picks a card
	do

	end
end
