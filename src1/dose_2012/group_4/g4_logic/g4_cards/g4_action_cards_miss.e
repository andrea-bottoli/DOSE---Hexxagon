note
	description: "Represents the 'Mancato' Card."
	author: "Team Crete12 of Group4"
	date: "12/11/2012"
	revision: "tsampis"

class
	G4_ACTION_CARDS_MISS
	inherit G4_ACTION_CARDS
	redefine action end

create
	make


feature --Constructor
 	make
 	do
 		set_Name("Miss")
 	ensure
  		Name.is_equal("Miss")
 	end

 	action(a_Player_array : ARRAYED_LIST[G4_PLAYER]; a_player_id: INTEGER; a_player_target: INTEGER; Draw_Pile: G4_DRAW_PILE)
	do
		--Implemented as reaction
	end

end