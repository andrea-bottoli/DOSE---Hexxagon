note
	description: "Summary description for {G10_GUI_TERRAIN_PANEL}."
	author: "Eleytherios S. Benisis"
	date: "$Date 9/12"
	revision: "$terrain panel is a group class containing the 72x72 terrain of tile of the game.$"

class
	G10_GUI_TERRAIN_PANEL
inherit
	EV_FIXED
	G10_GAME_CONSTANTS
	undefine
		copy , is_equal, default_create
	end

create
	make

-- attributes
feature {NONE}
	terrain : ARRAY2[G10_GUI_TILE]
--	count_of_tiles : INTEGER
--	max_horizontal_tiles_num : INTEGER
--	max_vertical_tiles_num : INTEGER

-- constructors.
feature {ANY}
	make(game : G10_GUI_GAME_MAIN)
	require
		game_not_null : game /= void
	do
		default_create
		update_background(pix_terrain_panel)
		set_minimum_width (terrain_width)
		set_minimum_height (terrain_height)

		init_terrain(game)
	end

-- mutator methods.
feature {NONE}
	update_background(a_pixmap : EV_PIXMAP) -- routine sets the background pixmap of this object to arg pixmap
	require
		arg_pixmap_not_void : a_pixmap /= void
	do
		set_background_pixmap (a_pixmap)
		ensure
			background_changed_to_arg_pixmap : background_pixmap.is_equal (a_pixmap)
	end

feature {G10_GUI_GAME_MAIN,	TEST_TERRAIN_PANEL}

	insert_tile_to_terrain(x, y : INTEGER tile : G10_GUI_TILE) -- routine updates the x,y tile with the current players tile.
	require
		tile_not_void : tile /= void
		legit_coordinates : x > 0 and y > 0
	do
		terrain.put (tile, x, y)
		ensure
			tile_inserted_xy : terrain.item (x , y) = tile
	end

	init_terrain(game : G10_GUI_GAME_MAIN) -- routine initializes the terrain array with the starting tile and it's perimets
	require
		terrain_is_void : terrain = void
	local
		default_tile : G10_GUI_TILE
	do
		create terrain.make_filled (void , max_tiles_per_row, max_tiles_per_column)
		create default_tile.make_starting_tile(starting_tile_row_index, starting_tile_col_index)

		insert_tile_to_terrain(starting_tile_row_index, starting_tile_col_index, default_tile)
		default_tile.draw_tile_to_terrain(Current, starting_tile_row_index, starting_tile_col_index)
		add_empty_tiles_in_perimeter(Current, default_tile)
	ensure
		terrain_not_void : terrain /= void
	end

feature {G10_GUI_TILE}
	add_empty_tiles_in_perimeter(field: G10_GUI_TERRAIN_PANEL a_tile: G10_GUI_TILE) -- routine adds empty tiles in the perimeter of the i ,j tile if possible
	local
		temp_tile , north_tile , east_tile , south_tile , west_tile: G10_GUI_TILE
	do
		temp_tile := terrain.item (a_tile.get_row-1 , a_tile.get_column)
		if(valid_coordinates(a_tile.get_row - 1 , a_tile.get_column) = true and temp_tile = void)
		then
			create north_tile.make_empty_tile(Current, a_tile.get_row - 1 , a_tile.get_column)
			insert_tile_to_terrain(a_tile.get_row - 1 , a_tile.get_column ,north_tile)
			north_tile.draw_tile_to_terrain(Current, a_tile.get_row-1,a_tile.get_column)
		end

		temp_tile := terrain.item (a_tile.get_row , a_tile.get_column + 1)
		if(valid_coordinates(a_tile.get_row , a_tile.get_column + 1) = true and temp_tile = void)
		then
			create east_tile.make_empty_tile(Current, a_tile.get_row , a_tile.get_column + 1)
			insert_tile_to_terrain(a_tile.get_row ,a_tile.get_column + 1 ,east_tile)
			east_tile.draw_tile_to_terrain(Current, a_tile.get_row, a_tile.get_column + 1)
		end

		temp_tile := terrain.item (a_tile.get_row + 1 , a_tile.get_column)
		if(valid_coordinates(a_tile.get_row + 1 , a_tile.get_column) = true and temp_tile = void)
		then
			create south_tile.make_empty_tile(Current, a_tile.get_row + 1 , a_tile.get_column)
			insert_tile_to_terrain(a_tile.get_row + 1 , a_tile.get_column ,south_tile)
			south_tile.draw_tile_to_terrain(Current,a_tile.get_row + 1, a_tile.get_column)
		end

		temp_tile := terrain.item (a_tile.get_row , a_tile.get_column - 1)
		if(valid_coordinates(a_tile.get_row , a_tile.get_column - 1) = true and temp_tile = void)
		then
			create west_tile.make_empty_tile(Current, a_tile.get_row , a_tile.get_column - 1)
			insert_tile_to_terrain(a_tile.get_row , a_tile.get_column - 1 ,west_tile)
			west_tile.draw_tile_to_terrain(Current, a_tile.get_row, a_tile.get_column-1)
		end
	end

-- accesor methods.
feature {G10_GUI_GAME_MAIN,	TEST_TERRAIN_PANEL}
	get_terrain() : ARRAY2[G10_GUI_TILE] -- routine returns the terrain attribute of this object
	require
		terrain_not_null: terrain /= void
	do
		result := terrain
		ensure
			terrain_unmutated : terrain = old terrain
	end

--	get_count_of_tiles : INTEGER
--	require
--		count_non_negative: count_of_tiles > -1
--	do
--		Result := count_of_tiles
--	ensure
--		count_unmutated : count_of_tiles = old count_of_tiles
--	end

--	get_max_horizontal_tiles : INTEGER
--	require
--		count_non_negative:  max_horizontal_tiles_num > -1
--	do
--		Result := max_horizontal_tiles_num
--	ensure
--		count_unmutated : max_horizontal_tiles_num = old max_horizontal_tiles_num
--	end

--	get_max_vertical_tiles : INTEGER
--	require
--		count_non_negative:  max_vertical_tiles_num > -1
--	do
--		Result := max_vertical_tiles_num
--	ensure
--		count_unmutated : max_vertical_tiles_num = old max_vertical_tiles_num
--	end

	valid_coordinates(x : INTEGER y : INTEGER) : BOOLEAN -- routine returns true if coordinates are valid (between the boundries of the 2d array terrain) else false
	do
		result := (x >= 0 and x <= max_tiles_per_row) and (y >= 0 and y <= max_tiles_per_column)
	ensure
		current_object_not_mutated : current = old current
	end

--class invariants
invariant
	terrain_void : terrain /= void
end
