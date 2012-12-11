note
	description: "Represents the 'Pedro Ramirez' Character Card."
	author: "Team Crete12 of Group4"
	date: "5/12/2012"
	revision: "Tsampis"

class
	G4_CHARACTERS_PEDRO_RAMIREZ
	inherit G4_CHARACTERS

feature --Constructor
 	make
 	do
 	ensure
  		Character_Name.is_equal("Pedro Ramirez")
  		Character_Life = 4

 	end
end

