note
	description: "Simulates a player of the game bang and his possible, in game, actions."
	author: "Team Crete12 of Group4"
	date: "12/11/2012"
	revision: "LuckyPunk"

class
	G4_PLAYER

create
	make

feature --Atrributes
	Hand: LINKED_LIST[G4_CARDS]
	Allowed_Hand: LINKED_LIST[G4_CARDS]
	Player_Name: STRING
	Player_Item_Board : G4_ITEM_BOARD
	Player_id : INTEGER

feature --Constructor
	make
	do
		create Hand.make
		create Allowed_Hand.make
		create Player_Item_Board.make
	ensure
		Hand.is_empty = True
		Allowed_Hand.is_empty = True
		--Player_Name.is_empty = True --Why is empty?????
	end

feature --Setters and getters

	set_player_name(a_player_name: STRING)
	do
		Player_Name := a_player_name
	ensure
		Player_Name.is_empty = False
	end

	get_player_name: STRING
	require
		Player_Name.is_empty = False
	do
		Result := Player_Name
	end

	set_player_hand(a_player_hand: LINKED_LIST[G4_CARDS])
	do
		Hand:=a_player_hand
	end

	get_player_hand: LINKED_LIST[G4_CARDS]
	do
		Result := Hand
	end

	set_player_id(id:INTEGER)
	do
		Player_id := id
	end

	get_player_id : INTEGER
	do
		Result:= Player_id
	end

feature --Functions

	--Simulates the Player's play action
	play(a_card: G4_CARDS)
	require
		Hand.is_empty = False
		Allowed_Hand.has(a_card) = True
	do
		--Implementation Required!!!
		--make action
		--and then discard...
	ensure
		Hand.count = old Hand.count - 1
	end

	--Simulates the Player's discard a card action
	discard(a_card: G4_CARDS) :G4_CARDS
	require
		Hand.is_empty = False
	local
		flagFound:BOOLEAN
		i: INTEGER
		ccheck: BOOLEAN
	do
		flagFound:=FALSE
		Hand.start
		from i:=0 until i=Hand.count
		loop
				ccheck:=Hand.item=a_card
				if((ccheck=TRUE) and (flagFound=FALSE)) then
					Result := Hand.item
					Hand.remove
					flagFound:=TRUE
				end
				i:=i+1
				Hand.forth
		end
	ensure
		Hand.count = old Hand.count - 1
	end

	--Simulates the Player's draw from a card pile action
	draw(a_draw_pile: G4_DRAW_PILE)
	do
		Hand.force (a_draw_pile.pop)
	ensure
		Hand.count = old Hand.count + 1
	end

	draw_card(a_card : G4_CARDS)
	do
		Hand.force (a_card)
	end


feature

	set_Item_Board(Item_Board : G4_ITEM_BOARD)
	do
		Player_Item_Board:=Item_Board
	end

	get_Item_Board : G4_ITEM_BOARD
	do
		Result:=Player_Item_Board
	end


feature
	reaction(a_Player_array : ARRAYED_LIST[G4_PLAYER]; a_player_id: INTEGER;a_card : G4_CARDS; Draw_Pile : G4_DRAW_PILE) : BOOLEAN
	local
		item_list : LINKED_LIST[G4_CARDS]
		hand_list :	LINKED_LIST[G4_CARDS]
		card : G4_CARDS
		miss_count : INTEGER
		bang_count : INTEGER
		flag : BOOLEAN
	do
		item_list := current.get_item_board.get_player_items
		hand_list := current.get_player_hand
		miss_count := 0
		flag := False
		if((a_card.getname= ("Bang!")) or (a_card.getname= ("Gatling")))then
			from item_list.start until item_list.item = item_list.last
			loop
				if((item_list.item.getname= ("Barrel")) or
					(current.get_item_board.get_player_character.get_character_name= ("Jourdonnais"))) then

					card := Draw_Pile.pop
					if (card.get_symbol= ("Hearts")) then
						flag := True  --Draw a Heart get missed
						if(a_Player_array[a_player_id].get_item_board.get_player_character.get_character_name= ("Slab the Killer")) and (flag = true)
							then
								card := Draw_Pile.pop
								if (card.get_symbol= ("Hearts")) then
									flag := True  --Draw a Heart get missed
								else
									flag := False
								end
						end
						-- Find a way to end it here
					end

				end
			end

			if(flag /= True) then
				from hand_list.start until hand_list.item = hand_list.last --Search for miss cards
				loop
					if(hand_list.item.getname= ("Miss")) then
						miss_count := miss_count + 1

					elseif (hand_list.item.getname= ("Bang")) then
						bang_count := bang_count + 1
					end
					hand_list.forth
				end

				--Slab the Killer Case
				if(a_Player_array[a_player_id].get_item_board.get_player_character.get_character_name= ("Slab the Killer")) then

					if(miss_count >= 2) then
						flag := True  -- Use two Miss cards
					elseif ((bang_count >= 2) and ( --Calamity Jane Case
							a_Player_array[a_player_id].get_item_board.get_player_character.get_character_name= ("Calamity Janet"))) then
						flag := True
					else
						flag := False
					end
				else
					if(miss_count > 0) then
						flag := True  -- Use a Miss card
					elseif ((bang_count > 0) and (  --Calamity Jane Case
							a_Player_array[a_player_id].get_item_board.get_player_character.get_character_name= ("Calamity Janet"))) then
						flag := True
					else
						flag := False
					end
				end
			end

		elseif (a_card.getname= ("Duell") or a_card.getname= ("Indians")) then -- Duell Case
			from hand_list.start until hand_list.item = hand_list.last
			loop
				if(hand_list.item.getname= ("Bang")) then
					flag := True
					if(a_Player_array[a_player_id].get_item_board.get_player_character.get_character_name= ("Calamity Janet")) then
						if(hand_list.item.getname= ("Miss")) then
							flag := True
						end
					end
				end
			end
		end

		Result := flag -- else return false

	end



feature

	display_hand
	local
		i : INTEGER
	do
		from Hand.start until Hand.item = Hand.last
			loop
				io.new_line
				io.put_string (Hand.item.getname + " ")
				print(Hand.item.get_number)
				io.put_string (" " + Hand.item.get_symbol + " ")
				io.put_string (" Code: ")
				print(i)
				io.new_line
				i := i+1
				Hand.forth
			end
	end

	pick_a_card(a_card_id : INTEGER) : G4_CARDS --Implementation only for terminal play
	do
		--Implemented for terminal
		if(a_card_id < Hand.count) then
			Hand.go_i_th (a_card_id)
			Result := Hand.item
			Hand.remove
		else
			print("Invalid choice")
		end
	end
end
