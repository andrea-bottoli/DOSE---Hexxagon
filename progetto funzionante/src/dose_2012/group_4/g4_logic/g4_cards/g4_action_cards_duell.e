note
	description: "Represents the 'Duelo' Card."
	author: "Team Crete12 of Group4"
	date: "12/11/2012"
	revision: "tsampis"

class
	G4_ACTION_CARDS_DUELL
	inherit G4_ACTION_CARDS
		redefine action end

create
	make


feature --Constructor
 	make
 	do
 	ensure
  		Name.is_equal("Duell")
  		(CardNum = 8) and (CardNum =11) or (CardNum = 12)
  		CardSymbol.is_equal ("Spades")
  		CardSymbol.is_equal ("Clubs")
  		CardSymbol.is_equal ("Diamnonds")

 	end

feature
	action --Set the action move of the card
	do	end
end
