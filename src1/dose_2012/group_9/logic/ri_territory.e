note
	description: "Summary description for {TERRITORY}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	RI_TERRITORY
 create
 	make
 feature
   id: INTEGER
   owner: RI_PLAYER
   army_count: INTEGER
   artillery_count: INTEGER

 	make
 	 do
 	   --initialize the territory	
 	 end


end
