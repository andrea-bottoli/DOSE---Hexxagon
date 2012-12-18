note
	description: "Summary description for {G10_GUI_TERRAIN_PANEL}."
	author: "Eleytherios S. Benisis"
	date: "$Date 9/12"
	revision: "$terrain panel is a group class containing the 72x72 terrain of tile of the game.$"

class
	G10_GUI_TERRAIN_PANEL
inherit
	EV_VIEWPORT
	G10_GAME_CONSTANTS
	undefine
		copy , is_equal, default_create
	end

create
	make

-- attributes
feature {NONE}
	terrain: ARRAY2[G10_GUI_TILE]
	background: EV_FIXED
	initialized : BOOLEAN

-- constructors.
feature {ANY}
	make(game : G10_GUI_GAME_MAIN)
	require
		game_not_null : game /= void
	do
		--create the scollable area
		default_create
		set_minimum_size (scrolled_terrain_width, scrolled_terrain_height)

		--create the panel of the terrain
		create background
		update_background(pix_terrain_panel)
		background.set_minimum_size(terrain_width, terrain_height)

		-- init variable regarding terrain view
		initialized := false

		--add the panel into the scrollable area
		extend (background)

		--initialize the terrain with the starting tile and perimeter
		init_terrain(game)

	end


-- mutator methods.
feature {NONE}
	update_background(a_pixmap : EV_PIXMAP) -- routine sets the background pixmap of this object to arg pixmap
	require
		arg_pixmap_not_void : a_pixmap /= void
	do
		background.set_background_pixmap (a_pixmap)
		background.pointer_button_press_actions.extend (agent move_terrain_by_clicking(?,?,?,?,?,?,?,?))
		background.pointer_enter_actions.extend (agent set_default_terrain_offset)
	ensure
		background_changed_to_arg_pixmap : background.background_pixmap.is_equal (a_pixmap)
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

	init_terrain(game : G10_GUI_GAME_MAIN) -- routine initializes the terrain array with the starting tile and it's perimeter
--	require
--		terrain_is_void : terrain = void
	local
		default_tile : G10_GUI_TILE
	do
		create terrain.make_filled (void , max_tiles_per_row, max_tiles_per_column)
		create default_tile.make_certain_tile(starting_tile_row_index, starting_tile_col_index, "1", "0" ,-1 ,-1) -- auta apo to logic (id, rotation)

		insert_tile_to_terrain(starting_tile_row_index, starting_tile_col_index, default_tile)
		default_tile.draw_tile_to_terrain(game , Current, starting_tile_row_index, starting_tile_col_index, -1,-1)
		add_empty_tiles_in_perimeter(game , Current, default_tile)
	ensure
		terrain_not_void : terrain /= void
	end

feature {G10_GUI_TILE , G10_GUI_GAME_MAIN}

	add_empty_tiles_in_perimeter(game : G10_GUI_GAME_MAIN field: G10_GUI_TERRAIN_PANEL a_tile: G10_GUI_TILE) -- routine adds empty tiles in the perimeter of the i ,j tile if possible
	local
		temp_tile , north_tile , east_tile , south_tile , west_tile: G10_GUI_TILE
	do
		temp_tile := terrain.item (a_tile.get_row-1 , a_tile.get_column)
		if(valid_coordinates(a_tile.get_row - 1 , a_tile.get_column) = true and temp_tile = void)
		then
			create north_tile.make_empty_tile(game , Current, a_tile.get_row - 1 , a_tile.get_column)
			insert_tile_to_terrain(a_tile.get_row - 1 , a_tile.get_column ,north_tile)
			north_tile.draw_tile_to_terrain(game , Current, a_tile.get_row-1,a_tile.get_column , -1,-1)
		end

		temp_tile := terrain.item (a_tile.get_row , a_tile.get_column + 1)
		if(valid_coordinates(a_tile.get_row , a_tile.get_column + 1) = true and temp_tile = void)
		then
			create east_tile.make_empty_tile(game , Current, a_tile.get_row , a_tile.get_column + 1)
			insert_tile_to_terrain(a_tile.get_row ,a_tile.get_column + 1 ,east_tile)
			east_tile.draw_tile_to_terrain(game , Current, a_tile.get_row, a_tile.get_column + 1 , -1,-1)
		end

		temp_tile := terrain.item (a_tile.get_row + 1 , a_tile.get_column)
		if(valid_coordinates(a_tile.get_row + 1 , a_tile.get_column) = true and temp_tile = void)
		then
			create south_tile.make_empty_tile(game , Current, a_tile.get_row + 1 , a_tile.get_column)
			insert_tile_to_terrain(a_tile.get_row + 1 , a_tile.get_column ,south_tile)
			south_tile.draw_tile_to_terrain(game , Current,a_tile.get_row + 1, a_tile.get_column, -1,-1)
		end

		temp_tile := terrain.item (a_tile.get_row , a_tile.get_column - 1)
		if(valid_coordinates(a_tile.get_row , a_tile.get_column - 1) = true and temp_tile = void)
		then
			create west_tile.make_empty_tile(game , Current, a_tile.get_row , a_tile.get_column - 1)
			insert_tile_to_terrain(a_tile.get_row , a_tile.get_column - 1 ,west_tile)
			west_tile.draw_tile_to_terrain(game , Current, a_tile.get_row, a_tile.get_column-1, -1,-1)
		end
--		wipe_out
--		extend (background)
	end

-- accesor methods.
feature {G10_GUI_GAME_MAIN,	TEST_TERRAIN_PANEL, G10_GUI_TILE}
	get_terrain() : ARRAY2[G10_GUI_TILE] -- routine returns the terrain attribute of this object
	require
		terrain_not_null: terrain /= void
	do
		result := terrain
		ensure
			terrain_unmutated : terrain = old terrain
	end

	get_background: EV_FIXED
	do
		Result := background
	end

	valid_coordinates(x : INTEGER y : INTEGER) : BOOLEAN -- routine returns true if coordinates are valid (between the boundries of the 2d array terrain) else false
	do
		result := (x > 1 and x < max_tiles_per_row) and (y > 1 and y < max_tiles_per_column)
	ensure
		current_object_not_mutated : current = old current
	end


	move_terrain_by_clicking(a_a, a_b, a_c: INTEGER_32; a_d, a_e, a_f: REAL_64; a_g, a_h: INTEGER_32)-- terrain listener that lets the user to navigate through the terrain
	do
		-- the -80 and +450 constants are used because the scrollable area is not a square in shape when the background is !!!!

		if pointer_position.x-80 > starting_position_x then
			set_x_offset (pointer_position.x+(pointer_position.x - starting_position_x -80))
		else
			set_x_offset (pointer_position.x)
		end

		if pointer_position.y+430 > starting_position_y then
			set_y_offset (pointer_position.y+(pointer_position.y - starting_position_y+430))
		else
			set_y_offset (pointer_position.y)
		end

	end

	set_default_terrain_offset -- sets the offset of the terrain to default (middle of the terrain)
	do
		if (not initialized) then
			set_x_offset (starting_offset_x)
			set_y_offset (starting_offset_y)
			initialized := true
		end
	end

--class invariants
invariant
	terrain_void : terrain /= void
end
