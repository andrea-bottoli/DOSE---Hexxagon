note
	description: "Class that represents a message of mortgage for net."
	author: "Group 1:  Rio Cuarto 7 - Milano 7: Federico Pereyra"
	date: "$Date$"
	revision: "$Revision$"

class
	G1_MESSAGE_MORTGAGE

inherit

	G1_MESSAGE

create
	make_mortgage

feature -- Initialization

	make_mortgage (a_id_player: INTEGER; a_id_deed: INTEGER; a_mortgage: BOOLEAN)
		require
			valid_player_id: a_id_player > 0
			valid_deed_id: a_id_deed >= 0 and a_id_deed < 29
		do
			id_player := a_id_player
			id_deed := a_id_deed
			mortgage := a_mortgage
		end

feature --Measurent

	id_player: INTEGER
			-- Id of the player

	id_deed: INTEGER
			-- Id representing the property mortgage or unmortgage

	mortgage: BOOLEAN
			-- If true the property will mortgage, else the property will be unmortgage

end
