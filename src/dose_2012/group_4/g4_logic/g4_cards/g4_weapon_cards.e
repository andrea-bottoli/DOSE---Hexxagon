note
	description: "The main class that represents all the Weapon Cards of the game "
	author: "Team Crete12 of Group4"
	date:"12/11/2012"
	revision: "Tsampis, LuckyPunk"
deferred class
	G4_WEAPON_CARDS
		inherit G4_CARDS
		redefine construct, action end

feature --Distance the weapon can bang
	Weapon_Distance: INTEGER

feature --Constructor of the card

	construct(nam:STRING; symbol:STRING; n: INTEGER; distance: INTEGER)
	do
		set_Name(nam)
		set_Symbol(symbol)
		set_Number(n)
		set_weapon_distance(distance)
	end

feature --Setters and getters of distance

	--Weapon Distance
	set_weapon_distance(a_distance: INTEGER)
		require
			a_distance >= 1 and
			a_distance <= 5
		do
			Weapon_Distance := a_distance
		ensure
			Weapon_Distance = a_distance
		end

	get_weapon_distance() : INTEGER
	do
		Result := Weapon_Distance
	end

	action(a_Player_array : ARRAYED_LIST[G4_PLAYER];a_player_id: INTEGER;a_player_target: INTEGER;Draw_Pile: G4_DRAW_PILE;DiscardPile : G4_DISCARD_PILE)
 	do
 		a_Player_array[a_player_id].get_item_board.add_weapon (current)
 	end
end
