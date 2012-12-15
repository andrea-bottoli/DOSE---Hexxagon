note
	description: "Represents the 'Bang!' Card."
	author: "Team Crete12 of Group4"
	date: "12/11/2012"
	revision: "tsampis"

class
	G4_ACTION_CARDS_BANG
	inherit G4_ACTION_CARDS
	redefine action end

create
	make


feature --Constructor
 	make
 	do
 		set_Name("Bang!")
 		CardNum:=0
 	ensure
  		Name.is_equal("Bang!")
 	end

 	action(a_Player_array : ARRAYED_LIST[G4_PLAYER]; a_player_id: INTEGER; a_player_target: INTEGER; Draw_Pile: G4_DRAW_PILE)
	do
		if(a_Player_array[a_player_target].reaction (a_Player_array,a_player_id,current,Draw_Pile)/=true) then --?? not sure
			a_Player_array[a_player_target].get_item_board.discard_life (1)
		end
	end

end


