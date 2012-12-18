note
	description: "Represents the 'Saloon' Card."
	author: "Team Crete12 of Group4"
	date: "12/11/2012"
	revision: "tsampis"

class
	G4_ACTION_CARDS_SALOON
	inherit G4_ACTION_CARDS
	redefine action end
create
	make


feature --Constructor
 	make
 	do
	 	set_Name("Saloon")
 	ensure
  		Name.is_equal("Saloon")
 	end

 	action(a_Player_array : ARRAYED_LIST[G4_PLAYER]; a_player_id: INTEGER; a_player_target: INTEGER; Draw_Pile: G4_DRAW_PILE)
 	local
 		i: INTEGER
	do
		from i:=0 until i = a_Player_array.count + 1 --check array start
		loop
			a_Player_array[i].get_item_board.add_life (1)
			i := i+1
		end

		if(i = a_player_id) then
			a_Player_array[i].get_item_board.add_life (1)
		end

	end

end
