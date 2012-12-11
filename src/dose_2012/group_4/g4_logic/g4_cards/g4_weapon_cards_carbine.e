note
	description: "Represents the 'Rev. Carbine' Card."
	author: "Team Crete12 of Group4"
	date: "12/11/2012"
	revision: "tsampis"

class
	G4_WEAPON_CARDS_CARBINE
		inherit G4_WEAPON_CARDS
create
	make

feature --Constructor
 	make
 	do
 	ensure
  		Name.is_equal("Rev.Carbine")
  		(CardNum = 13)
  		CardSymbol.is_equal ("Clubs")

 	end
end
