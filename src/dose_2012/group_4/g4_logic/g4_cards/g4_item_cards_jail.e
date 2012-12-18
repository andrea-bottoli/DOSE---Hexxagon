note
	description: "Represents the 'Jail' Card."
	author: "Team Crete12 of Group4"
	date: "12/11/2012"
	revision: "tsampis"

class
	G4_ITEM_CARDS_JAIL
	inherit G4_ITEM_CARDS

create
	make


feature --Constructor
 	make
 	do
 		set_Name("Jail")
 	ensure
  		Name.is_equal("Jail")
 	end


end
