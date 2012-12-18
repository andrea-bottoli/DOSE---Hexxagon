note
	description: "Represents the 'Winchester' Card."
	author: "Team Crete12 of Group4"
	date: "12/11/2012"
	revision: "tsampis"

class
	G4_WEAPON_CARDS_WINCHESTER
	inherit G4_WEAPON_CARDS
create
	make

feature --Constructor
 	make
 	do
 		set_Name("Winchester")
 	ensure
  		Name.is_equal("Winchester")
 	end
end
