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
 	ensure
  		Name.is_equal("Jail")
  		(CardNum = 4) or (CardNum<=10) or (CardNum = 11)
  		CardSymbol.is_equal ("Spades")
  		CardSymbol.is_equal ("Hearts")

 	end

feature
	action(a_Player_array : ARRAY[G4_PLAYER];a_player_id: INTEGER;Draw_Pile: G4_DRAW_PILE) --Set the action move of the card
	do	end

feature
	go_to(a_Player_array : ARRAY[G4_PLAYER];a_player_target: INTEGER)
	do
		a_Player_array[a_player_target].get_item_board.add_item (current)
	end
end
