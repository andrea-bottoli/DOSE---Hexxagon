note
	description: "Represents the 'Emporio' Card."
	author: "Team Crete12 of Group4"
	date: "12/11/2012"
	revision: "tsampis"

class
	G4_ACTION_CARDS_GENERALSTORE
		inherit G4_ACTION_CARDS
		redefine action end

create
	make


feature --Constructor
 	make
 	do
 		set_Name("General Store")
 	ensure
  		Name.is_equal("General Store")
 	end

 	action(a_Player_array : ARRAYED_LIST[G4_PLAYER]; a_player_id: INTEGER; a_player_target: INTEGER; Draw_Pile: G4_DRAW_PILE)
	do
	end
end

