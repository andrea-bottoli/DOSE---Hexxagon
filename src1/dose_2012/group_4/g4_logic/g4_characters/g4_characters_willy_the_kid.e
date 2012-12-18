note
	description: "Represents the 'Willy the Kid' Character Card."
	author: "Team Crete12 of Group4"
	date: "5/12/2012"
	revision: "Tsampis"

class
	G4_CHARACTERS_WILLY_THE_KID
	inherit G4_CHARACTERS

create
	make

feature --Constructor
 	make
 	do
 		set_character_name("Willy the Kid")
 		set_character_life(4)
 	ensure
  		Character_Name.is_equal("Willy the Kid")
  		Character_Life = 4

 	end
end
