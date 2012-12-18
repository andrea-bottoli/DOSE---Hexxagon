note
 description: "contains functionality for the tile of the carcassone logic component"
 author: "Anastasia, Angel Kyriako"
 date: "15/12/2012"
 revision: "3.0"

class
	G10_LOGIC_TILE
	inherit
 		G10_LOGIC_CONSTANTS

create
 	make_with_id, make_available

feature{NONE} -- attributes

	tile_id : STRING
	degrees_rotated : STRING
	followers_part: INTEGER

	north: G10_LOGIC_TILE_SUBTERRAIN
	south: G10_LOGIC_TILE_SUBTERRAIN
	east: G10_LOGIC_TILE_SUBTERRAIN
	west: G10_LOGIC_TILE_SUBTERRAIN
	center: G10_LOGIC_TILE_SUBTERRAIN
feature{ANY} -- constructor

	make_available
	do
		tile_id := available_tile
		degrees_rotated := "0"
		followers_part := does_not_exist

		north := void
		south := void
		east := void
		west := void
		center := void
	end

	make_with_id(id : STRING)
	require
		id_valid: id.is_integer
	do
		-- init attributes
		tile_id := id
		degrees_rotated := "0"
		followers_part := does_not_exist

		-- init all directions
		initialize_tile(id)
	ensure
		valid_degrees_rotated : degrees_rotated.is_equal ("0") = true
		valid_tile_id : tile_id.is_equal (id) = true
	end

feature{NONE} -- init

	initialize_tile(id: STRING)
	do
		-- init all directions based on the id (they are the directions of an image tile "<id>_0.png")
		create center.make_center(id)
		create north.make_north(id)
		create east.make_east(id)
		create west.make_west(id)
		create south.make_south(id)
	end

feature{G10_LOGIC_GAME_MAIN , G10_LOGIC_TERRAIN , G10_LOBBY_USER} -- mutators

	set_tile_id (id : STRING) -- routine sets tile id to id
	do
		tile_id := id
	end

	set_degrees_rotated(degrees : STRING) -- routine sets the degrees_rotated to degrees
	do
		degrees_rotated := degrees
	ensure
		valid_mutation : degrees_rotated.is_equal (degrees) = true
	end

	rotate -- routine rotates the tile.
	local
		north_tmp , west_tmp , south_tmp , east_tmp: G10_LOGIC_TILE_SUBTERRAIN
	do
		if (degrees_rotated.is_equal ("0") = true) then
			degrees_rotated := "90"
		elseif(degrees_rotated.is_equal ("90") = true) then
			degrees_rotated := "180"
		elseif(degrees_rotated.is_equal ("180") = true) then
			degrees_rotated := "270"
		elseif(degrees_rotated.is_equal ("270") = true) then
			degrees_rotated := "0"
		end

	 	north_tmp := north -- keep north side in a temporary variable
		east_tmp := east
		west_tmp := west
		south_tmp := south

	 	north := west_tmp
 		east := north_tmp
 		south := east_tmp
 		west := south_tmp
 	ensure
 		is_rotated: north.side_is_equal (old west) and east.side_is_equal (old north) and
 					south.side_is_equal (old east) and west.side_is_equal (old south)
	end

	insert_follower(tile_part, player_id: INTEGER)
	require
		tile_part_valid: tile_part >= 1 and tile_part <= 9
		player_id_valid: player_id >= 1 and player_id <=6
	do
		followers_part := tile_part

		if tile_part = 1 then
			north.set_follower (top_const, player_id)
			west.set_follower (top_const, player_id)
		elseif tile_part = 2 then
			north.set_follower (middle_const, player_id)
		elseif tile_part = 3 then
			north.set_follower (bottom_const, player_id)
			east.set_follower (top_const, player_id)
		elseif tile_part = 4 then
			west.set_follower (middle_const, player_id)
		elseif tile_part = 5 then
			center.set_follower (middle_const, player_id) -- center no need to put also on the other 2 parts
		elseif tile_part = 6 then
			east.set_follower (middle_const, player_id)
		elseif tile_part = 7 then
			south.set_follower (top_const, player_id)
			west.set_follower (bottom_const, player_id)
		elseif tile_part = 8 then
			south.set_follower (middle_const, player_id)
		elseif tile_part = 9 then
			south.set_follower (bottom_const, player_id)
			east.set_follower (bottom_const, player_id)
		end
	end

	remove_follower(tile_part: INTEGER)
	require
		tile_part_valid: tile_part >= 1 and tile_part <= 9
	do
		followers_part := does_not_exist

		if tile_part = 1 then
			north.set_follower (top_const, -1)
			west.set_follower (top_const, -1)
		elseif tile_part = 2 then
			north.set_follower (middle_const, -1)
		elseif tile_part = 3 then
			north.set_follower (bottom_const, -1)
			east.set_follower (top_const, -1)
		elseif tile_part = 4 then
			west.set_follower (middle_const, -1)
		elseif tile_part = 5 then
			center.set_follower (middle_const, -1) -- center no need to put also on the other 2 parts
		elseif tile_part = 6 then
			east.set_follower (middle_const, -1)
		elseif tile_part = 7 then
			south.set_follower (top_const, -1)
			west.set_follower (bottom_const, -1)
		elseif tile_part = 8 then
			south.set_follower (middle_const, -1)
		elseif tile_part = 9 then
			south.set_follower (bottom_const, -1)
			east.set_follower (bottom_const, -1)
		end
	end

feature {G10_LOGIC_TERRAIN , G10_LOGIC_GAME_MAIN} -- match observers

	matches_north_with_south(other: G10_LOGIC_TILE): BOOLEAN
	do
		if other = void or other.is_available_tile then
			Result := true
		elseif north.side_is_equal ( other.get_direction (south_const) ) then
			Result := true
		else
			Result := false
		end
	end

	matches_west_with_east(other: G10_LOGIC_TILE): BOOLEAN
	do
		if other = void or other.is_available_tile then
			Result := true
		elseif west.side_is_equal ( other.get_direction (east_const) )then
			Result := true
		else
			Result := false
		end
	end

	matches_east_with_west(other: G10_LOGIC_TILE): BOOLEAN
	do
		if other = void or other.is_available_tile then
			Result := true
		elseif east.side_is_equal ( other.get_direction (west_const) ) then
			Result := true
		else
			Result := false
		end
	end

	matches_south_with_north(other: G10_LOGIC_TILE): BOOLEAN
	do
		if other = void or other.is_available_tile then
			Result := true
		elseif south.side_is_equal ( other.get_direction (north_const) )then
			Result := true
		else
			Result := false
		end
	end

feature {G10_LOGIC_TERRAIN, G10_LOGIC_TILE, G10_LOGIC_GAME_MAIN} -- observers

	is_available_tile: BOOLEAN
	do
		if current.get_tile_id.is_equal (available_tile) then
			Result := true
		else
			Result := false
		end
	end

feature{G10_LOGIC_GAME_MAIN, G10_LOGIC_TILE, G10_LOGIC_TERRAIN} -- accessors

	get_tile_id : STRING -- routine returns the tile's id
	do
		result := tile_id
	ensure
		tile_if_not_mutated : tile_id /= void and tile_id.is_equal (old tile_id)
	end

	get_direction(a_direction : INTEGER): G10_LOGIC_TILE_SUBTERRAIN
	require
		valid_arg: a_direction > 0
	do

		if a_direction = north_const then
			Result := north
		elseif a_direction = west_const then
			Result := west
		elseif a_direction = east_const then
			Result := east
		elseif a_direction = south_const then
			Result := south
		elseif a_direction = center_const then
			Result := center
		else
			print("%Nproblem in get_direction %N%N")
		end
	ensure
		valid_result: Result /= void
	end

	get_followers_part: INTEGER -- returns the part of the tile where tie follower exists (-1 if it does not exist)
	do
		Result := followers_part
	end

	get_followers_players_id: INTEGER -- returns the player's id of the one that placed the follower on the tile (-1 if it does not exist)
	do
		if followers_part = does_not_exist then
			Result := does_not_exist
		elseif followers_part = 1 then
			Result := north.get_top_follower_status
		elseif followers_part = 2 then
			Result := north.get_middle_follower_status
		elseif followers_part = 3 then
			Result := north.get_bottom_follower_status
		elseif followers_part = 4 then
			Result := west.get_middle_follower_status
		elseif followers_part = 5 then
			Result := center.get_middle_follower_status -- remember that only the center has the follower status of the center
		elseif followers_part = 6 then
			Result := east.get_middle_follower_status
		elseif followers_part = 7 then
			Result := south.get_top_follower_status
		elseif followers_part = 8 then
			Result := south.get_middle_follower_status
		elseif followers_part = 9 then
			Result := south.get_bottom_follower_status
		end
	end

	get_degrees_rotated() : STRING -- routine returns the degrees rotation of the tile
	require
		degrees_not_void : degrees_rotated /= void
	do
		result := degrees_rotated
	ensure
		degrees_not_mutated : degrees_rotated.is_equal (old degrees_rotated) = true
	end

end
