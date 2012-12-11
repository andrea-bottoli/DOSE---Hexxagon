note
	description: "Represents the 'Catling' Card."
	author: "Team Crete12 of Group4"
	date: "12/11/2012"
	revision: "tsampis"
class
	G4_ACTION_CARDS_GATLING
		inherit G4_ACTION_CARDS
		redefine action end

create
	make


feature --Constructor
 	make
 	do
 	ensure
  		Name.is_equal("Gatling")
  		(CardNum = 10)
  		CardSymbol.is_equal ("Hearts")

 	end

 	action(a_Player_array : ARRAY[G4_PLAYER]; a_player_id: INTEGER; a_player_target: INTEGER; Draw_Pile: G4_DRAW_PILE)
 	local
 		i: INTEGER
	do
		from i:=0 until i = a_Player_array.count + 1 --check array start
		loop
			if((i /= a_player_id) or (a_Player_array[i].reaction (a_Player_array,a_player_id,current,Draw_Pile)/=true))then
				a_Player_array[i].get_item_board.discard_life (1)
			end
			i := i+1
		end
	end

end

