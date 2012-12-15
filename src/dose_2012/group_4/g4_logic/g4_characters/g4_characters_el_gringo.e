note
	description: "Represents the 'El Gringo' Character Card."
	author: "Team Crete12 of Group4"
	date: "5/12/2012"
	revision: "Tsampis"

class
	G4_CHARACTERS_EL_GRINGO
	inherit G4_CHARACTERS

create
	make

feature --Constructor
 	make
 	do
 		set_character_name("El Gringo")
 		set_character_life(3)
 	ensure
  		Character_Name.is_equal("El Gringo")
  		Character_Life = 3

 	end
end

