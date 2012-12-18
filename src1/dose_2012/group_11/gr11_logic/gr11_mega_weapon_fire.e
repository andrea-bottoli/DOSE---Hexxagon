note
	description: "Summary description for {GR11_MEGA_WEAPON_FIRE}."
	author: "Milano4"
	date: "25/11/12"
	revision: "0.1"

class
	GR11_MEGA_WEAPON_FIRE

inherit
	GR11_FIRE

	redefine
		shooting_range
	end

create
	make_mega_weapon

feature{NONE}--initialization

	make_mega_weapon
	-- initialization of mega weapon
	do
		asteroids_block := FALSE
		self_destruct := FALSE
		damage_all := TRUE
	ensure
		asteroids_cannot_block_elite_fire :  not asteroids_block
		normal_fire_cannot_self_destruct : not self_destruct
		normal_fire_can_only_damage_one_ship : damage_all
	end

feature --query

	shooting_range(input_coordinates:GR11_COORDINATES; direction:GR11_DIRECTION):LIST[GR11_COORDINATES]
	--returns the shooting range the current ship
	local
		list_of_coordinates:ARRAYED_LIST[GR11_COORDINATES]
	do
		create list_of_coordinates.make (20)
		Result := list_of_coordinates
	end



end

