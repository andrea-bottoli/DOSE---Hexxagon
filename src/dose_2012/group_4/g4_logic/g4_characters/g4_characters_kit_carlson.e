note
	description: "Represents the 'Kit Carlson' Character Card."
	author: "Team Crete12 of Group4"
	date: "5/12/2012"
	revision: "Tsampis"

class
	G4_CHARACTERS_KIT_CARLSON
	inherit G4_CHARACTERS

create
	make

feature --Constructor
 	make
 	do
 		set_character_name("Kit Carlson")
 		set_character_life(4)
 	ensure
  		Character_Name.is_equal("Kit Carlson")
  		Character_Life = 4

 	end
end

