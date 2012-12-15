note
	description: "Class that represents a message of name player for net."
	author: "Group 1:  Rio Cuarto 7 - Milano 7: Federico Pereyra"
	date: "$Date$"
	revision: "$Revision$"

class
	G1_MESSAGE_ADD_PLAYER

inherit

	G1_MESSAGE

create
	make_add_player

feature -- Initialization

	make_add_player (a_id_player: INTEGER; a_name: STRING)
		do
			name := a_name
			id_player := a_id_player
		end

feature --Measurent

	name: STRING
			-- Name of the player

	id_player: INTEGER
			-- Id of the player

end
