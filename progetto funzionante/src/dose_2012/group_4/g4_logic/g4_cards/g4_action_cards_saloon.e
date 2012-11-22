note
	description: "Represents the 'Saloon' Card."
	author: "Team Crete12 of Group4"
	date: "12/11/2012"
	revision: "tsampis"

class
	G4_ACTION_CARDS_SALOON
	inherit G4_ACTION_CARDS
		redefine action end

create
	make


feature --Constructor
 	make
 	do
 	ensure
  		Name.is_equal("Saloon")
  		(CardNum = 5)
  		CardSymbol.is_equal ("Hearts")

 	end

feature
	action --Set the action move of the card
	do	end
end
