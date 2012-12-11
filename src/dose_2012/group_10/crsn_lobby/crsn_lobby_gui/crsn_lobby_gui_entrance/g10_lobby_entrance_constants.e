note
	description: "Containing all constants(sizes and pixmaps) for the entrance screen"
	author: "Angel Kyriako"
	date: "6/12/2012"
	revision: "2.0"

class
	G10_LOBBY_ENTRANCE_CONSTANTS
inherit
	G10_GUI_CONSTANTS

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

feature{ANY} --component sizes

	--window
	lobby_window_width: INTEGER = 700
	lobby_window_height: INTEGER = 466

	--All Buttons
	username_button_width: INTEGER = 380
	username_button_height: INTEGER = 78
	username_start_width: INTEGER = 183
	username_start_height: INTEGER = 147

	ip_button_width: INTEGER = 277
	ip_button_height: INTEGER = 48
	ip_start_width: INTEGER = 138
	ip_start_height: INTEGER = 236

	port_button_width: INTEGER = 304
	port_button_height: INTEGER = 55
	port_start_width: INTEGER = 229
	port_start_height: INTEGER = 310

	to_lobby_button_width: INTEGER = 170
	to_lobby_button_height: INTEGER = 76
	to_lobby_start_width: INTEGER
	do
		Result := lobby_window_width - ( to_lobby_button_width + 2*distance_between_components)
	end
	to_lobby_start_height: INTEGER
	do
		Result := lobby_window_height - to_lobby_button_height
	end

	to_main_button_width: INTEGER = 162
	to_main_button_height: INTEGER = 99
	to_main_start_width: INTEGER
	do
		Result := distance_between_components
	end
	to_main_start_height: INTEGER
	do
		Result := lobby_window_height - to_main_button_height
	end

	-- input bar
	input_bar_width: INTEGER = 200
	input_bar_height: INTEGER = 25
	input_bar_start_width: INTEGER = 250
	input_bar_start_height: INTEGER = 395

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

	-- ip
	img_ip_button: KL_PATHNAME
		do
			Result := lobby_entrance_img_path
			Result.append_name ("ip_277_48.png")
		end
	pix_ip_button: EV_PIXMAP
		once
			create Result
			Result.set_with_named_file (file_system.pathname_to_string(img_ip_button) )
		end

	img_highlighted_ip_button: KL_PATHNAME
		do
			Result := lobby_entrance_img_path
			Result.append_name ("highlighted_ip_277_48.png")
		end
	pix_highlighted_ip_button: EV_PIXMAP
		once
			create Result
			Result.set_with_named_file (file_system.pathname_to_string(img_highlighted_ip_button) )
		end

	img_selected_ip_button: KL_PATHNAME
		do
			Result := lobby_entrance_img_path
			Result.append_name ("selected_ip_277_48.png")
		end
	pix_selected_ip_button: EV_PIXMAP
		once
			create Result
			Result.set_with_named_file (file_system.pathname_to_string(img_selected_ip_button) )
		end

	-- port
	img_port_button: KL_PATHNAME
		do
			Result := lobby_entrance_img_path
			Result.append_name ("port_304_55.png")
		end
	pix_port_button: EV_PIXMAP
		once
			create Result
			Result.set_with_named_file (file_system.pathname_to_string(img_port_button) )
		end

	img_highlighted_port_button: KL_PATHNAME
		do
			Result := lobby_entrance_img_path
			Result.append_name ("highlighted_port_304_55.png")
		end
	pix_highlighted_port_button: EV_PIXMAP
		once
			create Result
			Result.set_with_named_file (file_system.pathname_to_string(img_highlighted_port_button) )
		end

	img_selected_port_button: KL_PATHNAME
		do
			Result := lobby_entrance_img_path
			Result.append_name ("selected_port_304_55.png")
		end
	pix_selected_port_button: EV_PIXMAP
		once
			create Result
			Result.set_with_named_file (file_system.pathname_to_string(img_selected_port_button) )
		end

	-- to lobby
	img_to_lobby_button: KL_PATHNAME
		do
			Result := lobby_entrance_img_path
			Result.append_name ("to_lobby_170_76.png")
		end
	pix_to_lobby_button: EV_PIXMAP
		once
			create Result
			Result.set_with_named_file (file_system.pathname_to_string(img_to_lobby_button) )
		end

	img_highlighted_to_lobby_button: KL_PATHNAME
		do
			Result := lobby_entrance_img_path
			Result.append_name ("highlighted_to_lobby_170_76.png")
		end
	pix_highlighted_to_lobby_button: EV_PIXMAP
		once
			create Result
			Result.set_with_named_file (file_system.pathname_to_string(img_highlighted_to_lobby_button) )
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
