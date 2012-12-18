note
	description: "Represents the 'Rose Dollan' Character Card."
	author: "Team Crete12 of Group4"
	date: "5/12/2012"
	revision: "Tsampis"
class
	G4_CHARACTERS_ROSE_DOLLAN
	inherit G4_CHARACTERS
	redefine action end

create
	make

feature --Constructor
 	make
 	do
 		set_character_name("Rose Doolan")
 		set_character_life(4)
 	ensure
  		Character_Name.is_equal("Rose Doolan")
  		Character_Life = 4

 	end

feature
	action(a_Player_array : ARRAYED_LIST[G4_PLAYER];a_player_id: INTEGER;Draw_Pile: G4_DRAW_PILE) --Set the action move of the card
	do
		a_Player_array[a_player_id].get_item_board.set_player_max_distance (a_Player_array[a_player_id].get_item_board.get_player_life + 1)
		--stays forever?
	end
end

