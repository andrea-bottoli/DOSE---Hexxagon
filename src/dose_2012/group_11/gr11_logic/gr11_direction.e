note
	description: "Represents the direction of the ship in the board"
	author: "Milano4"
	date: "1/12/2012"
	revision: "1.0"

class
	GR11_DIRECTION

create
	make

feature{NONE} --initialization

	make(new_direction:INTEGER)
	--direction : the direction of the class
	require
		direction_in_the_range_from_0_to_5 : new_direction >= 0 and then new_direction < 6
	do
		direction := new_direction
	ensure
		direction_is_right: direction = new_direction
	end

feature --status_access

	direction : INTEGER
	--represents the current direction


	--here the costant values that represent the directions of an hexagon

	--    0
	--    __
	-- 5 /  \  1
	-- 4 \__/  2

	--    3

	Direction0 : INTEGER
	once
		Result := 0
	end

	Direction1 : INTEGER
	once
		Result := 1
	end

	Direction2 : INTEGER
	once
		Result := 2
	end

	Direction3 : INTEGER
	once
		Result := 3
	end

	Direction4 : INTEGER
	once
		Result := 4
	end

	Direction5 : INTEGER
	once
		Result := 5
	end

invariant
		direction_is_in_the_range_from1_to_5 : direction >= 0 and then direction < 6

end
