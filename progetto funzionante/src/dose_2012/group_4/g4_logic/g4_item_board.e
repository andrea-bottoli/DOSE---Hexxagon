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

feature --Constructor

	make
	do
	ensure
		Player_Life = 0
		Max_Distance = 1
		Player_Items.is_empty = True
	end

feature --Setters Getters

	--Role
	set_player_role(a_role: G4_ROLES)
	do
	ensure
		Player_Role.is_equal(a_role)
	end

	get_player_role(): G4_ROLES
	do

	end

	--Character
	set_player_character(a_character: G4_CHARACTERS)
	do
	ensure
		Player_Character.is_equal(a_character)
	end

	get_player_character(): G4_CHARACTERS
	do

	end

	--Life
	set_player_life(a_life: INTEGER)
	require
		a_life > 0
	do
	ensure
		Player_Life = a_life
	end

	get_player_life(): INTEGER
	do

	end

	--Max Distance
	get_player_max_distance(): INTEGER
	do

	end

	--Items
	get_player_items(): LINKED_LIST[G4_ITEM_CARDS]
	do

	end

	--Weapon
	get_player_weapon(): G4_WEAPON_CARDS
	do

	end

feature --functions

	--Adds an integer amount to the current Player_Life
	add_life(a_add_life: INTEGER)
	require
		a_add_life > 0 and a_add_life <= 2
	do
	ensure
		Player_Life = old Player_Life + a_add_life
		Player_Life <= Player_Character.get_character_life
	end

	--Discards an integer ammount from the current Player_Life
	discard_life(a_minus_life: INTEGER)
	require
		a_minus_life = 1 or a_minus_life = 3
	do
	ensure
		Player_Life = old Player_Life - a_minus_life
	end

	--Adds an item to the current Players_Items
	add_item(a_item: G4_ITEM_CARDS)
	do
	ensure
		Player_Items.count = old Player_Items.count + 1
	end

	--Discards an item from the cuurent Players_Items
	discard_item(a_item: G4_ITEM_CARDS)
	do
	ensure
		Player_Items.count = old Player_Items.count - 1
	end

	--Replaces the current Player_Weapon with the given weapon
	add_weapon(a_weapon: G4_WEAPON_CARDS)
	do
	ensure
		Player_Weapon.is_equal(a_weapon)
		Max_Distance = a_weapon.get_weapon_distance
	end
end
