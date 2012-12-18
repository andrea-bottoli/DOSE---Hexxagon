note
	description: "Represents the 'Cat Balou' Card."
	author: "Team Crete12 of Group4"
	date:"12/11/2012"
	revision: "tsampis"
class
	G4_ACTION_CARDS_CATBALOU
		inherit G4_ACTION_CARDS
		redefine action end

create
	make


feature --Constructor
 	make
 	do
 		set_Name("Cat Balou")
 	ensure
  		Name.is_equal("Cat Balou")
 	end

 	action(a_Player_array : ARRAYED_LIST[G4_PLAYER]; a_player_id: INTEGER; a_player_target: INTEGER; Draw_Pile: G4_DRAW_PILE;DiscardPile : G4_DISCARD_PILE)
	do
		--Reaction?
	end

end

