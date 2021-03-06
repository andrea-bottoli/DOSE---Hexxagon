note
	description: "Summary description for {G10_GAME_CONSTANTS}."
	author: "Angel Kyriako"
	date: "$Date$"
	revision: "$Revision$"

class
	G10_GAME_CONSTANTS
inherit
	G10_CRSN_CONSTANTS

feature{NONE} --folders
	game_folder			: STRING = "game"
	tile_folder			: STRING = "tiles"
	followers_folder	: STRING = "followers"
	player_info_folder	: STRING = "player_info"
	drawed_tiles_folder : STRING = "drawed_tiles"
	field_tile_folder 	: STRING = "field_tiles"

	game_img_path: KL_PATHNAME -- routine returns the game directory path : \src\dose_2012\images\carcassonne\game
	require
		img_path_not_null: img_path /= void
	do
		Result := img_path
		Result.append_name (game_folder)
	end

	player_info_img_path: KL_PATHNAME -- routine returns the game directory path : \src\dose_2012\images\carcassonne\game\player_info
	require
		img_path_not_null: img_path /= void
	do
		Result := game_img_path
		Result.append_name (player_info_folder)
	end

	game_tiles_img_path: KL_PATHNAME -- routine returns the tiles directory path : \src\dose_2012\images\carcassonne\game\tiles
	require
		img_path_not_null: img_path /= void
	do
		Result := game_img_path
		Result.append_name (tile_folder)
	end

	game_followers_img_path: KL_PATHNAME -- routine returns the tiles directory path : \src\dose_2012\images\carcassonne\game\followers
	require
		img_path_not_null: img_path /= void
	do
		Result := game_img_path
		Result.append_name (followers_folder)
	end

	game_field_tiles_img_path : KL_PATHNAME -- routine returns the fieled_tiles directory path :  \src\dose_2012\images\carcassonne\game\tiles\field_tiles
	require
		img_path_not_null: img_path /= void
	do
		Result := game_tiles_img_path
		Result.append_name (field_tile_folder)
	end

	game_drawed_tiles_img_path : KL_PATHNAME -- routine returns the drawed_tiles directory path : \src\dose_2012\images\carcassonne\game\tiles\drawed_tiles
	require
		img_path_not_null: img_path /= void
	do
		Result := game_tiles_img_path
		Result.append_name (drawed_tiles_folder)
	end
feature {ANY} -- event constants.
	rotate_event : STRING
	once
		result := "rotate"
	end

	put_tile_to_terrain_event : STRING
	once
		result := "put_tile_to_terrain"
	end

feature{ANY} --component sizes
	--window
	game_window_width : INTEGER = 1024
	game_window_height : INTEGER = 768

	--terrain
	scrolled_terrain_width: INTEGER
	do
		Result := game_window_width - (action_panel_width)
	end
	scrolled_terrain_height: INTEGER
	do
		Result := game_window_height - (player_info_height + 10*distance_between_components)
	end
	starting_offset_x: INTEGER = 550
	starting_offset_y: INTEGER = 610
	starting_position_x: INTEGER = 350
	starting_position_y: INTEGER = 250

	terrain_width : INTEGER
	do
		Result :=(tile_width+distance_between_tiles) * max_tiles_per_row -- 2000
	end
	terrain_height : INTEGER
	do
		Result := (tile_height+distance_between_tiles) * max_tiles_per_row -- 2000
	end
	max_tiles_per_row : INTEGER = 40
	max_tiles_per_column : INTEGER = 40
	distance_between_tiles : INTEGER = 3

		--field tile
		tile_width : INTEGER = 47
		tile_height	: INTEGER = 47
		starting_tile_row_index: INTEGER
		do
			Result := max_tiles_per_row//2
		end
		starting_tile_col_index: INTEGER
		do
			Result := max_tiles_per_column//2
		end

				--followers
			distance_between_followers : INTEGER
			once
				Result := tile_width//4
			end

	--score board
	scoreboard_start_width : INTEGER
	once
		Result := distance_between_components
	end
	scoreboard_start_height : INTEGER
	once
		Result := game_window_height - player_info_height - distance_between_components
	end

		--player info
		player_info_width : INTEGER = 167
		player_info_height : INTEGER = 112
		distance_between_info : INTEGER = 5


	--player action area
	action_panel_width : INTEGER = 220
	action_panel_height : INTEGER = 425

	action_area_start_width : INTEGER
	once
		Result := game_window_width - action_panel_width
	end
	action_area_start_height : INTEGER = 0

		--drawed tile
		drawed_tile_width : INTEGER = 156
		drawed_tile_height : INTEGER = 156
		drawed_tile_start_width : INTEGER
		once
			Result := 42
		end
		drawed_tile_start_height : INTEGER
		once
			Result := 58
		end

			--followers
			distance_between_draw_followers : INTEGER
			once
				Result := drawed_tile_width//4
			end

		--rotate button
		rotate_button_width : INTEGER = 35
		rotate_button_height : INTEGER = 35
		rotate_button_start_width : INTEGER
		once
			Result := action_panel_width//2 - 5
		end
		rotate_button_start_height : INTEGER
		once
			Result := action_panel_height - 150
		end


--PixMaps

	-- background
	img_game_background: KL_PATHNAME
		do
			Result := game_img_path
			Result.append_name ("game_background_1094_802.png")
		end
	pix_game_background: EV_PIXMAP
		once
			create Result
			Result.set_with_named_file (file_system.pathname_to_string(img_game_background) )
		end

	img_terrain_panel: KL_PATHNAME
		do
			Result := game_img_path
			Result.append_name ("terrain_background_2024_2024.png")
		end
	pix_terrain_panel: EV_PIXMAP
		once
			create Result
			Result.set_with_named_file (file_system.pathname_to_string(img_terrain_panel) )
		end

	-- rotate button
	img_rotate_button: KL_PATHNAME
		do
			Result := game_img_path
			Result.append_name ("rotate_button_35_35.png")
		end
	pix_rotate_button: EV_PIXMAP
		once
			create Result
			Result.set_with_named_file (file_system.pathname_to_string(img_rotate_button) )
		end

	-- player
		-- red
			-- red action panel
	img_game_player_action_panel: KL_PATHNAME
		do
			Result := game_img_path
			Result.append_name ("red_action_flag_220_425.png")
		end
	pix_game_player_action_panel: EV_PIXMAP
		once
			create Result
			Result.set_with_named_file (file_system.pathname_to_string(img_game_player_action_panel) )
		end

		-- red info
	img_game_red_info: KL_PATHNAME
	do
		Result := player_info_img_path
		Result.append_name ("red_info_167_112.png")
	end

	img_game_red_name: KL_PATHNAME
	do
		Result := player_info_img_path
		Result.append_name ("red_name.png")
	end

	img_game_red_numbers: KL_PATHNAME
	do
		Result := player_info_img_path
		Result.append_name ("red_numbers.png")
	end

	pix_game_red_info_panel: EV_PIXMAP
	once
		create Result
		Result.set_with_named_file (file_system.pathname_to_string(img_game_red_info) )
	end

	pix_game_red_name: EV_PIXMAP
	once
		create Result
		Result.set_with_named_file (file_system.pathname_to_string(img_game_red_name) )
	end

	pix_game_red_numbers: EV_PIXMAP
	once
		create Result
		Result.set_with_named_file (file_system.pathname_to_string(img_game_red_numbers) )
	end
	-- blue
	img_game_blue_info: KL_PATHNAME
	do
		Result := player_info_img_path
		Result.append_name ("blue_info_167_112.png")
	end

	img_game_blue_name: KL_PATHNAME
	do
		Result := player_info_img_path
		Result.append_name ("blue_name.png")
	end

	img_game_blue_numbers: KL_PATHNAME
	do
		Result := player_info_img_path
		Result.append_name ("blue_numbers.png")
	end

	pix_game_blue_info_panel: EV_PIXMAP
	once
		create Result
		Result.set_with_named_file (file_system.pathname_to_string(img_game_blue_info) )
	end

	pix_game_blue_name: EV_PIXMAP
	once
		create Result
		Result.set_with_named_file (file_system.pathname_to_string(img_game_blue_name) )
	end

	pix_game_blue_numbers: EV_PIXMAP
	once
		create Result
		Result.set_with_named_file (file_system.pathname_to_string(img_game_blue_numbers) )
	end
	-- yellow
	img_game_yellow_info: KL_PATHNAME
	do
		Result := player_info_img_path
		Result.append_name ("yellow_info_167_112.png")
	end

	img_game_yellow_name: KL_PATHNAME
	do
		Result := player_info_img_path
		Result.append_name ("yellow_name.png")
	end

	img_game_yellow_numbers: KL_PATHNAME
	do
		Result := player_info_img_path
		Result.append_name ("yellow_numbers.png")
	end

	pix_game_yellow_info_panel: EV_PIXMAP
	once
		create Result
		Result.set_with_named_file (file_system.pathname_to_string(img_game_yellow_info) )
	end

	pix_game_yellow_name: EV_PIXMAP
	once
		create Result
		Result.set_with_named_file (file_system.pathname_to_string(img_game_yellow_name) )
	end

	pix_game_yellow_numbers: EV_PIXMAP
	once
		create Result
		Result.set_with_named_file (file_system.pathname_to_string(img_game_yellow_numbers) )
	end

	-- green
	img_game_green_info: KL_PATHNAME
	do
		Result := player_info_img_path
		Result.append_name ("green_info_167_112.png")
	end

	img_game_green_name: KL_PATHNAME
	do
		Result := player_info_img_path
		Result.append_name ("green_name.png")
	end

	img_game_green_numbers: KL_PATHNAME
	do
		Result := player_info_img_path
		Result.append_name ("green_numbers.png")
	end

	pix_game_green_info_panel: EV_PIXMAP
	once
		create Result
		Result.set_with_named_file (file_system.pathname_to_string(img_game_green_info) )
	end

	pix_game_green_name: EV_PIXMAP
	once
		create Result
		Result.set_with_named_file (file_system.pathname_to_string(img_game_green_name) )
	end

	pix_game_green_info_numbers: EV_PIXMAP
	once
		create Result
		Result.set_with_named_file (file_system.pathname_to_string(img_game_green_numbers) )
	end

	-- gray
	img_game_gray_info: KL_PATHNAME
	do
		Result := player_info_img_path
		Result.append_name ("gray_info_167_112.png")
	end

	img_game_gray_name: KL_PATHNAME
	do
		Result := player_info_img_path
		Result.append_name ("gray_name.png")
	end

	img_game_gray_numbers: KL_PATHNAME
	do
		Result := player_info_img_path
		Result.append_name ("gray_numbers.png")
	end

	pix_game_gray_info_panel: EV_PIXMAP
	once
		create Result
		Result.set_with_named_file (file_system.pathname_to_string(img_game_gray_info) )
	end

	pix_game_gray_name: EV_PIXMAP
	once
		create Result
		Result.set_with_named_file (file_system.pathname_to_string(img_game_gray_name) )
	end

	pix_game_gray_numbers: EV_PIXMAP
	once
		create Result
		Result.set_with_named_file (file_system.pathname_to_string(img_game_gray_numbers) )
	end

	-- purple
	img_game_purple_info: KL_PATHNAME
	do
		Result := player_info_img_path
		Result.append_name ("purple_info_167_112.png")
	end

	img_game_purple_name: KL_PATHNAME
	do
		Result := player_info_img_path
		Result.append_name ("purple_name.png")
	end

	img_game_purple_numbers: KL_PATHNAME
	do
		Result := player_info_img_path
		Result.append_name ("purple_numbers.png")
	end

	pix_game_purple_info_panel: EV_PIXMAP
	once
		create Result
		Result.set_with_named_file (file_system.pathname_to_string(img_game_purple_info) )
	end

	pix_game_purple_name: EV_PIXMAP
	once
		create Result
		Result.set_with_named_file (file_system.pathname_to_string(img_game_purple_name) )
	end

	pix_game_purple_numbers: EV_PIXMAP
	once
		create Result
		Result.set_with_named_file (file_system.pathname_to_string(img_game_purple_numbers) )
	end

-- followers - constants
	-- clicable point width.
	clickable_point_width : INTEGER
	once
		result := 10
	end

	-- clicable point height
	clickable_point_height : INTEGER
	once
		result := 10
	end

	-- follower height
	follower_height : INTEGER
	once
		result := 60
	end

	-- follower width
	follower_width : INTEGER
	once
		result := 60
	end

-- followers - pixmap/paths
	-- clickable point.
	small_follower_width : INTEGER = 22
	small_folower_height : INTEGER = 22

	img_clickable_point: KL_PATHNAME
	do
		Result := game_img_path
		Result.append_name ("clickable_point.png")
	end

	pix_clickable_point: EV_PIXMAP
	do
		create Result
		Result.set_with_named_file (file_system.pathname_to_string(img_clickable_point) )
	end

	-- red follower
	img_red_follower: KL_PATHNAME
	do
		Result := game_followers_img_path
		Result.append_name ("red_drawed_follower.png")
	end

	pix_red_follower: EV_PIXMAP
	do
		create Result
		Result.set_with_named_file (file_system.pathname_to_string(img_red_follower) )
	end

	img_small_red_follower: KL_PATHNAME
	do
		Result := game_followers_img_path
		Result.append_name ("red_small_follower.png")
	end

	pix_small_red_follower : EV_PIXMAP
	do
		create Result
		Result.set_with_named_file (file_system.pathname_to_string(img_small_red_follower) )
	end

	img_small_blue_follower: KL_PATHNAME
	do
		Result := game_followers_img_path
		Result.append_name ("blue_small_follower.png")
	end

	pix_small_blue_follower : EV_PIXMAP
	do
		create Result
		Result.set_with_named_file (file_system.pathname_to_string(img_small_blue_follower) )
	end

	img_small_green_follower: KL_PATHNAME
	do
		Result := game_followers_img_path
		Result.append_name ("green_small_follower.png")
	end

	pix_small_green_follower : EV_PIXMAP
	do
		create Result
		Result.set_with_named_file (file_system.pathname_to_string(img_small_green_follower) )
	end

	img_small_yellow_follower: KL_PATHNAME
	do
		Result := game_followers_img_path
		Result.append_name ("yellow_small_follower.png")
	end

	pix_small_yellow_follower : EV_PIXMAP
	do
		create Result
		Result.set_with_named_file (file_system.pathname_to_string(img_small_yellow_follower) )
	end

	img_small_grey_follower: KL_PATHNAME
	do
		Result := game_followers_img_path
		Result.append_name ("grey_small_follower.png")
	end

	pix_small_grey_follower : EV_PIXMAP
	do
		create Result
		Result.set_with_named_file (file_system.pathname_to_string(img_small_grey_follower) )
	end

	img_small_purple_follower: KL_PATHNAME
	do
		Result := game_followers_img_path
		Result.append_name ("purple_small_follower.png")
	end

	pix_small_purple_follower : EV_PIXMAP
	do
		create Result
		Result.set_with_named_file (file_system.pathname_to_string(img_small_purple_follower) )
	end


-- tiles

	-- empty tile
	img_empty_tile: KL_PATHNAME
		do
			Result := game_tiles_img_path
			Result.append_name ("empty_tile_47_47.png")
		end
	pix_empty_tile: EV_PIXMAP
		once
			create Result
			Result.set_with_named_file (file_system.pathname_to_string(img_empty_tile) )
		end

	-- available tile
	img_available_tile: KL_PATHNAME
		do
			Result := game_tiles_img_path
			Result.append_name ("available_tile_47_47.png")
		end
	pix_available_tile: EV_PIXMAP
		once
			create Result
			Result.set_with_named_file (file_system.pathname_to_string(img_available_tile) )
		end

	-- not available tile
	img_not_available_tile: KL_PATHNAME
	do
		Result := game_tiles_img_path
		Result.append_name ("not_available_tile_47_47.png")
	end
	
	pix_not_available_tile: EV_PIXMAP
	once
		create Result
		Result.set_with_named_file (file_system.pathname_to_string(img_not_available_tile) )
	end

	-- drawed tile
	img_drawed_tile: KL_PATHNAME
		do
			Result := game_tiles_img_path
			Result.append_name ("drawed_tile_156_156_0.png")
		end
	pix_drawed_tile: EV_PIXMAP
	once
		create Result
		Result.set_with_named_file (file_system.pathname_to_string(img_drawed_tile) )
	end

	-- default tile
	img_game_tile: KL_PATHNAME
		do
			Result := game_tiles_img_path
			Result.append_name ("a_tile_47_47.png")
		end
	pix_game_tile: EV_PIXMAP
		once
			create Result
			Result.set_with_named_file (file_system.pathname_to_string(img_game_tile) )
		end


end
