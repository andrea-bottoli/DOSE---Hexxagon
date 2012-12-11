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
 	ensure
  		Name.is_equal("Panic")
  		(CardNum >= 11) and (CardNum<=13)
  		CardSymbol.is_equal ("Spades")
  		CardSymbol.is_equal ("Clubs")
  		CardSymbol.is_equal ("Hearts")
  		CardSymbol.is_equal ("Diamnonds")

 	end

 	action(a_Player_array : ARRAY[G4_PLAYER]; a_player_id: INTEGER; a_player_target: INTEGER; Draw_Pile: G4_DRAW_PILE)
	do
	end

end

