note
	description: "Represents the board of the game"
	author: "Milano4"
	date: "24/11/2012"
	revision: "0.1"

class
	GR11_BOARD

create
	make


feature {NONE} -- Initialization

	make(num_of_players:INTEGER)
			-- initializes the board with the rules for three players
			-- num_of_players: says how much player have the game
		require
			num_of_player_three_or_four: num_of_player = 3 or num_of_player = 4

		local
			hexagon : GR11_HEXAGON
			coordinates : GR11_COORDINATES
			l_level_index :INTEGER
			l_ring_index :INTEGER
		do
			number_of_players := num_of_players
			create board
			board.make(number_of_hexagon)

			--Initialization of the board
			create hexagon
			create coordinates.make(0,0)
			board.put(hexagon, coordinates)

			from
				l_level_index := 1
			until
				l_level_index <= numbers_of_levels
			loop

				from
			    	l_ring_index := 0
				until
					l_ring_index < numbers_of_levels * numbers_of_neighbours
					--the ring have a number of elements equal to levels*(neighbours in an hexagon)
				loop
					create hexagon
					create coordinates.make(l_level_index,l_ing_index)
					board.put(hexagon, coordinates)

				end

				l_index := l_index + 1
			end

		end

feature --modifiers

	add_ship(ship:GR11_BASE_SHIP; coordinates:GR11_COORDINATES; direction:GR11_DIRECTION; player:GR11_PLAYER)
	--add a ship to the board at position contained in coordinates
	--ship : the ship added
	--coordinates : contain the (ring, position) coordinates
	--direction : direction of the ship
	--player : owner of the ship
	require
		ship_is_not_empty: ship /= Void
		coordinates_not_empty : coordinates /= Void
		direction_not_empty : direction /= Void
		player_not_empty : player/= Void
		can_add_ship_at_coordinates : can_add_ship(coordinates, player)
	local
		current_hexagon : GR11_HEXAGON
	do
		current_hexagon := board.item(coordinates)
		current_hexagon.add_ship(GR11_BASE_SHIP)
	ensure
		ship_added_at_coordinates : board.item(coordinates).has_ship and then board.item(coordinatas).ship = ship
	end

	add_capital_ship(capitalShip:GR11_BASE_SHIP; coordinates:GR11_COORDINATES; direction:GR11_DIRECTION; player:GR11_PLAYER)
	--add a capital ship to the board at position at position contained in coordinates
	--capitalShip : the capital ship added
	--coordinates : contain the (ring, position) coordinates
	--direction : direction of the capital ship
	--player : owner of the capital ship
	require
		capital_ship_is_not_empty:capitalShip /= Void
		direction_not_empty : direction /= Void
		player_not_empty : player/= Void
		coordinates : coordinates /= Void
		can_add_capital_ship_at_coordinates : can_add_capital_ship(coordinates)
	do
		add_ship(capitalShip.tail, coordinates, direction, player)
		add_ship(capitalShip.front, coordinates.get(direction), direction, direction)
	ensure
		--TODO if rules : capital ship added, else not added
	end

feature --status access

	can_add_ship(coordinates:GR11_COORDINATES):BOOLEAN
	--it checks if it's possible to add a ship at position defined by coordinates parameter
	--coordinates : defines the position
	--Result: true id it's possible
	do
	end


	can_add_capital_ship(coordinates:GR11_COORDINATES):BOOLEAN
	--it checks if it's possible to add a capital ship at position defined by coordintes parameter
	--coordinates : defines the position
	--Result: true id it's possible
	do
	end

feature{NONE} --Implementation

	number_of_players:INTEGER
	--number of players

    number_of_hexagon:INTEGER
    --number of hexagon in the board
    local
    	index : INTEGER
    	l_result : INTEGER
    do
    	l_result := 1

    	from
    		index := 1
    	until
    		index <= number_of_levels
    	loop
    		l_result := l_result + index*number_of_neighbours
    	end

    	Result := l_result

    end

    number_of_neighbours:INTEGER
    --number of_neighbours in the hex map
    once
    	Result := 6
    end

    number_of_levels:INTEGER
    --number_of_level_int_the_hex_map
    once
    	if number_of_players = 3 then
    		Result := 9
    	else
    		Result := 11
    	end
    end

	board : HASH_TABLE[GR11_HEXAGON, GR11_COORDINATES]
	--data structure of the hex-map of the board

end
