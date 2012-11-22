note
	description: "Represents the 'Dynamite' Card."
	author: "Team Crete12 of Group4"
	date: "12/11/2012"
	revision: "tsampis"

class
	G4_ITEM_CARDS_DYNAMITE
	inherit G4_ITEM_CARDS
		redefine action end

create
	make


feature --Constructor
 	make
 	do
 	ensure
  		Name.is_equal("Dynamite")
  		(CardNum = 2)
  		CardSymbol.is_equal ("Hearts")

 	end

feature
	action --Set the action move of the card
	do	end
end
