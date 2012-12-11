note
	description: "Represents the 'Bart Cassidy' Character Card."
	author: "Team Crete12 of Group4"
	date: "5/12/2012"
	revision: "Tsampis"

class
	G4_CHARACTERS_BART_CASSIDY
	inherit G4_CHARACTERS

create
	make

feature --Constructor
 	make
 	do
 	ensure
  		Character_Name.is_equal("Bart Cassidy")
  		Character_Life = 4
 	end
end
