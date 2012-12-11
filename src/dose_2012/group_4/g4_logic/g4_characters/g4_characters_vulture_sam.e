note
	description: "Represents the 'Vulture Sam' Character Card."
	author: "Team Crete12 of Group4"
	date: "5/12/2012"
	revision: "Tsampis"

class
	G4_CHARACTERS_VULTURE_SAM
	inherit G4_CHARACTERS

feature --Constructor
 	make
 	do
 	ensure
  		Character_Name.is_equal("Vulture Sam")
  		Character_Life = 4

 	end
end

