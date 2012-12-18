note
	description: "Represents the 'Jail' Card."
	author: "Team Crete12 of Group4"
	date: "12/11/2012"
	revision: "tsampis"

class
	G4_ITEM_CARDS_JAIL
	inherit G4_ITEM_CARDS
		redefine action end

create
	make


feature --Constructor
 	make
 	do
 		set_Name("Jail")
 	ensure
  		Name.is_equal("Jail")
 	end

feature
	action(a_Player_array : ARRAYED_LIST[G4_PLAYER];a_player_id: INTEGER;a_player_target: INTEGER;Draw_Pile: G4_DRAW_PILE) --Set the action move of the card
	do	end

feature
	go_to(a_Player_array : LINKED_LIST[G4_PLAYER];a_player_target: INTEGER)
	do
		a_Player_array[a_player_target].get_item_board.add_item (current)
	end
end
