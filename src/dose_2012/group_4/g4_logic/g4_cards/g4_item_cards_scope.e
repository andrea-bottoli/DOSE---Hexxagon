note
	description: "Represents the 'Scope' Card."
	author: "Team Crete12 of Group4"
	date: "12/11/2012"
	revision: "tsampis"

class
	G4_ITEM_CARDS_SCOPE
	inherit G4_ITEM_CARDS
		redefine action end

create
	make


feature --Constructor
 	make
 	do
 		set_Name ("Scope")
 	ensure
  		Name.is_equal("Scope")
 	end

feature
	action(a_Player_array : ARRAYED_LIST[G4_PLAYER];a_player_id: INTEGER;a_player_target: INTEGER;Draw_Pile: G4_DRAW_PILE;DiscardPile : G4_DISCARD_PILE) --Set the action move of the card
	do
		a_Player_array[a_player_id].get_item_board.add_item (current)
		a_Player_array[a_player_id].get_item_board.set_player_max_distance (a_Player_array[a_player_id].get_item_board.get_player_life + 1)
		--stays forever?
	end
end
