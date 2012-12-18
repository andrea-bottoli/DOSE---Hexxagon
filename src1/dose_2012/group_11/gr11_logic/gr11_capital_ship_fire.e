note
	description: "Represents the shooting type of capital ships"
	author: "Milano4"
	date: "25/11/12"
	revision: "0.1"

class
	GR11_CAPITAL_SHIP_FIRE

inherit
	GR11_FIRE

	redefine
		shooting_range
	end

feature	--functions

	shooting_range(input_coordinates:GR11_COORDINATES; ship_direction:GR11_DIRECTION):LIST[GR11_COORDINATES]
	--returns the shooting range the current capital_ship
	--input_coordinates: is the coordinates from which the capital ship fires
	--direction: is the direction of the capital ship
	require else
		input_coordinates_not_void : input_coordinates /= Void
		direction_not_void : ship_direction /= Void
    local
    	list_of_coordinates:ARRAYED_LIST[GR11_COORDINATES]
		l_hexagon_move : GR11_HEXAGON_MOVE
		l_index_direction : INTEGER
		l_index_ship_components : INTEGER
		l_index_range : INTEGER
		l_current_coordinates:GR11_COORDINATES
		l_temp_coordinates:GR11_COORDINATES
		l_direction : GR11_DIRECTION
    do
    	create list_of_coordinates.make(number_of_coordinates)
    	create l_hexagon_move

    	coordinates_tail := input_coordinates
    	coordinates_front := l_hexagon_move.move_to(ship_direction, coordinates_tail)

    	l_current_coordinates := coordinates_tail


		from
			l_index_ship_components := 1
		until
			l_index_ship_components > ship_components
		loop

	    	from
				l_index_direction := ship_direction.direction0
	    	until
				l_index_direction >= ship_direction.direction5
	    	loop

	    		if l_index_direction /= ship_direction.direction then
	    			l_temp_coordinates := l_current_coordinates

	    			from
	    				l_index_range := 1
	    			until
	    				l_index_range > 2
	    			loop
	    				create l_direction.make (l_index_direction)
	    				l_temp_coordinates := l_hexagon_move.move_to(l_direction, l_temp_coordinates)

	    				if not l_temp_coordinates.is_equal (coordinates_front) and then not l_temp_coordinates.is_equal (coordinates_tail) then
	    					list_of_coordinates.put_front(l_temp_coordinates)
	    				end

	    				l_index_range := l_index_range + 1
	    			end

	    		end
	    		l_index_direction := l_index_direction + 1
	    	end

			l_current_coordinates := coordinates_front
			l_index_ship_components := l_index_ship_components + 1
	    end

	    Result := list_of_coordinates

    end

feature{NONE}--implementation

	number_of_coordinates:INTEGER
	once
		Result := 20
	end

	ship_components : INTEGER
	once
		Result := 2
	end

	coordinates_tail : GR11_COORDINATES

	coordinates_front : GR11_COORDINATES

end
