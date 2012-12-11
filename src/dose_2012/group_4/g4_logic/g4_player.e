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

feature --Constructor
	make
	do
	ensure
		Hand.is_empty = True
		Allowed_Hand.is_empty = True
		Player_Name.is_empty = True
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

	get_player_hand(): LINKED_LIST[G4_CARDS]
	do
		Result := Hand
	end

feature --Functions

	--Simulates the Player's play action
	play(a_card: G4_CARDS)
	require
		Hand.is_empty = False
		Allowed_Hand.has(a_card) = True
	do
	ensure
		Hand.count = old Hand.count - 1
	end

	--Simulates the Player's discard a card action
	discard(a_card: G4_CARDS) :G4_CARDS
	require
		Hand.is_empty = False
	do
		from Hand.start until Hand.item = Hand.last
			loop
				if(Hand.item.equals (a_card)) then
					Result := Hand.item
					Hand.remove
				end
				Hand.forth
			end
	ensure
		Hand.count = Hand.count - 1
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
	end

	get_Item_Board() : G4_ITEM_BOARD
	do
	end

	reaction(a_Player_array : ARRAY[G4_PLAYER]; a_player_id: INTEGER;a_card : G4_CARDS; Draw_Pile : G4_DRAW_PILE) : BOOLEAN
	local
		item_list : LINKED_LIST[G4_CARDS]
		hand_list :	LINKED_LIST[G4_CARDS]
		card : G4_CARDS
		miss_count : INTEGER
		bang_count : INTEGER
	do
		item_list := current.get_item_board.get_player_items
		hand_list := current.get_player_hand
		miss_count := 0
		if((a_card.getname.is_equal ("Bang!")) or (a_card.getname.is_equal ("Gatling")))then
			from item_list.start until item_list.item = item_list.last
			loop
				if((item_list.item.getname.is_equal ("Barrel")) or
					(current.get_item_board.get_player_character.get_character_name.is_equal ("Jourdonnais"))) then

					card := Draw_Pile.pop
					if (card.get_symbol.is_equal ("Hearts")) then
						Result := True  --Draw a Heart get missed
						-- Find a way to end it here
					end

				end
			end

			from hand_list.start until hand_list.item = hand_list.last --Search for miss cards
			loop
				if(hand_list.item.getname.is_equal ("Miss")) then
					miss_count := miss_count + 1

				elseif (hand_list.item.getname.is_equal ("Bang")) then
					bang_count := bang_count + 1
				end
				hand_list.forth
			end

			--Slab the Killer Case
			if(a_Player_array[a_player_id].get_item_board.get_player_character.get_character_name.is_equal ("Slab the Killer")) then

				if(miss_count >= 2) then
					Result := True  -- Use two Miss cards
				elseif ((bang_count >= 2) and ( --Calamity Jane Case
						a_Player_array[a_player_id].get_item_board.get_player_character.get_character_name.is_equal ("Calamity Jane"))) then
					Result := True
				else
					Result := False
				end
			else
				if(miss_count > 0) then
					Result := True  -- Use a Miss card
				elseif ((bang_count > 0) and (  --Calamity Jane Case
						a_Player_array[a_player_id].get_item_board.get_player_character.get_character_name.is_equal ("Calamity Jane"))) then
					Result := True
				else
					Result := False
				end
			end

		elseif (a_card.getname.is_equal ("Duell")) then -- Duell Case
			card := Draw_Pile.pop
			from hand_list.start until hand_list.item = hand_list.last
			loop
				if(hand_list.item.getname.is_equal ("Bang")) then
					Result := True
				end
			end
		end

		Result := False -- else return false

	end
end
