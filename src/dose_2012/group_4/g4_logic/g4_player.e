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
	make(id: INTEGER)
	do
		create Hand.make
		create Allowed_Hand.make
		create Player_Item_Board.make
		set_player_id(id)
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
	play(a_card: G4_CARDS;DiscardPile: G4_DISCARD_PILE)
	require
		Hand.is_empty = False
		--Allowed_Hand.has(a_card) = True
	do
		DiscardPile.put (a_card)
		--Implementation Required!!!
		--make action
		--and then discard...
--	ensure
--		Hand.count = old Hand.count - 1
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
--	ensure
--		Hand.count = old Hand.count + 1
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
	reaction(a_Player_array : ARRAYED_LIST[G4_PLAYER]; a_player_id: INTEGER;a_card : G4_CARDS; Draw_Pile : G4_DRAW_PILE;DiscardPile : G4_DISCARD_PILE) : BOOLEAN
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
		if((a_card.getname.is_equal ("Bang!")) or (a_card.getname.is_equal ("Gatling")))then

			if(item_list.is_empty = False) then

				from item_list.start until item_list.after = true
				loop
					if((item_list.item.getname.is_equal ("Barrel")) or
						(current.get_item_board.get_player_character.get_character_name.is_equal ("Jourdonnais"))) then

						card := Draw_Pile.pop
						if (card.get_symbol.is_equal ("Hearts")) then

							io.putstring ("Player ")
							print(current.get_player_id)
							io.putstring ("draws Hearts, so Player ")
							print(a_player_id )
							io.putstring ("misses")
							io.new_line

							flag := True  --Draw a Heart get missed
							if(a_Player_array[a_player_id].get_item_board.get_player_character.get_character_name.is_equal("Slab the Killer")) and (flag = true)
								then
									io.put_string ("Player ")
									print(a_player_id)
									io.putstring ( "is Slab the Killer")
									io.new_line
									io.put_string ("Player")
									print(current.get_player_id)
									io.putstring (" has to draw one more Heart in order to Miss the Bang!")
									io.new_line
									card := Draw_Pile.pop
									if (card.get_symbol.is_equal("Hearts")) then
										flag := True  --Draw a Heart get missed
									else
										flag := False
									end
							end
							-- Find a way to end it here
						end

					end
				end
			end

			if(flag /= True) then --edw
				if(hand_list.is_empty = False) then
					from hand_list.start until hand_list.after = true --Search for miss cards
					loop
						if(hand_list.item.getname.is_equal("Miss")) then
							miss_count := miss_count + 1

						elseif (hand_list.item.getname.is_equal("Bang!")) then
							bang_count := bang_count + 1
						end
						hand_list.forth
					end
				end

				io.new_line
				--Slab the Killer Case
				if(a_Player_array[a_player_id].get_item_board.get_player_character.get_character_name.is_equal ("Slab the Killer")) then

					io.put_string ("Player ")
					print(a_player_id)
					io.putstring (" is Slab the Killer")
					io.new_line

					if(miss_count >= 2) then
						io.put_string ("Do you want to use 2 Miss cards? [y/n]")
						io.read_character
						io.new_line
						if(io.last_character = 'y') then
							io.put_string ("Player ")
							print(current.get_player_id)
							io.putstring (" uses Miss!")
							current.find_card ("Miss", 2,DiscardPile) --Find the card
							flag := True  -- Use two Miss cards
						end

					elseif ((bang_count >= 2) and ( --Calamity Jane Case
							current.get_item_board.get_player_character.get_character_name.is_equal("Calamity Janet"))) then
						io.put_string ("Do you want to use 2 Bang! cards to Miss the Bang? [y/n]")
						io.read_character
						io.new_line
						if(io.last_character = 'y') then
							io.put_string ("Player ")
							print(current.get_player_id)
							io.putstring(" as Calamity Janet, uses Bang! for Miss")
							current.find_card ("Bang!", 2,DiscardPile) --Find card
							flag := True  -- Use two Miss cards
						end
					else
						flag := False
					end
				else
					if(miss_count > 0) then
						io.put_string ("Do you want to use a Miss card? [y/n]")
						io.read_character
						io.new_line
						if(io.last_character = 'y') then

							io.put_string ("Player ")
							print(current.get_player_id)
							io.putstring ("uses Miss!")
							io.new_line
							current.find_card ("Miss", 2,DiscardPile) --find the card
							flag := True  -- Use two Miss cards
						end

					elseif ((bang_count > 0) and (  --Calamity Jane Case
						current.get_item_board.get_player_character.get_character_name.is_equal ("Calamity Janet"))) then
						io.put_string ("Do you want to use Bang! cards to Miss the Bang? [y/n]")
						io.read_character
						io.new_line
						if(io.last_character = 'y') then

							io.put_string ("Player ")
							print(current.get_player_id)
							io.putstring (" as Calamity Janet, uses Bang! card for Miss")
							io.new_line
							current.find_card ("Bang!", 2,DiscardPile)--find the card
							flag := True  -- Use two Miss cards
						end
					else
						flag := False
					end
				end
			end

		elseif (a_card.getname= "Duell" or a_card.getname.is_equal ("Indians")) then -- Duell and Indians Case

			if(hand_list.is_empty = False) then
				from hand_list.start until hand_list.item = hand_list.last
				loop
					if(hand_list.item.getname.is_equal("Bang!")) then
						io.put_string ("Uses Bang! card")
						flag := True
						if(current.get_item_board.get_player_character.get_character_name.is_equal ("Calamity Janet")) then
							if(hand_list.item.getname.is_equal ("Miss")) then

								io.put_string ("Player ")
								print(current.get_player_id)
								io.putstring (" as Calamity Janet, uses Miss card for Bang!")
								current.find_card ("Miss", 2,DiscardPile) --find the card
								io.new_line
								flag := True

							end
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
		i:= 1
		io.new_line
		io.putstring ("Hand of the Player:")
		io.new_line
		from Hand.start until Hand.after = true
			loop
				io.new_line
				io.put_string (Hand.item.getname + " ")
				print(Hand.item.get_number)
				io.put_string (" " + Hand.item.get_symbol + " ")
				io.put_string (" Code: ")
				print(i)
				i := i+1
				Hand.forth
			end
	end

	pick_a_card(a_card_id : INTEGER) : G4_CARDS --Implementation only for terminal play
	do
		--Implemented for terminal
		if(a_card_id <= Hand.count) then
			Hand.go_i_th (a_card_id)
			Result := Hand.item
			Hand.remove
		else
			print("Invalid choice")
		end
	end

	find_card(card_name: STRING; count : INTEGER;DiscardPile : G4_DISCARD_PILE)
	local
		i : INTEGER
	do
		from i:=0 until i=count
		loop
			from Hand.start until Hand.after = true
			loop
				if(Hand.item.getname = card_name) then
					DiscardPile.put (Hand.item)
					Hand.remove
				end
				Hand.forth
			end
		end
	end
end
