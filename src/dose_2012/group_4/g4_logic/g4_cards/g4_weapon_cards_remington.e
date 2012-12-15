note
	description: "Represents the 'Remington' Card."
	author: "Team Crete12 of Group4"
	date: "12/11/2012"
	revision: "tsampis"

class
	G4_WEAPON_CARDS_REMINGTON
	inherit G4_WEAPON_CARDS
create
	make

feature --Constructor
 	make
 	do
 		set_Name("Remington")
 	ensure
  		Name.is_equal("Remington")
 	end
end
