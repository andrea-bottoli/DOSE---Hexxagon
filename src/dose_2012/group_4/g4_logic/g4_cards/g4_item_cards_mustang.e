note
	description: "Represents the 'Mustang' Card."
	author: "Team Crete12 of Group4"
	date: "12/11/2012"
	revision: "tsampis"

class
	G4_ITEM_CARDS_MUSTANG
	inherit G4_ITEM_CARDS
	redefine action end

create
	make


feature --Constructor
 	make
 	do
 		set_Name("Mustang")
 	ensure
  		Name.is_equal("Mustang")
 	end

 	action(a_Player_array : ARRAYED_LIST[G4_PLAYER];a_player_id: INTEGER;a_player_target: INTEGER;Draw_Pile: G4_DRAW_PILE;DiscardPile : G4_DISCARD_PILE)
 	do
 		a_Player_array[a_player_id].get_item_board.add_item (current)
 		--Implemented in get_distance in Item_Board
 	end
end
