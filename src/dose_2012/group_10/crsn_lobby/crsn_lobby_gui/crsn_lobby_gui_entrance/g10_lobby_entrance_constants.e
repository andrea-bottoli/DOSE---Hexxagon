note
	description: "Containing all constants(sizes and pixmaps) for the entrance screen"
	author: "Angel Kyriako"
	date: "6/12/2012"
	revision: "2.0"

class
	G10_LOBBY_ENTRANCE_CONSTANTS
inherit
	G10_CRSN_CONSTANTS

feature{NONE} --folder path of lobby images
	lobby_folder: STRING = "lobby"
	lobby_entrance_folder: STRING = "entrance"

	lobby_entrance_img_path: KL_PATHNAME
	require
		img_path_not_null: img_path /= void
	do
		Result := img_path
		Result.append_name (lobby_folder)
		Result.append_name (lobby_entrance_folder)
	end

feature{ANY} -- button names

	usr: STRING = "usr"
	single: STRING = " single"
	mult: STRING = " mult"
	lan: STRING = " lan"
	online: STRING = " online"

	pressed_usr: STRING = "pressed_usr"
	pressed_single: STRING = "pressed_single"
	pressed_mult: STRING = "pressed_mult"
	pressed_lan: STRING = "pressed_lan"
	pressed_online: STRING = "pressed_online"

feature{ANY} --component sizes

	--window
	lobby_window_width: INTEGER = 700
	lobby_window_height: INTEGER = 466

	-- username tag
	username_width: INTEGER = 380
	username_height: INTEGER = 78
	username_start_width: INTEGER = 183
	username_start_height: INTEGER = 147

	-- username text bar
	username_bar_width: INTEGER = 200
	username_bar_height: INTEGER = 25
	username_bar_start_width: INTEGER -- bottom right of username button
	do
		Result := username_width - username_bar_width
	end
	username_bar_start_height: INTEGER
	do
		Result := username_height - username_bar_height
	end

	-- single player button
	single_width: INTEGER = 279
	single_height: INTEGER = 52
	single_start_width: INTEGER = 141
	single_start_height: INTEGER = 236

	-- lan game button
	mult_lan_width: INTEGER = 247
	mult_lan_height: INTEGER = 53
	mult_lan_start_width: INTEGER = 249
	mult_lan_start_height: INTEGER = 314

	-- online game button
	online_width: INTEGER = 297
	online_height: INTEGER = 49
	online_start_width: INTEGER = 165
	online_start_height: INTEGER = 385

	-- next button
	next_width: INTEGER = 170
	next_height: INTEGER = 76
	next_start_width: INTEGER
	do
		Result := lobby_window_width - ( next_width + 2*distance_between_components)
	end
	next_start_height: INTEGER
	do
		Result := lobby_window_height - next_height
	end

	-- back button
	back_width: INTEGER = 162
	back_height: INTEGER = 99
	back_start_width: INTEGER
	do
		Result := distance_between_components
	end
	back_start_height: INTEGER
	do
		Result := lobby_window_height - back_height
	end

feature{ANY} --PixMaps

	-- background
	img_lobby_entrance_background: KL_PATHNAME
		do
			Result := lobby_entrance_img_path
			Result.append_name ("lobby_entrance_700_466.png")
		end
	pix_lobby_entrance_background: EV_PIXMAP
		once
			create Result
			Result.set_with_named_file (file_system.pathname_to_string(img_lobby_entrance_background) )
		end

	-- username
	img_username_button: KL_PATHNAME
		do
			Result := lobby_entrance_img_path
			Result.append_name ("username_380_78.png")
		end
	pix_username_button: EV_PIXMAP
		once
			create Result
			Result.set_with_named_file (file_system.pathname_to_string(img_username_button) )
		end

	img_highlighted_username_button: KL_PATHNAME
		do
			Result := lobby_entrance_img_path
			Result.append_name ("highlighted_username_380_78.png")
		end
	pix_highlighted_username_button: EV_PIXMAP
		once
			create Result
			Result.set_with_named_file (file_system.pathname_to_string(img_highlighted_username_button) )
		end

	img_selected_username_button: KL_PATHNAME
		do
			Result := lobby_entrance_img_path
			Result.append_name ("selected_username_380_78.png")
		end
	pix_selected_username_button: EV_PIXMAP
		once
			create Result
			Result.set_with_named_file (file_system.pathname_to_string(img_selected_username_button) )
		end

	-- single player
	img_single_button: KL_PATHNAME
		do
			Result := lobby_entrance_img_path
			Result.append_name ("single_player_279_52.png")
		end
	pix_single_button: EV_PIXMAP
		once
			create Result
			Result.set_with_named_file (file_system.pathname_to_string(img_single_button) )
		end

	img_highlighted_single_button: KL_PATHNAME
		do
			Result := lobby_entrance_img_path
			Result.append_name ("highlighted_single_player_279_52.png")
		end
	pix_highlighted_single_button: EV_PIXMAP
		once
			create Result
			Result.set_with_named_file (file_system.pathname_to_string(img_highlighted_single_button) )
		end

	img_selected_single_button: KL_PATHNAME
		do
			Result := lobby_entrance_img_path
			Result.append_name ("selected_single_player_279_52.png")
		end
	pix_selected_single_button: EV_PIXMAP
		once
			create Result
			Result.set_with_named_file (file_system.pathname_to_string(img_selected_single_button) )
		end

	-- multiplayer
	img_multi_button: KL_PATHNAME
		do
			Result := lobby_entrance_img_path
			Result.append_name ("multiplayer_button_247_53.png")
		end
	pix_multi_button: EV_PIXMAP
		once
			create Result
			Result.set_with_named_file (file_system.pathname_to_string(img_multi_button) )
		end

	img_highlighted_multi_button: KL_PATHNAME
		do
			Result := lobby_entrance_img_path
			Result.append_name ("highlighted_multiplayer_button_247_53.png")
		end
	pix_highlighted_multi_button: EV_PIXMAP
		once
			create Result
			Result.set_with_named_file (file_system.pathname_to_string(img_highlighted_multi_button) )
		end

	-- lan
	img_lan_button: KL_PATHNAME
		do
			Result := lobby_entrance_img_path
			Result.append_name ("lan_game_247_53.png")
		end
	pix_lan_button: EV_PIXMAP
		once
			create Result
			Result.set_with_named_file (file_system.pathname_to_string(img_lan_button) )
		end

	img_highlighted_lan_button: KL_PATHNAME
		do
			Result := lobby_entrance_img_path
			Result.append_name ("highlighted_lan_game_247_53.png")
		end
	pix_highlighted_lan_button: EV_PIXMAP
		once
			create Result
			Result.set_with_named_file (file_system.pathname_to_string(img_highlighted_lan_button) )
		end

	img_selected_lan_button: KL_PATHNAME
		do
			Result := lobby_entrance_img_path
			Result.append_name ("selected_lan_game_247_53.png")
		end
	pix_selected_lan_button: EV_PIXMAP
		once
			create Result
			Result.set_with_named_file (file_system.pathname_to_string(img_selected_lan_button) )
		end

	-- online
	img_online_button: KL_PATHNAME
		do
			Result := lobby_entrance_img_path
			Result.append_name ("online_game_297_49.png")
		end
	pix_online_button: EV_PIXMAP
		once
			create Result
			Result.set_with_named_file (file_system.pathname_to_string(img_online_button) )
		end

	img_highlighted_online_button: KL_PATHNAME
		do
			Result := lobby_entrance_img_path
			Result.append_name ("highlighted_online_game_297_49.png")
		end
	pix_highlighted_online_button: EV_PIXMAP
		once
			create Result
			Result.set_with_named_file (file_system.pathname_to_string(img_highlighted_online_button) )
		end

	img_selected_online_button: KL_PATHNAME
		do
			Result := lobby_entrance_img_path
			Result.append_name ("selected_online_game_297_49.png")
		end
	pix_selected_online_button: EV_PIXMAP
		once
			create Result
			Result.set_with_named_file (file_system.pathname_to_string(img_selected_online_button) )
		end

	-- to lobby
	img_next_button: KL_PATHNAME
		do
			Result := lobby_entrance_img_path
			Result.append_name ("next_170_76.png")
		end
	pix_next_button: EV_PIXMAP
		once
			create Result
			Result.set_with_named_file (file_system.pathname_to_string(img_next_button) )
		end

	img_highlighted_next_button: KL_PATHNAME
		do
			Result := lobby_entrance_img_path
			Result.append_name ("highlighted_next_170_76.png")
		end
	pix_highlighted_next_button: EV_PIXMAP
		once
			create Result
			Result.set_with_named_file (file_system.pathname_to_string(img_highlighted_next_button) )
		end

	-- to main
	img_to_main_button: KL_PATHNAME
		do
			Result := lobby_entrance_img_path
			Result.append_name ("to_main_162_99.png")
		end
	pix_to_main_button: EV_PIXMAP
		once
			create Result
			Result.set_with_named_file (file_system.pathname_to_string(img_to_main_button) )
		end

	img_highlighted_to_main_button: KL_PATHNAME
		do
			Result := lobby_entrance_img_path
			Result.append_name ("highlighted_to_main_162_99.png")
		end
	pix_highlighted_to_main_button: EV_PIXMAP
		once
			create Result
			Result.set_with_named_file (file_system.pathname_to_string(img_highlighted_to_main_button) )
		end
end
