note
	description: "Represents the 'Diligenza' Card."
	author: "Team Crete12 of Group4"
	date: "12/11/2012"
	revision: "tsampis"

class
	G4_ACTION_CARDS_STAGECOACH
	inherit G4_ACTION_CARDS
	redefine action end

create
	make


feature --Constructor
 	make
 	do
 		set_Name("Stagecoach")
 	ensure
  		Name.is_equal("Stagecoach")
 	end

 	action(a_Player_array : ARRAYED_LIST[G4_PLAYER]; a_player_id: INTEGER; a_player_target: INTEGER; Draw_Pile: G4_DRAW_PILE)
	do
		a_Player_array[a_player_id].draw (Draw_Pile)
		a_Player_array[a_player_id].draw (Draw_Pile)
	end
end
