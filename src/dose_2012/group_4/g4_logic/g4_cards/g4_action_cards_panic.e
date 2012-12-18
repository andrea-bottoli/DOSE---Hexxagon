note
	description: "Represents the 'Panic!' Card."
	author: "Team Crete12 of Group4"
	date: "12/11/2012"
	revision: "tsampis"

class
	G4_ACTION_CARDS_PANIC
		inherit G4_ACTION_CARDS
		redefine action end

create
	make


feature --Constructor
 	make
 	do
 		set_Name("Panic")
 	ensure
  		Name.is_equal("Panic")
 	end

 	action(a_Player_array : ARRAYED_LIST[G4_PLAYER]; a_player_id: INTEGER; a_player_target: INTEGER; Draw_Pile: G4_DRAW_PILE;DiscardPile : G4_DISCARD_PILE)
	do
	end

end

