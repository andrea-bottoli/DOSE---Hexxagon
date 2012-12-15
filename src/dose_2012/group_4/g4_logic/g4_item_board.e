note
	description: "Represents the item board that is infront of every player in a game of BANG!."
	author: "Team Crete12 of Group4"
	date: "12/11/2012"
	revision: "LuckyPunk"

class
	G4_ITEM_BOARD

create
	make

feature --Atrributes
	Player_Life: INTEGER
	Max_Distance: INTEGER
	Player_Role: G4_ROLES
	Player_Character: G4_CHARACTERS
	Player_Weapon: G4_WEAPON_CARDS
	Player_Items: LINKED_LIST[G4_ITEM_CARDS]
	player_id : INTEGER

feature --Constructor

	make
	do
		Player_Life := 0
		Max_Distance := 1
		create Player_Items.make
	ensure
		Player_Life = 0
		Max_Distance = 1
		Player_Items.is_empty = True
	end

feature --Setters Getters

	--Role
	set_player_role(a_role: G4_ROLES)
	do
		Player_Role := a_role
	ensure
		Player_Role.is_equal(a_role)
	end

	get_player_role(): G4_ROLES
	do
		Result := Player_Role
	end

	--Character
	set_player_character(a_character: G4_CHARACTERS)
	do
		Player_Character := a_character
	ensure
		Player_Character = a_character
	end

	get_player_character(): G4_CHARACTERS
	do
		Result := Player_Character
	end

	--Life
	set_player_life(a_life: INTEGER)
	require
		a_life > 0
	do
		Player_Life := a_life
	ensure
		Player_Life = a_life
	end

	get_player_life(): INTEGER
	do
		Result := Player_Life
	end

feature
	set_player_id(id:INTEGER)
	do
		player_id := id
	end

	get_player_id : INTEGER
	do
		Result := player_id
	end


feature --Distance

	set_player_max_distance(new_distance : INTEGER)
	do
		Max_Distance := new_distance
	end

	--Max Distance
	get_player_max_distance: INTEGER
	do
		Result := Max_Distance
	end

	get_distance(a_Player_array : ARRAY[G4_PLAYER];player_target, players_num: INTEGER): INTEGER
	local
		distance_1: INTEGER
		distance_2: INTEGER
		final_distance : INTEGER
	do
		if(current.get_player_id < player_target) then
			distance_1 := (current.get_player_id - player_target) + players_num

			distance_2 := player_target - current.get_player_id
		else
			distance_1 := (player_target - current.get_player_id) + players_num
			distance_2 := current.get_player_id - player_target
		end

		if(distance_1 < distance_2) then
			final_distance := distance_1
		else
			final_distance := distance_2
		end

		from a_Player_array[player_target].get_player_hand.start until a_Player_array[player_target].get_player_hand.item = a_Player_array[player_target].get_player_hand.last
		loop
			if(a_Player_array[player_target].get_player_hand.item.getname.is_equal ("Mustang")) then
				final_distance :=  final_distance + 1
			end
			a_Player_array[player_target].get_player_hand.forth
		end

		Result := final_distance
	end

	check_distance(a_Player_array : ARRAY[G4_PLAYER];player_target,players_num, distance : INTEGER) :BOOLEAN
	do
		if(current.get_distance (a_Player_array,player_target, players_num) < current.max_distance) then
			Result := True
		else
			Result := False
		end
	end

feature

	--Items
	get_player_items: LINKED_LIST[G4_ITEM_CARDS]
	do
		Result := Player_Items
	end

	--Weapon
	get_player_weapon(): G4_WEAPON_CARDS
	do
		Result := Player_Weapon
	end

feature --functions

	--Adds an integer amount to the current Player_Life
	add_life(a_add_life: INTEGER)
	require
		a_add_life > 0 and a_add_life <= 2
	do
		Player_Life := Player_Life + a_add_life
	ensure
		Player_Life = old Player_Life + a_add_life
		Player_Life <= Player_Character.get_character_life
	end

	--Discards an integer ammount from the current Player_Life
	discard_life(a_minus_life: INTEGER)
	require
		a_minus_life = 1 or a_minus_life = 3
	do
		Player_life := Player_life - a_minus_life
	ensure
		Player_Life = old Player_Life - a_minus_life
	end

	--Adds an item to the current Players_Items
	add_item(a_item: G4_ITEM_CARDS)
	do
		Player_Items.force (a_item)
	ensure
		Player_Items.count = old Player_Items.count + 1
	end

	--Discards an item from the cuurent Players_Items
	discard_item(a_item: G4_ITEM_CARDS)
	do
		from Player_Items.start until Player_Items.item = Player_Items.last
			loop
				if(Player_Items.item.equals (a_item)) then
					--Result := Player_Items.item  ???
					Player_Items.remove
				end
				Player_Items.forth
			end
	ensure
		Player_Items.count = old Player_Items.count - 1
	end

	--Replaces the current Player_Weapon with the given weapon
	add_weapon(a_weapon: G4_WEAPON_CARDS)
	do
		Player_Weapon := a_weapon
	ensure
		Player_Weapon.is_equal(a_weapon)
		Max_Distance = a_weapon.get_weapon_distance
	end
end
