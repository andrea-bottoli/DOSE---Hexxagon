note
	description: "Represents the 'Sid Ketchum' Character Card."
	author: "Team Crete12 of Group4"
	date: "5/12/2012"
	revision: "Tsampis"

class
	G4_CHARACTERS_SID_KETCHUM
	inherit G4_CHARACTERS
	redefine action end

create
	make

feature --Constructor
 	make
 	do
 		set_character_name("Sid Ketchum")
 		set_character_life(4)
 	ensure
  		Character_Name.is_equal("Sid Ketchum")
  		Character_Life = 4

 	end

feature
 	action(a_Player_array : ARRAYED_LIST[G4_PLAYER];a_player_id: INTEGER;Draw_Pile: G4_DRAW_PILE)
 	local
 		i :INTEGER
	do
		from i:= 1 until i = 3
		loop
			io.put_string ("Choose Card ")
			print(i)
			io.readint
			a_Player_array[a_player_id].draw_card (a_Player_array[a_player_id].pick_a_card (io.last_integer))
		end
	end
end

