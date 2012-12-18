note
	description: "Represents the 'Beer' Card."
	author: "Team Crete12 of Group4"
	date: "12/11/2012"
	revision: "tsampis"

class
	G4_ACTION_CARDS_BEER
		inherit G4_ACTION_CARDS
		redefine action end

create
	make


feature --Constructor
 	make
 	do
 		set_Name("Beer")
 	ensure
  		Name.is_equal("Beer")
 	end

 	 	action(a_Player_array : ARRAYED_LIST[G4_PLAYER]; a_player_id: INTEGER; a_player_target: INTEGER; Draw_Pile: G4_DRAW_PILE;DiscardPile : G4_DISCARD_PILE)
	do
		if(a_Player_array[a_player_id].get_item_board.get_player_life <
		   a_Player_array[a_player_id].get_item_board.get_player_character.get_character_life)then

			a_Player_array[a_player_id].get_item_board.add_life (1)
		end
	end

end


