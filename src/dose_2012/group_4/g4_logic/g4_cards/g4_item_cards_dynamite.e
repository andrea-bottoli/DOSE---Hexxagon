note
	description: "Represents the 'Dynamite' Card."
	author: "Team Crete12 of Group4"
	date: "12/11/2012"
	revision: "tsampis"

class
	G4_ITEM_CARDS_DYNAMITE
	inherit G4_ITEM_CARDS
		redefine action end

create
	make

feature
	circle_count : INTEGER

feature --Constructor
 	make
 	do
 		set_Name("Dynamite")
 		circle_count := 0
 	ensure
  		Name.is_equal("Dynamite")
	end

feature
	action(a_Player_array : ARRAYED_LIST[G4_PLAYER];a_player_id: INTEGER;a_player_target: INTEGER;Draw_Pile: G4_DRAW_PILE;DiscardPile : G4_DISCARD_PILE) --Set the action move of the card
	local
		card : G4_CARDS
	do
		card := Draw_Pile.pop
		a_Player_array[a_player_id].draw_card(card)
		if(((card.get_number >= 2)and(card.get_number < 9)) and (card.get_symbol = "Spades")) then
			a_Player_array[a_player_id].get_item_board.discard_life (3)
			a_Player_array[a_player_id].get_item_board.discard_item (current)
			set_destroy(true)
		--else if (circle_count < a_Player_array.c) then

		--end
			a_Player_array[a_player_id + 1].get_item_board.add_item (current)
			circle_count := circle_count + 1
			--a_Player_array[a_player_id].discard (card) --discard into discard pile?
		end
	end

end
