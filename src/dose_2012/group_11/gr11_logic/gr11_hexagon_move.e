note
	description: "It's a class to calculate the movement beetween hexagons"
	author: "Milano4"
	date: "1/12/2012"
	revision: "0.1"

class
	GR11_HEXAGON_MOVE

feature --functions

	move_to(ship_direction:GR11_DIRECTION; coordinates:GR11_COORDINATES):GR11_COORDINATES
	--function to calculate the new coordinates from coordinates and direction passed by argument
	require
		direction_and_coordinates_not_empty : ship_direction /= void and then coordinates /= void
	local
		new_coordinates : GR11_COORDINATES
	do
		ring := coordinates.x
		position := coordinates.y
		print(new_ring(ship_direction))
		print(new_position(ship_direction))
		print(",")
		create new_coordinates.make (new_ring(ship_direction), new_position(ship_direction))
		Result := new_coordinates
	ensure
		result_not_void: Result /= void
	end

feature{NONE} --implementation

	ring : INTEGER

	position : INTEGER

	is_corner : BOOLEAN
	do
		Result := direction_pos = 0
	end

	size : INTEGER
	do
		Result := ring * number_of_neighbours
	end

	number_of_neighbours : INTEGER
	once
		Result := 6
	end

	direction :INTEGER
	local
		l_result : REAL_64
	do
		l_result := position / ring
		Result := l_result.floor
	end

	direction_pos: INTEGER
	do
		Result := position \\ ring
	end

	new_ring(ship_direction:GR11_DIRECTION):INTEGER
	do
		if ring = 0 then

			Result := 1

		else

			if ship_direction.direction = ship_direction.direction0 or else ship_direction.direction = ship_direction.direction1 then

				Result := ring

			else

				if is_corner then

					if  ring = 1 and then ship_direction.direction = ship_direction.direction2 then
						Result := 0
					else
						if ship_direction.direction = ship_direction.direction2 then
							Result := ring - 1
						else
							Result := ring + 1
						end
					end

				else

					if ship_direction.direction = ship_direction.direction2 or else ship_direction.direction = ship_direction.direction3 then
						Result := ring - 1
					else
						Result := ring + 1
					end

				end
			end
		end
	end

	new_position(ship_direction:GR11_DIRECTION):INTEGER
	do
		if ring = 0 then

			Result := ship_direction.direction

		else

			if ship_direction.direction = ship_direction.direction0 then

				Result := (position - 1) \\ size

			else

				if ship_direction.direction = ship_direction.direction1 then
					Result := (position + 1) \\ size
				else

					if is_corner then

						if ring = 1 and then ship_direction.direction = ship_direction.direction2 then
							Result := 0
						else

							inspect ship_direction.direction
							when 2 then Result := direction * (ring - 1)
							when 3 then Result := (direction * (ring + 1) - 1) \\ size
							when 4 then Result := direction * (ring + 1)
							else
								Result := (direction * (ring + 1) + 1) \\ size
							end
						end


				    else

				    	inspect ship_direction.direction
							when 2 then Result := (direction * (ring - 1) + direction_pos) \\ size
							when 3 then Result := direction * (ring - 1) + direction_pos -1
							when 4 then Result := direction * (ring + 1) + direction_pos
							else
								Result := direction * (ring + 1) + direction_pos + 1
							end
				    end
				end
			end
		end
	end

end
