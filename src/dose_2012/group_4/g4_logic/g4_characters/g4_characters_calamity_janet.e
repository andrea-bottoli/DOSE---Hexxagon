note
	description: "Represents the 'Calamity Janet' Character Card."
	author: "Team Crete12 of Group4"
	date: "5/12/2012"
	revision: "Tsampis"
class
	G4_CHARACTERS_CALAMITY_JANET
	inherit G4_CHARACTERS

feature --Constructor
 	make
 	do
 	ensure
  		Character_Name.is_equal("Calamity Janet")
  		Character_Life = 4

 	end
end

