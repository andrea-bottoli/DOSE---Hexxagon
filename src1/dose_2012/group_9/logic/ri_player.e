note
	description: "Summary description for {PLAYER}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	RI_PLAYER

  create
  	make

   feature

   	id: INTEGER

    name: STRING

    color: STRING

    turn_token: BOOLEAN

    make
       do
       	--initialize the player
       end

end
