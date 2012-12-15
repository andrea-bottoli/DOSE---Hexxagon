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
	make_finish

feature -- Initialization

	make_finish (a_player_id: INTEGER)
		require
			valid_id_player: a_player_id > 0
		do
			player_id := a_player_id
		end

feature --Measurent

	player_id: INTEGER
			-- Id of the player who finish turn

end
