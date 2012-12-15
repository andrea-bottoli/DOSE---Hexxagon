note
	description: "Class that represents a message of move player for net."
	author: "Group 1:  Rio Cuarto 7 - Milano 7: Federico Pereyra"
	date: "$Date$"
	revision: "$Revision$"

class
	G1_MESSAGE_MOVE

inherit

	G1_MESSAGE

create
	make_move

feature -- Initialization

	make_move (a_id_player: INTEGER; a_position: INTEGER)
		require
			valid_position: a_position >= 0 and a_position < 40
			valid_id: a_id_player > 0
		do
			id_player := a_id_player
			position := a_position
		end

feature --Measurent

	id_player: INTEGER
			-- Id player

	position: INTEGER
			-- Position where the player will move

end
