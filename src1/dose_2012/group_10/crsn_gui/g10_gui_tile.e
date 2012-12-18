note
	description: "Summary description for {G10_GUI_TILE}."
	author: "Eleytherios S. Benisis"
	date: "$Date 9/12"
	revision: "$tile represents the gui represantation of a carcassone gui tile.$"

class
	G10_GUI_TILE
inherit
	EV_FIXED
	rename
		default_create as make_ev_fixed
	select
		make_ev_fixed
	end
	G10_GAME_CONSTANTS
	undefine
		copy , is_equal
	end

create
	make_starting_tile , make_empty_tile --, make_drawed_tile

-- attributes
feature {NONE}
	img_src: KL_PATHNAME
	row_index: INTEGER
	column_index: INTEGER

-- constructor
feature {ANY} -- creates a new reference to of tile class
	make_starting_tile(row, col:INTEGER)
	do
		make_ev_fixed
		set_img_src(img_game_tile)-- edw 8a vazoume to source to game.get_logic.getstartingtile h' kati tetoio
		set_row_index(row)
		set_col_index(col)
		set_minimum_width (tile_width)
		set_minimum_height (tile_height)
		set_background_pixmap (pix_game_tile)
	end

	make_empty_tile(terrain: G10_GUI_TERRAIN_PANEL row, col:INTEGER) -- creates a new refenrence to an empty tile
	do
		make_ev_fixed
		set_img_src(img_empty_tile)
		set_row_index(row)
		set_col_index(col)
		set_minimum_width (tile_width)
		set_minimum_height (tile_height)
		set_background_pixmap (pix_empty_tile)

		pointer_button_release_actions.extend (agent action_performed_tile(terrain, ?, ?, ?, ?, ?, ?, ?, ?))
		pointer_enter_actions.extend (agent enter_empty_tile)
		pointer_leave_actions.extend (agent leave_empty_tile)
	end

-- mutator methods.
feature {G10_GUI_TERRAIN_PANEL, G10_GUI_PLAYER_ACTION_PANEL}
	set_img_src_id(id : STRING) -- routine appends the image source of this tile with id.
	require
		id_not_void : id /= void
	do
		img_src.append_name (id + "_")
	ensure
		img_src_nor_void : get_img_src /= void
		img_src_mutated : get_img_src /= old get_img_src
	end

	set_img_src_id_and_degrees(id : STRING degrees : STRING) -- routine appends the image source of this tile with id and degrees.
	require
		id_not_void : id /= void
	local
		post_fix : STRING
	do
		post_fix := id
		post_fix.append ("_")
		post_fix.append (degrees)
		post_fix.append (".png")

		img_src.append_name (post_fix)
	ensure
		img_src_nor_void : get_img_src /= void
	end

	draw_background_pixmap -- routine draws background pixmap based to the source of the image the tile has.
	require
		image_source_not_void : current.get_img_src /= void
	local
		new_pixmap : EV_PIXMAP
	do
		create new_pixmap
		new_pixmap.set_with_named_file (file_system.pathname_to_string(get_img_src))
		set_background_pixmap(new_pixmap)
	ensure
		image_source_not_mutated : current.get_img_src = old current.get_img_src
	end

	draw_tile_to_terrain(terrain : G10_GUI_TERRAIN_PANEL row, col: INTEGER) -- routine draws the [row.col] item if it is a default item of the terrain to the background
	require
		row_is_valid: row >= 0
		col_is_valid: col >= 0
		terrain_not_null: terrain /= void
	do
		if( terrain.valid_coordinates (row, col)and not terrain.get_background.has(current) )
		then
		 	terrain.get_background.extend_with_position_and_size (  Current,
																	(col - 1) * (tile_width + distance_between_tiles)+ distance_between_tiles ,
																	(row - 1) * (tile_height + distance_between_tiles)+ distance_between_tiles,
																	tile_width,
																	tile_height)
		end
	ensure
		tile_was_added_into_terrain_successfully:-- terrain.get_background.has (Current)
	end

	set_img_src(image_source : KL_PATHNAME)-- routine changes the image of the tile.
	require
		void_parameter : image_source /= void
	do
		img_src := image_source
	ensure
		void_result : img_src /= void
	end

	set_row_index(row : INTEGER) -- routine sets tiles row index to row
	require
		valid_row : row > 0 and row <= 72
	do
		row_index := row
	ensure
		valid_mutation : current.get_row() = row
	end

	set_col_index(col : INTEGER) -- routine sets tiles col index to row
	require
		valid_row : col > 0 and col <= 72
	do
		column_index := col
	ensure
		valid_mutation : current.get_column() = col
	end

-- accesor methods.
feature {G10_GUI_TERRAIN_PANEL,G10_GUI_PLAYER_ACTION_PANEL, G10_GUI_TILE} -- routine returns the img_src attribute of tile class

	get_img_src() : KL_PATHNAME
	do
		result := img_src
	ensure
		is_not_image_source_mutated : img_src = old img_src
	end

	get_row: INTEGER
	do
		Result := row_index
	end

	get_column: INTEGER
	do
		Result := column_index
	end

	is_default_tile : BOOLEAN -- routine returns true if tile is a default_tile else false
	require
		tile_not_void : current /= void
	do
		result := get_img_src.is_equal (img_game_tile)
	ensure
		tile_not_mutated : current = old current
	end

	is_empty_tile : BOOLEAN -- routine returns true if tile is an empty tile else false
	require
		tile_not_void : current /= void
	do
		result := get_img_src.is_equal (img_empty_tile)
	ensure
		tile_not_mutated : current = old current
	end

	is_available_tile : BOOLEAN -- routine returns true if tile is an available tile else false
	require
		tile_not_void : current /= void
	do
		result := get_img_src.is_equal (img_available_tile)
	ensure
		tile_not_mutated : current = old current
	end

feature{NONE} -- available tile listeners

	action_performed_tile(terrain: G10_GUI_TERRAIN_PANEL a_a, a_b, a_c: INTEGER_32; a_d, a_e, a_f: REAL_64; a_g, a_h: INTEGER_32) -- routine draws a default tile to the empty tile
	do																													   -- and draws new empty tiles to it's perimeter
		if(is_available_tile)
		then
			-- Edw 8a kanoume game.getlogic.getterrain.gettile(i,j).isvalid h; kati tetoio kai 8a elegxoume ama einai cool na to xwsoume
			set_img_src(img_game_tile)
			set_background_pixmap (pix_game_tile)
			draw_tile_to_terrain(terrain, row_index, column_index)
			terrain.add_empty_tiles_in_perimeter(terrain, Current)
		end
	end

	enter_empty_tile -- draws a highlighted empty tile if the player's drawed tile matches with the empty tile's perimeter
	do-- an ftiaksoume auth th sun8hkh eimaste me ok me to pou 8a afhnoume ton xrhsth na vazei tile. giati elegxoume sto sthn apo panw (action performed)
		if img_src.is_equal(img_empty_tile) then -- and match tou logic                                      -- na kanei to action mono an is_available_tile
			set_img_src(img_available_tile)                                                                  -- opote an den ginei pote available den 8a kanei to action !!!
			set_background_pixmap (pix_available_tile)
		end

	end

	leave_empty_tile -- draws a normal empty tile
	do
		if img_src.is_equal(img_available_tile) then
			set_img_src(img_empty_tile)
			set_background_pixmap (pix_empty_tile)
		end
	end

-- class invariant
invariant
	consistent_image_source : img_src /= void

end
