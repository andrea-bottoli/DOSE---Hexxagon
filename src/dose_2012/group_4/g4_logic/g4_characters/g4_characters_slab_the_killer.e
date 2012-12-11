note
	description: "Represents the 'Slab the Killer' Character Card."
	author: "Team Crete12 of Group4"
	date: "5/12/2012"
	revision: "Tsampis"

class
	G4_CHARACTERS_SLAB_THE_KILLER
	inherit G4_CHARACTERS

feature --Constructor
 	make
 	do
 	ensure
  		Character_Name.is_equal("Slab the Killer")
  		Character_Life = 4

 	end
end

