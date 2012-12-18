note
 description: "contains functionality of the carcassone logic terrain array"
 author: "Angel Kyriako"
 date: "15/12/2012"
 revision: "3.0"

class
	G10_LOGIC_TERRAIN
	inherit
		G10_LOGIC_CONSTANTS
create
 make_with_starting_tile

feature{NONE} -- attributes
	terrain_2D: ARRAY2[G10_LOGIC_TILE]
	terrain_tile_count: INTEGER

feature {G10_LOGIC_GAME_MAIN} -- constructor
	make_with_starting_tile(starting_tile: G10_LOGIC_TILE) -- creates the terrain 2D array and inserts the first tile and it's perimeter

	do
  		create terrain_2D.make_filled (void, max_tiles_per_row, max_tiles_per_column)
  		terrain_tile_count := 0

		insert_available_tile_to_terrain(starting_tile_row_index, starting_tile_col_index)
  		insert_tile_to_terrain(starting_tile, starting_tile_row_index, starting_tile_col_index)

  	ensure
   		terrain_not_void : terrain_2D /= void
 	end

feature {G10_LOGIC_GAME_MAIN , G10_LOBBY_USER} -- mutators

	insert_tile_to_terrain(a_tile: G10_LOGIC_TILE row, column: INTEGER) -- inserts a certain tile to terrain
	require
	valid_tile: a_tile/= void
	valid_row: row >= 1 and row <= 40
	valid_col: column >= 1 and column <= 40
	do

		if (tile_matches_terrain_item(a_tile, row, column) = true)then

			terrain_2D.put (a_tile, row, column)
			insert_available_tiles_in_perimeter(row, column)
			terrain_tile_count := terrain_tile_count + 1
		end
	ensure
		-- tile_added_successfully: terrain_tile_count = old terrain_tile_count or not terrain_item_is_available(row, column)
	end

	insert_available_tile_to_terrain( row, column: INTEGER) -- inserts an available tile to terrain if in row,column an empty tile ocurrs
	require
		valid_row: row >= 1 and row <= 40
		valid_col: column >= 1 and column <= 40
	local
		an_available_tile: G10_LOGIC_TILE
	do
		if terrain_item_is_empty(row ,column) then

			create an_available_tile.make_available
			terrain_2D.put (an_available_tile, row, column)

		end
	end

	insert_available_tiles_in_perimeter(row, column: INTEGER) -- inserts available tiles to north, south, west and east tiles of the row, column tile
	do
		insert_available_tile_to_terrain(row - 1 , column)
		insert_available_tile_to_terrain(row , column + 1)
		insert_available_tile_to_terrain(row + 1 , column)
		insert_available_tile_to_terrain(row , column - 1)
	end

feature {G10_LOGIC_GAME_MAIN , G10_LOBBY_USER} --observer

	get_array : ARRAY2[G10_LOGIC_TILE]
	do
		result := terrain_2d
	end

	terrain_item_is_empty(row, column: INTEGER): BOOLEAN -- returns true if the row, column tile is void
	do
		if (get_field_tile(row, column) = void) then

			Result := true
		else
			Result := false
		end
	end

	terrain_item_is_available(row, column: INTEGER): BOOLEAN
	do
		if (get_field_tile(row, column) = void)then
			Result := true
		elseif	get_field_tile(row, column).is_available_tile then -- returns true if the row, column tile is has id available
			Result := true
		else
			Result := false
		end
	end

	tile_matches_terrain_item(a_tile: G10_LOGIC_TILE row, col: INTEGER): BOOLEAN
	require
		valid_tile: a_tile/= void
		valid_row: row >= 1 and row <= 40
		valid_col: col >= 1 and col <= 40
	local
		id : STRING
		undescore_index : INTEGER
	do
			print("%Na_tile (1)is "+a_tile.get_tile_id+" %N")
			--print("%Na_tile(2) is "+a_tile.get_tile_id+"_"+a_tile.get_degrees_rotated+" %N")
		if not a_tile.matches_north_with_south(get_field_tile(row-1,col) ) then -- a_tile north
			if get_field_tile(row-1,col)/=void then
				print("%Nnorth with south "+get_field_tile(row-1,col).get_tile_id +"_"+get_field_tile(row-1,col).get_degrees_rotated+" is false%N")
			end
			Result := false
		elseif not a_tile.matches_south_with_north(get_field_tile(row+1,col) ) then -- a_tile south
			if get_field_tile(row+1,col)/=void then
				print("%Nsouth with north "+get_field_tile(row+1,col).get_tile_id +"_"+get_field_tile(row+1,col).get_degrees_rotated+" is false%N")
			end
			Result := false
		elseif not a_tile.matches_east_with_west(get_field_tile(row,col+1) ) then -- a_tile east
			if get_field_tile(row,col+1)/=void then
			 print("%Neast with west "+get_field_tile(row,col+1).get_tile_id +"_"+get_field_tile(row,col+1).get_degrees_rotated+" is false%N")
			end
			Result := false
		elseif not a_tile.matches_west_with_east(get_field_tile(row,col-1) ) then -- a_tile west
			if get_field_tile(row,col-1) /= void then
				 print("%Nwest with east "+get_field_tile(row,col-1).get_tile_id +"_"+get_field_tile(row,col-1).get_degrees_rotated+" is false%N")
			end
			Result := false
		else
			Result := true
		end
	end

	all_drawed_tiles_placed: BOOLEAN  -- returns true if all 72 tiles are placed
	require
		valid_attribute: terrain_tile_count >= 0
	do
		if terrain_tile_count /= 0 then
			Result := false
		else
			Result := true
		end
	end

feature {G10_LOGIC_GAME_MAIN} -- accessors

	get_field_tile(row, column: INTEGER): G10_LOGIC_TILE -- return the row,col tile of the terrain
	require
		valid_row: row >= 1 and row <= 40
		valid_col: column >= 1 and column <= 40
	do
		Result := terrain_2D.item (row, column)
	end

	get_field_tiles_number: INTEGER -- returns the number of the tiles placed on the terrain
	do
		Result := terrain_tile_count
	end

end
