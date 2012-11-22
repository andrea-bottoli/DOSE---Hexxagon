note
	description: "Represents the 'Mancato' Card."
	author: "Team Crete12 of Group4"
	date: "12/11/2012"
	revision: "tsampis"

class
	G4_ACTION_CARDS_MISS
	inherit G4_ACTION_CARDS
		redefine action end

create
	make


feature --Constructor
 	make
 	do
 	ensure
  		Name.is_equal("Miss")
  		(CardNum >= 2) and (CardNum<=13)
  		CardSymbol.is_equal ("Spades")
  		CardSymbol.is_equal ("Clubs")
 	end

feature
	action --Set the action move of the card
	do	end
end
