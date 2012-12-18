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

	make_finish (a_player_id: INTEGER; a_finish_turn: BOOLEAN; a_i_am_in_jail: BOOLEAN)
		require
			valid_id_player: a_player_id > 0
		do
			player_id := a_player_id
			finish_turn := a_finish_turn
			i_am_in_jail := a_i_am_in_jail
		end

feature --Measurent

	player_id: INTEGER
			-- Id of the player who finish turn

	finish_turn: BOOLEAN
			-- Is the player finishing his turn?

	i_am_in_jail: BOOLEAN
			-- Is the player in jail?

end
