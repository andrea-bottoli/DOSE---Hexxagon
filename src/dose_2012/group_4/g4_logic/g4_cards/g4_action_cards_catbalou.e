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
 	ensure
  		Name.is_equal("Cat Balou")
  		(CardNum >= 9) and (CardNum<=12) or (CardNum=3)
  		CardSymbol.is_equal ("Hearts")
  		CardSymbol.is_equal ("Diamnonds")

 	end

 	action(a_Player_array : ARRAY[G4_PLAYER]; a_player_id: INTEGER; a_player_target: INTEGER; Draw_Pile: G4_DRAW_PILE)
	do
		--Reaction?
	end

end

