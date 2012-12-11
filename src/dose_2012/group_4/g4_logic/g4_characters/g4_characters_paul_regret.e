note
	description: "Represents the 'Paul Regret' Character Card."
	author: "Team Crete12 of Group4"
	date: "5/12/2012"
	revision: "Tsampis"

class
	G4_CHARACTERS_PAUL_REGRET
	inherit G4_CHARACTERS
	redefine action end

feature --Constructor
 	make
 	do
 	ensure
  		Character_Name.is_equal("Paul Regret")
  		Character_Life = 3

 	end

feature
	action(a_Player_array : ARRAY[G4_PLAYER];a_player_id: INTEGER;Draw_Pile: G4_DRAW_PILE)
	do	end
end

