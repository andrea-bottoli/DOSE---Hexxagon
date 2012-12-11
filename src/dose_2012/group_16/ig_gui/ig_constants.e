note
	description: "Constants for the Ingenious game."
	author: "Emanuele Rudel, Florian Besser"
	date: ""
	revision: "0.1"

class
	IG_CONSTANTS

inherit
    KL_SHARED_FILE_SYSTEM
        export {NONE}
            all
        end

feature {NONE} -- Access

	dose_folder: STRING = "dose_2012"
	image_folder: STRING = "images"
	ingenious_folder: STRING = "group16"

	window_title: STRING = "Ingenious"
			-- Title of the main window

	quit_dialog_message: STRING = "Do you really want to quit the game?"
	swap_tiles_dialog_message: STRING = "Do you really want to swap your tiles?"
			-- Message for the quit dialog box

	quit_button_text: STRING = "Quit Game"

	show_help_text: STRING = "Show Help"

	swap_tiles_text: STRING = "Swap%NTiles"
	current_turn_text: STRING = "Turn:"
	next_turn_text: STRING = "Up next:"

	minimum_players_count: INTEGER = 2
	maximum_players_count: INTEGER = 4

	minimum_computers_count: INTEGER = 0
	maximum_computers_count: INTEGER = 3

	gameboard_width:  INTEGER = 500
	gameboard_height: INTEGER = 570

	hex_blue_color: STRING = "b"
	hex_green_color: STRING = "g"
	hex_orange_color: STRING = "o"
	hex_purple_color: STRING = "p"
	hex_red_color: STRING = "r"
	hex_yellow_color: STRING = "y"

	hex_empty: STRING = "empty"

	hex_colors: LINKED_LIST[STRING]
		once
			create Result.make
			Result.compare_objects
			Result.extend (hex_blue_color)
			Result.extend (hex_green_color)
			Result.extend (hex_orange_color)
			Result.extend (hex_purple_color)
			Result.extend (hex_red_color)
			Result.extend (hex_yellow_color)
		end

		-- The direction of the second hex in a tile, with respect to the first hex.
	direction_bottom: INTEGER = 1
	direction_bottom_left: INTEGER = 2
	direction_top_left: INTEGER = 3
	direction_top: INTEGER = 4
	direction_top_right: INTEGER = 5
	direction_bottom_right : INTEGER = 6

feature {NONE} -- Start Dialog

	start_window_title: STRING = "Start a new game"
			-- Title of the starting dialog

	host_game_text: STRING = "Host Game"
	join_game_text: STRING = "Join Game"
	cancel_button_title: STRING = "Cancel"
	invalid_parameters_text: STRING = "Invalid parameters"

	computer_levels: HASH_TABLE[INTEGER, STRING]
		once
			create Result.make (3)
			Result.put (1, "Easy")
			Result.put (2, "Medium")
			Result.put (3, "Hard")
		end

feature {NONE} -- Resources

	shortcuts_text: KL_PATHNAME
		once
			create Result.make
			Result.set_relative (True)
			Result.append_name (dose_folder)
			Result.append_name ("group_16")
			Result.append_name ("resources")
			Result.append_name ("shortcuts.rtf")
		end

	rules_text: KL_PATHNAME
		once
			create Result.make
			Result.set_relative (True)
			Result.append_name (dose_folder)
			Result.append_name ("group_16")
			Result.append_name ("resources")
			Result.append_name ("rules.rtf")
		end

	img_path: KL_PATHNAME
			-- Path were the images of Ingenious are stored
		do
			create Result.make
			Result.set_relative (True)
			Result.append_name (dose_folder)
			Result.append_name (image_folder)
			Result.append_name (ingenious_folder)
		end

	gameview_background_path: KL_PATHNAME
			-- Path to the game board background image
		do
			Result := img_path
			Result.append_name ("gameview_background.png")
		end

	tiles_background: EV_PIXMAP
			-- Pixmap that represents the tiles background
		local
			l_path: KL_PATHNAME
		once
			l_path := img_path
			l_path.append_name ("tiles_background.png")
			create Result
			Result.set_with_named_file (file_system.pathname_to_string (l_path))
		end

	empty_hex: EV_PIXMAP
			-- Pixmap that represents an empty hex
		local
			l_path: KL_PATHNAME
		once
			l_path := img_path
			l_path.append_name ("hex_empty.png")
			create Result
			Result.set_with_named_file (file_system.pathname_to_string (l_path))
		end

	blue_hex: EV_PIXMAP
			-- Pixmap that represents a blue hex
		local
			l_path: KL_PATHNAME
		once
			l_path := img_path
			l_path.append_name ("hex_blue.png")
			create Result
			Result.set_with_named_file (file_system.pathname_to_string (l_path))
		end

	green_hex: EV_PIXMAP
			-- Pixmap that represents a green hex
		local
			l_path: KL_PATHNAME
		once
			l_path := img_path
			l_path.append_name ("hex_green.png")
			create Result
			Result.set_with_named_file (file_system.pathname_to_string (l_path))
		end

	orange_hex: EV_PIXMAP
			-- Pixmap that represents an orange hex
		local
			l_path: KL_PATHNAME
		once
			l_path := img_path
			l_path.append_name ("hex_orange.png")
			create Result
			Result.set_with_named_file (file_system.pathname_to_string (l_path))
		end

	purple_hex: EV_PIXMAP
			-- Pixmap that represents a purple hex
		local
			l_path: KL_PATHNAME
		once
			l_path := img_path
			l_path.append_name ("hex_purple.png")
			create Result
			Result.set_with_named_file (file_system.pathname_to_string (l_path))
		end

	red_hex: EV_PIXMAP
			-- Pixmap that represents a red hex
		local
			l_path: KL_PATHNAME
		once
			l_path := img_path
			l_path.append_name ("hex_red.png")
			create Result
			Result.set_with_named_file (file_system.pathname_to_string (l_path))
		end

	yellow_hex: EV_PIXMAP
			-- Pixmap that represents a yellow hex
		local
			l_path: KL_PATHNAME
		once
			l_path := img_path
			l_path.append_name ("hex_yellow.png")
			create Result
			Result.set_with_named_file (file_system.pathname_to_string (l_path))
		end

	hex_pixmap_with_color (a_color: STRING): EV_PIXMAP
		require
			color_not_void: a_color /= Void
		do
			if hex_blue_color.is_equal (a_color) then
				Result := blue_hex
			elseif hex_green_color.is_equal (a_color) then
				Result := green_hex
			elseif hex_orange_color.is_equal (a_color) then
				Result := orange_hex
			elseif hex_purple_color.is_equal (a_color) then
				Result := purple_hex
			elseif hex_red_color.is_equal (a_color) then
				Result := red_hex
			elseif hex_yellow_color.is_equal (a_color) then
				Result := yellow_hex
			else
				Result := empty_hex
			end
		end

end -- class IG_GUI_CONSTANTS
