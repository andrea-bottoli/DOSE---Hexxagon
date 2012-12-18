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
			num_of_player_three_or_four: number_of_players = 3 or number_of_players = 4
		do
			number_of_players := num_of_players

			create board_initializer.make (num_of_players)

			board := board_initializer.board

			number_of_levels := board_initializer.number_of_levels

			create initial_area.make(num_of_players)

			setup_phase := true

			current_player := 0

			ships_left := 6

			squadrons_left := 3

		ensure
			current_player_is_the_first : current_player = 0
			board_initialized : board /= Void
		end

feature --access

	board : HASH_TABLE[GR11_HEXAGON, GR11_COORDINATES]
	--data structure of the hex-map of the board

	initial_area : HASH_TABLE[LIST[GR11_COORDINATES], STRING]
	--map beetween players_id and their initial area

	number_of_levels : INTEGER
	--number of levels of the board

feature --modifiers

	add_ship(ship:GR11_BASE_SHIP; coordinates:GR11_COORDINATES; direction:GR11_DIRECTION)
	--add a ship to the board at position contained in coordinates
	--ship : the ship added
	--coordinates : contain the (ring, position) coordinates
	--direction : direction of the ship
	--player : owner of the ship
	require
		ship_is_not_empty: ship /= Void
		coordinates_not_empty : coordinates /= Void
		direction_not_empty : direction /= Void
		can_add_ship_at_coordinates : setup_phase implies can_add_ship(coordinates)
	local
		current_hexagon : GR11_HEXAGON
	do
		current_hexagon := board.item(coordinates)
		current_hexagon.add_ship(ship, direction)

		if
			setup_phase
		then
			decrement_ships_left
		end
	ensure
		ship_added_at_coordinates : board.item(coordinates).has_ship and then board.item(coordinates).ship = ship
	end

	add_capital_ship(capitalShip:GR11_CAPITAL_SHIP; coordinates:GR11_COORDINATES; direction:GR11_DIRECTION)
	--add a capital ship to the board at position at position contained in coordinates
	--capitalShip : the capital ship added
	--coordinates : contain the (ring, position) coordinates
	--direction : direction of the capital ship
	--player : owner of the capital ship
	require
		capital_ship_is_not_empty:capitalShip /= Void
		direction_not_empty : direction /= Void
		coordinates : coordinates /= Void
		can_add_capital_ship_at_coordinates : can_add_capital_ship(coordinates)
	local
		l_hexagon_move : GR11_HEXAGON_MOVE
		l_current_hexagon_tail : GR11_HEXAGON
		l_current_hexagon_front : GR11_HEXAGON
	do
		create l_hexagon_move

		l_current_hexagon_tail := board.item(coordinates)
		l_current_hexagon_tail.add_ship(capitalShip, direction)

		l_current_hexagon_front := board.item(l_hexagon_move.move_to(direction, coordinates))
		l_current_hexagon_front.add_ship(capitalShip, direction)

		decrement_capital_ships_left

		if
			current_player = number_of_players and then capital_ships_left = 0
		then
			setup_phase := false
		end

	ensure
		capital_ship_added : board.item (coordinates).has_ship
	end


	next_player(user_id:STRING)
	--set the new current player
	require
		user_id_not_void_and_not_empty : user_id /= Void and then not user_id.is_empty
	do
		current_player := current_player + 1

		initial_area.put (board_initializer.list_of_initial_area.i_th (current_player), user_id)

	ensure
		current_player_is_not_equal_to_old : current_player = (old(current_player) + 1) \\ (number_of_players)
	end

	get_ship_at(coordinates:GR11_COORDINATES):GR11_BASE_SHIP
	--return the ship at coordinates passed by parameters if exist
	--coordintes: says where take the ship
	require
		coordinates_not_void : coordinates /= Void
	do
		Result := board.item (coordinates).ship
	end

	fire(ship:GR11_BASE_SHIP; user_id:STRING):TUPLE
	--the ship passed by argument fires
	--ship : the ship that fires
	--user_id: owner of the ship
	require
		ship_not_void : ship /= Void
		user_id_not_void_not_empty : user_id /= Void and then user_id.is_empty
	local
		l_ship_coordinates : GR11_COORDINATES
		l_list : LIST[GR11_COORDINATES]
		l_destroyed : ARRAYED_LIST[GR11_COORDINATES]
		l_damaged : ARRAYED_LIST[GR11_COORDINATES]
		l_index : INTEGER
	do
		from
			board.start
		until
			board.off
		loop
			if board.item_for_iteration.ship = ship then
				l_ship_coordinates := board.key_for_iteration
			end
			board.forth
		end

		l_list := ship.fire.shooting_range (l_ship_coordinates, board.item (l_ship_coordinates).direction)

		create l_damaged.make (20)
		create l_destroyed.make (20)


		from
			l_index := l_list.count
		until
			l_index <= 0
		loop
			if
				board.has (l_list.i_th (l_index))
			then

				if not ship.fire.damage_all

				then
					if
						board.item (l_list.i_th (l_index)).has_ship
					then
						board.item (l_list.i_th (l_index)).ship.life.decrease_points

						if board.item (l_list.i_th (l_index)).ship.life.destroyed then
							
							board.item (l_list.i_th (l_index)).ship.set_killer(user_id)
							l_destroyed.put_front (l_list.i_th (l_index))
							board.item (l_list.i_th (l_index)).remove_ship
						else
							l_damaged.put_front (l_list.i_th (l_index))
						end
						l_index := 1
			       else
						if ship.fire.asteroids_block and then board.item (l_list.i_th (l_index)).has_asteroid then
							l_index := 1
						end
				   end

				else
					if
						board.item (l_list.i_th (l_index)).has_ship
					then
						board.item (l_list.i_th (l_index)).ship.life.decrease_points

						if board.item (l_list.i_th (l_index)).ship.life.destroyed then

								l_destroyed.put_front (l_list.i_th (l_index))
								board.item (l_list.i_th (l_index)).ship.set_killer(user_id)
								board.item (l_list.i_th (l_index)).remove_ship
						else
								l_damaged.put_front (l_list.i_th (l_index))
						end
					end
				end

			end

			l_index := l_index -1
		end

		Result := [l_damaged, l_destroyed]

	end

	move(start:GR11_COORDINATES; destination:GR11_COORDINATES; direction:GR11_DIRECTION):BOOLEAN
	--move the ship at coordinates start to the destination coordinates, if impossible it returns false
	--start : the initial coordinates where the ship is
	--destination : the coordinates where the ship wants to move
	--direction: final direction of the ship
	require
		start_and_destination_not_void : start /= Void and then destination /= Void
	local
		l_list : LIST[GR11_COORDINATES]
		l_hexagon : GR11_HEXAGON
		l_ship : GR11_BASE_SHIP
		l_direction : GR11_DIRECTION
	do
		if board.item(start).has_ship  then

			l_hexagon := board.item (start)
			l_list := l_hexagon.ship.movement.movement_range (l_hexagon.direction, start)
			l_list.compare_objects

			if l_list.has (destination) then

				l_ship := l_hexagon.ship
				l_direction := l_hexagon.direction
				l_hexagon.remove_ship

				if board.item (destination).has_ship then
					if l_ship.player_id  /= board.item (destination).ship.player_id then
						l_ship.life.decrease_points
						board.item (destination).ship.life.decrease_points
						--TODO collision beetweeen two ships, off board ??
					else
						l_ship.life.decrease_points
					end
				else
					if board.item (destination).has_asteroid then
						l_ship.life.decrease_points
					else
						board.item (destination).add_ship (l_ship, l_direction)
					end
				end

				Result := True
			end

		end

		Result := false

	end

	move_asteroid(source:GR11_COORDINATES; destination:GR11_COORDINATES; id_player:STRING):TUPLE
	-- it moves asteroid from source to destination
	require
		source_not_void : source /= Void
		destination_not_void : destination /= Void
		id_player_not_void_and_not_empty : id_player /= Void and then not id_player.is_empty
	do

	end

	move_to(source:GR11_COORDINATES; range_movement :INTEGER):TUPLE
	--it moves the ship at source coordinates of range position
	require
		source_not_void : source /= Void
		range_positive : range_movement >= 0
	do

	end

	range(source:GR11_COORDINATES; destination:GR11_COORDINATES) : INTEGER
	--it returns the number of hexagons beetween source and destination
	--result = -1 if there are errors
	require
		source_not_void : source /= Void
		destination_not_void : destination /= Void
	do

	end



feature --status access

	can_add_ship(coordinates:GR11_COORDINATES):BOOLEAN
	--it checks if it's possible to add a ship at position defined by coordinates parameter
	--coordinates : defines the position
	--Result: true id it's possibles
	require
		coordinates_not_void : coordinates /= Void
	local
		l_list : LIST[GR11_COORDINATES]
		l_board : HASH_TABLE[GR11_HEXAGON, GR11_COORDINATES]
		l_hexagon : GR11_HEXAGON
		l_ship : GR11_BASE_SHIP
		l_direction : GR11_DIRECTION
		l_number_of_capital_ships_left : INTEGER
		l_number_of_squadrons_left :INTEGER
	do
		create l_board.make (board_initializer.list_of_initial_area.i_th (current_player).count)
		l_list := board_initializer.list_of_initial_area.i_th(current_player)
		l_list.compare_objects

		from
			l_list.start
		until
			l_list.exhausted
		loop
			l_board.put (board.item(l_list.item), l_list.item )
			l_list.forth
		end


		if not l_board.item (coordinates).has_ship and l_list.has (coordinates) then

			create l_hexagon.make
			create l_ship
			create l_direction.make (0)
			l_hexagon.add_ship (l_ship, l_direction)
			l_board.put (l_hexagon, coordinates)

			if find_possible_placement(coordinates, l_board, ships_left) then

				l_number_of_capital_ships_left := capital_ships_left
				l_number_of_squadrons_left := squadrons_left - 1

				from
					l_list.start
				until
					l_list.exhausted
				loop

					if not l_board.item (l_list.item).has_ship then

						if l_number_of_squadrons_left > 0  and then find_possible_placement(l_list.item, l_board, number_of_ships) then
								l_number_of_squadrons_left := l_number_of_squadrons_left - 1
					    else
					    	if l_number_of_capital_ships_left > 0 and then find_possible_placement (l_list.item, l_board, number_of_capital_ships) then
                                l_number_of_capital_ships_left := l_number_of_capital_ships_left - 1
					    	else
					    		Result := true
					    	end

						end
					end

					l_list.forth
				end
			end

		end

		Result := False
	end


	can_add_capital_ship(coordinates:GR11_COORDINATES):BOOLEAN
	--it checks if it's possible to add a capital ship at position defined by coordintes parameter
	--coordinates : defines the position
	--Result: true id it's possible
	require
		coordinates_not_void : coordinates /= Void
	local
		l_list : LIST[GR11_COORDINATES]
		l_board : HASH_TABLE[GR11_HEXAGON, GR11_COORDINATES]
		l_hexagon : GR11_HEXAGON
		l_ship : GR11_BASE_SHIP
		l_direction : GR11_DIRECTION
		l_number_of_capital_ships_left : INTEGER
	do
		create l_board.make (board_initializer.list_of_initial_area.i_th (current_player).count)
		l_list := board_initializer.list_of_initial_area.i_th(current_player)
		l_list.compare_objects

		from
			l_list.start
		until
			l_list.exhausted
		loop
			l_board.put (board.item(l_list.item), l_list.item )
			l_list.forth
		end

		if not board.item (coordinates).has_ship and l_list.has (coordinates) then

			create l_hexagon.make
			create l_ship
			create l_direction.make (0)
			l_hexagon.add_ship (l_ship, l_direction)
			l_board.put (l_hexagon, coordinates)

			if find_possible_placement(coordinates, l_board, number_of_capital_ships) then

				l_number_of_capital_ships_left := capital_ships_left -1

				from
					l_list.start
				until
					l_list.exhausted
				loop

					if not board.item (l_list.item).has_ship then

				    	if l_number_of_capital_ships_left > 0 and then find_possible_placement (l_list.item, l_board, number_of_capital_ships) then
                                l_number_of_capital_ships_left := l_number_of_capital_ships_left - 1
				    	else
				    		Result := true
				    	end
					end

					l_list.forth
				end
			end

		end

		Result := False
	end


feature{NONE} --Implementation

	current_player:INTEGER
	--current player

	number_of_players:INTEGER
	--number of players

	number_of_ships:INTEGER
	--number of ships for each squadron
	once
		Result := 6
	end

	number_of_squadrons:INTEGER
	--number of ships for each squadron
	once
		Result := 3
	end

	number_of_capital_ships:INTEGER
	--number of ships for each squadron
	once
		Result := 2
	end


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


    decrement_ships_left
    --auxiliary function that decrement the number of ships left of the current player
    do
		ships_left := ships_left -1
		if ships_left = 0 and then  squadrons_left >= 1  then
			squadrons_left := squadrons_left - 1
			ships_left := number_of_ships
		end

		if squadrons_left = 0 then
			squadrons_left := number_of_squadrons
		end
    end


    decrement_capital_ships_left
    --auxiliary function that decrements the number of capital ships left of the current player
    do
    	capital_ships_left := capital_ships_left - 1

    	if capital_ships_left = 0 then
    		capital_ships_left := number_of_capital_ships
    	end
    end

    ships_left :INTEGER
    --it says how many ships the current player have not placed yet

    squadrons_left : INTEGER
    --it says how many squadron the current player have not placed yet

    capital_ships_left : INTEGER
    -- it says how many capital ships the current player have not placed yet

    find_possible_placement(coordinates:GR11_COORDINATES; local_board:HASH_TABLE[GR11_HEXAGON, GR11_COORDINATES]; num:INTEGER):BOOLEAN
    --recursive function that finds a possible placement from the coordinates parameter
	local
		l_direction : GR11_DIRECTION
		l_hexagon_move: GR11_HEXAGON_MOVE
		l_coordinates : GR11_COORDINATES
		l_ship_direction : GR11_DIRECTION
		l_hexagon : GR11_HEXAGON
		l_ship : GR11_BASE_SHIP
	do
		if num  = 0 then
			Result := True
		else

			create l_direction.make (0)
			create l_hexagon_move

			from
				l_direction.start
			until
				l_direction.exhausted
			loop
				create l_ship_direction.make (l_direction.iterator)
				l_coordinates := l_hexagon_move.move_to (l_ship_direction, coordinates)
				if not board.item (l_coordinates).has_ship then
					create l_ship
					create l_hexagon.make
					l_hexagon.add_ship (l_ship, l_ship_direction)
					local_board.put(l_hexagon, l_coordinates)
					Result := find_possible_placement(l_coordinates, local_board, num -1 )
				end
				l_direction.next
			end

			Result := false
		end

	end

	board_initializer : GR11_BOARD_INITIALIZER
	--the current board_initializer

	setup_phase :BOOLEAN
	--says if the class is in the setup phase


invariant

	current_player_beetween_zero_and_number_of_player : current_player >= 0 and then current_player < number_of_players

end
