note
	description: "Class that represents a message of finish turn for net."
	author: "Group 1:  Rio Cuarto 7 - Milano 7"
	date: "$Date$"
	revision: "$Revision$"

class
	G1_MESSAGE_FINISH

inherit

	G1_MESSAGE

create
	make, make_finish

feature -- Initialization

	make
			-- Initialize the message whit default values
		do
			finish_turn := False
		end

	make_finish (a_finish_turn: BOOLEAN)
		require
			valid_finish_turn: a_finish_turn = True
		do
			finish_turn := a_finish_turn
		end

feature --Measurent

	finish_turn: BOOLEAN
			-- If true player's turn finalize

end
