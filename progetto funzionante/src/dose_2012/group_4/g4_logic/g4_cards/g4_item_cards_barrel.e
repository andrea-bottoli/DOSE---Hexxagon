note
	description: "Represents the 'Barrel' Card."
	author: "Team Crete12 of Group4"
	date: "12/11/2012"
	revision: "tsampis"

class
	G4_ITEM_CARDS_BARREL
	inherit G4_ITEM_CARDS
		redefine action end

create
	make


feature --Constructor
 	make
 	do
 	ensure
  		Name.is_equal("Barrel")
  		(CardNum >= 11) and (CardNum<=12)
  		CardSymbol.is_equal ("Spades")

 	end

feature
	action --Set the action move of the card
	do	end
end
