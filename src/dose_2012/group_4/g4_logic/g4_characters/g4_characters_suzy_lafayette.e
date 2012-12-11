note
	description: "Represents the 'Suzy Lafayette' Character Card."
	author: "Team Crete12 of Group4"
	date: "5/12/2012"
	revision: "Tsampis"

class
	G4_CHARACTERS_SUZY_LAFAYETTE
	inherit G4_CHARACTERS
	redefine action end

feature --Constructor
 	make
 	do
 	ensure
  		Character_Name.is_equal("Suzy Lafayette")
  		Character_Life = 4

 	end


feature
 	action(a_Player_array : ARRAY[G4_PLAYER];a_player_id: INTEGER;Draw_Pile: G4_DRAW_PILE)
	do
		if(a_Player_array[a_player_id].get_player_hand.is_empty) then
			a_Player_array[a_player_id].draw (Draw_Pile)
		end
	end
end

