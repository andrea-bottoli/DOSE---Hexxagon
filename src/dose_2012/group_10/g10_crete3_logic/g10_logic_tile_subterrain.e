note
	description: "includes functionality for a side or the center of a certain tile"
	author: "Angel Kyriako"
	date: "15/12/2012"
	revision: "3.0"

class
	G10_LOGIC_TILE_SUBTERRAIN
	inherit
		G10_LOGIC_CONSTANTS

create  make_center, make_north, make_west, make_south, make_east

feature{NONE} -- attributes
							-- tuple of [field type, the id of the player that putted the followr in this part (-1 if there is no follower)]
	top: TUPLE[terrain: attached INTEGER; follower_id: attached INTEGER]
	middle: TUPLE[terrain: attached INTEGER; follower_id: attached INTEGER]
	bottom: TUPLE[terrain: attached INTEGER; follower_id: attached INTEGER]

feature{G10_LOGIC_TILE} -- constructors one for each part (north, south, west, east and center)

	make_center(tile_id :STRING) -- constructs all the parts of the center of a tile
	require
		tile_id_valid: tile_id /= void and not tile_id.is_empty
	do

		if	tile_id.is_equal("1") or tile_id.is_equal("3") or tile_id.is_equal("13") or tile_id.is_equal("14")or
		  	tile_id.is_equal("16")or tile_id.is_equal("17")or tile_id.is_equal("19") then
		   	init_farm
		elseif	tile_id.is_equal("7") or tile_id.is_equal("8") or tile_id.is_equal("15")then
			init_road
		elseif	tile_id.is_equal("10") or tile_id.is_equal("11") or tile_id.is_equal("12") or tile_id.is_equal("18") then
			init_land
		elseif	tile_id.is_equal("2") or tile_id.is_equal("6") or tile_id.is_equal("9") then
			init_crossings
		elseif	tile_id.is_equal("4") or tile_id.is_equal("5") then
			init_monastery
		else
			print("%NProblem in init_center%N%N")
		end

	ensure
		init_center_successful: top /= void and middle /= void and bottom /= void
	end


	make_north(tile_id :STRING) -- constructs all the parts of the north side of a tile
	require
		tile_id_valid: tile_id /= void and not tile_id.is_empty
	do

		if	tile_id.is_equal("1") or tile_id.is_equal("3") or tile_id.is_equal("4") or tile_id.is_equal("5")or
		  	tile_id.is_equal("8")or tile_id.is_equal("14")or tile_id.is_equal("17") then
		   	init_farm
		elseif	tile_id.is_equal("2") or tile_id.is_equal("6") or tile_id.is_equal("7") or tile_id.is_equal("9") or
			  	tile_id.is_equal("15") or tile_id.is_equal("16") or tile_id.is_equal("19") then
			init_farm_road_farm
		elseif	tile_id.is_equal("10") or tile_id.is_equal("11") or tile_id.is_equal("12") or
			  	tile_id.is_equal("13") or tile_id.is_equal("18")then
			init_land
		else
			print("%NProblem in init_north%N%N")
		end

	ensure
		init_north_successful: top /= void and middle /= void and bottom /= void
	end

	make_west(tile_id :STRING) -- constructs all the parts of the west side of a tile
	require
		tile_id_valid: tile_id /= void and not tile_id.is_empty
	do

		if	tile_id.is_equal("4") or tile_id.is_equal("5") or tile_id.is_equal("7") or
		  	tile_id.is_equal("9")or tile_id.is_equal("18") then
			init_farm
		elseif	tile_id.is_equal("6") or tile_id.is_equal("8")then
			init_farm_road_farm
		elseif	tile_id.is_equal("1") or tile_id.is_equal("2") or tile_id.is_equal("3") or tile_id.is_equal("10") or
			  	tile_id.is_equal("11") or tile_id.is_equal("12") or tile_id.is_equal("13") or tile_id.is_equal("14") or
			  	tile_id.is_equal("15") or tile_id.is_equal("16") or tile_id.is_equal("17") or tile_id.is_equal("19") then
			init_land
		else
			print("%NProblem in init_west%N%N")
		end

	ensure
		init_west_successful: top /= void and middle /= void and bottom /= void
	end


	make_east(tile_id :STRING) -- constructs all the parts of the east side of a tile
	require
		tile_id_valid: tile_id /= void and not tile_id.is_empty
	do

		if 	tile_id.is_equal("1") or tile_id.is_equal("4") or tile_id.is_equal("5") or tile_id.is_equal("11")or
		   	tile_id.is_equal("13")or tile_id.is_equal("14")or tile_id.is_equal("15") or tile_id.is_equal("18") then
			init_farm
		elseif	tile_id.is_equal("2") or tile_id.is_equal("6") or tile_id.is_equal("7") or tile_id.is_equal("8")or
		   		tile_id.is_equal("9")or tile_id.is_equal("12")or tile_id.is_equal("16") or
		   		tile_id.is_equal("17") or tile_id.is_equal("19") then
			init_farm_road_farm
		elseif tile_id.is_equal("3") or tile_id.is_equal("10") then
			init_land
		else
			print("%NProblem in init_east%N%N")
		end

	ensure
		init_east_successful: top /= void and middle /= void and bottom /= void
	end

	make_south(tile_id :STRING) -- constructs all the parts of the south side of a tile
	require
		tile_id_valid: tile_id /= void and not tile_id.is_empty
	do

		if	tile_id.is_equal("3") or tile_id.is_equal("4") or tile_id.is_equal("7") or tile_id.is_equal("8")or
		   	tile_id.is_equal("13")or tile_id.is_equal("14")or tile_id.is_equal("16") then
			init_farm
		elseif	tile_id.is_equal("2") or tile_id.is_equal("5") or tile_id.is_equal("6") or
			  	tile_id.is_equal("9") or tile_id.is_equal("15") or tile_id.is_equal("17") then
			init_farm_road_farm
		elseif	tile_id.is_equal("1") or tile_id.is_equal("10") or tile_id.is_equal("11") or
				tile_id.is_equal("12") or tile_id.is_equal("18") or tile_id.is_equal("19")then
			init_land
		else
			print("%NProblem in init_south%N%N")
		end

	ensure
		init_south_successful: top /= void and middle /= void and bottom /= void
	end

feature {NONE}	-- mutators
				-- initiations for every possible part

	-- used only for center
	init_road
	do
		top := [road,does_not_exist]
		middle := [road,does_not_exist]
		bottom := [road,does_not_exist]
	ensure
		init_successfull: top /= void and middle /= void and bottom /= void
	end

	init_crossings
	do
		top := [crossings,does_not_exist]
		middle := [crossings,does_not_exist]
		bottom := [crossings,does_not_exist]
	ensure
		init_successfull: top /= void and middle /= void and bottom /= void
	end

	init_monastery
	do
		top := [monastery,does_not_exist]
		middle := [monastery,does_not_exist]
		bottom := [monastery,does_not_exist]
	ensure
		init_successfull: top /= void and middle /= void and bottom /= void
	end

	-- used only for sides
	init_farm_road_farm
	do
		top := [farm,does_not_exist]
		middle := [road,does_not_exist]
		bottom := [farm,does_not_exist]
	ensure
		init_successfull: top /= void and middle /= void and bottom /= void
	end

	-- used for both sides and center
	init_farm
	do
		top := [farm,does_not_exist]
		middle := [farm,does_not_exist]
		bottom := [farm,does_not_exist]
	ensure
		init_successfull: top /= void and middle /= void and bottom /= void
	end

	init_land
	do
		top := [land,does_not_exist]
		middle := [land,does_not_exist]
		bottom := [land,does_not_exist]
	ensure
		init_successfull: top /= void and middle /= void and bottom /= void
	end

feature {G10_LOGIC_TILE} -- mutator

	set_follower(a_part, player_id: INTEGER)
	require
		not part_has_follower
	do
		if top_const = a_part then
			top.follower_id := player_id
		elseif middle_const = a_part then
			middle.follower_id := player_id
		elseif bottom_const = a_part then
			bottom.follower_id := player_id
		else
			print("%NProblem in insert follower%N%N")
		end
	ensure
		part_has_follower
	end

feature {G10_LOGIC_TILE} -- observer

	side_is_equal(other_part: G10_LOGIC_TILE_SUBTERRAIN): BOOLEAN -- returns true if the current matches the other part of the tile
	require
		arg_valid: other_part /= void
	do
		if	top.terrain.is_equal (other_part.get_top_terrain_status) and
			middle.terrain.is_equal (other_part.get_middle_terrain_status) and
			bottom.terrain.is_equal (other_part.get_bottom_terrain_status) then
			Result := true
		elseif top.terrain.is_equal (other_part.get_bottom_terrain_status) and
			middle.terrain.is_equal (other_part.get_middle_terrain_status) and
			bottom.terrain.is_equal (other_part.get_top_terrain_status) then
			Result := true
		else
			Result := false
		end
	end

	part_has_follower: BOOLEAN
	do
		if top.follower_id = -1 and middle.follower_id = -1  and bottom.follower_id = -1  then
			Result := false
		else
			Result := true
		end
	end

feature {G10_LOGIC_GAME_MAIN, G10_LOGIC_TILE, G10_LOGIC_TILE_SUBTERRAIN} -- accessors

	get_top_terrain_status: INTEGER -- returns the top terrain status
	do
		Result := top.terrain
	ensure
		result_valid: Result > 0
	end
	get_top_follower_status: INTEGER -- returns the top follower status
	do
		Result := top.follower_id
	ensure
		result_valid: Result > 0 or Result = -1
	end

	get_middle_terrain_status: INTEGER -- returns the mid terrain status
	do
		Result := middle.terrain
	ensure
		result_valid: Result > 0
	end
	get_middle_follower_status: INTEGER -- returns the top follower status
	do
		Result := middle.follower_id
	ensure
		result_valid: Result > 0 or Result = -1
	end

	get_bottom_terrain_status: INTEGER -- returns the bot terrain status
	do
		Result := bottom.terrain
	ensure
		result_valid: Result > 0
	end
	get_bottom_follower_status: INTEGER -- returns the top follower status
	do
		Result := bottom.follower_id
	ensure
		result_valid: Result > 0 or Result = -1
	end

end
