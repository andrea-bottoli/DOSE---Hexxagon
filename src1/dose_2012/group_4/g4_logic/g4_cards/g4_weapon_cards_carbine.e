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
 		set_Name("Rev.Carbine")
 	ensure
  		Name.is_equal("Rev.Carbine")
 	end
end
