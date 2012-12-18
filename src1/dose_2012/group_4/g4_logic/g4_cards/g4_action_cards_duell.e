note
	description: "Represents the 'Duelo' Card."
	author: "Team Crete12 of Group4"
	date: "12/11/2012"
	revision: "tsampis"

class
	G4_ACTION_CARDS_DUELL
	inherit G4_ACTION_CARDS
	redefine action end

create
	make


feature --Constructor
 	make
 	do
 		set_Name("Duell")
 	ensure
  		Name.is_equal("Duell")
 	end

 	action(a_Player_array : ARRAYED_LIST[G4_PLAYER]; a_player_id: INTEGER; a_player_target: INTEGER; Draw_Pile: G4_DRAW_PILE)
 	local
 		flag_1 : BOOLEAN
 		flag_2 : BOOLEAN
	do
		flag_1 := TRUE
		flag_2 := TRUE
		from flag_1:= TRUE until ((flag_1 = FALSE) or (flag_2 = FALSE))
		loop
			flag_1 := a_Player_array[a_player_target].reaction (a_Player_array,a_player_id,current,Draw_Pile)
			flag_2 := a_Player_array[a_player_id].reaction (a_Player_array,a_player_id,current,Draw_Pile)
		end

		if(flag_1 = FALSE) then
			a_Player_array[a_player_target].get_item_board.discard_life (1)
		elseif (flag_2 = FALSE) then
			a_Player_array[a_player_id].get_item_board.discard_life (1)
		end
	end
end
