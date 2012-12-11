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
	make, make_position

feature -- Initialization

	make
			-- Initialize the message whit default values
		do
			position := 0
		end

	make_position (a_position: INTEGER)
		require
			valid_position: a_position >= 0 and a_position < 40
		do
			position := a_position
		end

feature --Measurent

	position: INTEGER
			-- Position where the player will move

end
