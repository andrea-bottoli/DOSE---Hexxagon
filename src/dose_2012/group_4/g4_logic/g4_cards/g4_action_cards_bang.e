note
	description: "Represents the 'Bang!' Card."
	author: "Team Crete12 of Group4"
	date: "12/11/2012"
	revision: "tsampis"

class
	G4_ACTION_CARDS_BANG
	inherit G4_ACTION_CARDS
	redefine action end

create
	make


feature --Constructor
 	make
 	do
 		set_Name("Bang!")
 		CardNum:=0
 	ensure
  		Name.is_equal("Bang!")
 	end

 	action(a_Player_array : ARRAYED_LIST[G4_PLAYER]; a_player_id: INTEGER; a_player_target: INTEGER; Draw_Pile: G4_DRAW_PILE;DiscardPile : G4_DISCARD_PILE)
	do
		io.put_string ("Choose a target: ")
		io.read_integer
		io.new_line
		if (a_Player_array[a_player_id].get_item_board.check_distance( a_Player_array,a_player_id, io.last_integer, a_Player_array.count)= true) then
			if(a_Player_array[io.last_integer].reaction (a_Player_array,a_player_id,current,Draw_Pile,DiscardPile)/=true) then
				io.put_string ("Bang the player!")
				a_Player_array[io.last_integer].get_item_board.discard_life (1)
				if(a_Player_array[io.last_integer].get_item_board.get_player_character.get_character_name.is_equal ("Bart Cassidy")) then
					a_Player_array[io.last_integer].draw (Draw_Pile)

				elseif(a_Player_array[io.last_integer].get_item_board.get_player_character.get_character_name.is_equal ("El Gringo")) then
					io.put_string ("Choose a number from 1 to ")
					print(a_Player_array[a_player_id].get_player_hand.count)
					io.read_integer
					io.put_string ("Player takes")
					print(io.last_integer)
					io.putstring ("th from Player")
					print(a_player_id)
				end
			else
				io.put_string ("Miss!")
			end
		else
			io.put_string ("Cant reach that player")
		end
		io.new_line
	end

end


