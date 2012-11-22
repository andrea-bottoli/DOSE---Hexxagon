note
	description: "Represents the 'Jail' Card."
	author: "Team Crete12 of Group4"
	date: "12/11/2012"
	revision: "tsampis"

class
	G4_ITEM_CARDS_JAIL
	inherit G4_ITEM_CARDS
		redefine action end

create
	make


feature --Constructor
 	make
 	do
 	ensure
  		Name.is_equal("Jail")
  		(CardNum = 4) or (CardNum<=10) or (CardNum = 11)
  		CardSymbol.is_equal ("Spades")
  		CardSymbol.is_equal ("Hearts")

 	end

feature
	action --Set the action move of the card
	do	end
end
