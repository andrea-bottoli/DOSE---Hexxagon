note
	description: "Represents the type of fire of a ship"
	author: "Milano4"
	date: "24/11/2012"
	revision: "0.1"

class
	GR11_FIRE

create
	make


feature {NONE} -- Initialization

	make
	-- normal initialization for normal ship
	do
		asteroids_block := FALSE
		self_destruct := FALSE
		damage_all := FALSE
	ensure
		asteroids_blocks_normal_fire : not asteroids_block
		normal_fire_cannot_self_destruct : not self_destruct
		normal_fire_can_only_damage_one_ship : not damage_all
	end

feature --status access

	asteroids_block : BOOLEAN
	--it says if the shoot an pass through asteroids

	self_destruct : BOOLEAN
	--it says if the shoot causes the self destruct of the ship

	damage_all : BOOLEAN
	--it says if the shoot can damage all ships in the range or not

feature --function

	shooting_range(input_coordinates:GR11_COORDINATES; direction:GR11_DIRECTION):LIST[GR11_COORDINATES]
	--returns the shooting range the current ship
	--input_coordinates: is the coordinates from which the ship fires
	--direction: is the direction of the shoot
	require
		input_coordinates_not_void : input_coordinates /= Void
		direction_not_void : direction /= Void
	local
		list_of_coordinates:ARRAYED_LIST[GR11_COORDINATES]
		l_hexagon_move : GR11_HEXAGON_MOVE
		l_coordinates : GR11_COORDINATES
		l_index : INTEGER
	do
		create list_of_coordinates.make(fire_range)
		create l_hexagon_move
		l_coordinates := input_coordinates

		from
			l_index := 0
		until
			l_index >= fire_range
		loop
			l_coordinates := l_hexagon_move.move_to (direction, l_coordinates)
            list_of_coordinates.put_front(l_coordinates)
            l_index := l_index + 1
		end

		Result := list_of_coordinates
	ensure
		result_is_not_empty : Result /= Void
	end

feature{NONE} --implementation

	fire_range:INTEGER
	--it's the fire range of normal fire
	once
		Result := 5
	end

end
