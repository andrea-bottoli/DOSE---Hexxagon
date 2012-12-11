note
	description: "Represents the 'Schofield' Card."
	author: "Team Crete12 of Group4"
	date: "12/11/2012"
	revision: "tsampis"

class
	G4_WEAPON_CARDS_SCHOFIELD
		inherit G4_WEAPON_CARDS
create
	make

feature --Constructor
 	make
 	do
 	ensure
  		Name.is_equal("Schofield")
  		(CardNum >= 10) and (CardNum<=12)
  		CardSymbol.is_equal ("Clubs")
  		CardSymbol.is_equal ("Spades")
 	end
end
