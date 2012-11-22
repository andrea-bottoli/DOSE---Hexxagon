note
	description: "Constants for the Graphical User Interface of the Ingenious game."
	author: "Emanuele Rudel, Florian Besser"
	date: ""
	revision: "0.1"

class
	IG_GUI_CONSTANTS

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
	gameboard_height: INTEGER = 500

	tiles_view_width:  INTEGER = 500
	tiles_view_height: INTEGER = 60

	hex_blue_color: STRING = "b"
	hex_green_color: STRING = "g"
	hex_orange_color: STRING = "o"
	hex_purple_color: STRING = "p"
	hex_red_color: STRING = "r"
	hex_yellow_color: STRING = "y"

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

	img_path: KL_PATHNAME
			-- Path were the images of Ingenious are stored
		do
			create Result.make
			Result.set_relative (True)
			Result.append_name (dose_folder)
			Result.append_name (image_folder)
			Result.append_name (ingenious_folder)
		end

	gameboard_background_path: KL_PATHNAME
			-- Path to the game board background image
		do
			Result := img_path
			Result.append_name ("gameboard_view_bg.png")
		end

	tiles_background_path: KL_PATHNAME
		do
			Result := img_path
			Result.append_name ("tiles_background.png")
		end

	empty_hex_path: KL_PATHNAME
			-- Path to empty hex image
		do
			Result := img_path
			Result.append_name ("hex_empty.png")
		end

	hex_blue_path: KL_PATHNAME
			-- Path to blue hex
		do
			Result := img_path
			Result.append_name ("hex_blue.png")
		end

	hex_green_path: KL_PATHNAME
			-- Path to green hex
		do
			Result := img_path
			Result.append_name ("hex_green.png")
		end

	hex_orange_path: KL_PATHNAME
			-- Path to orange hex
		do
			Result := img_path
			Result.append_name ("hex_orange.png")
		end

	hex_purple_path: KL_PATHNAME
			-- Path to purple hex
		do
			Result := img_path
			Result.append_name ("hex_purple.png")
		end

	hex_red_path: KL_PATHNAME
			-- Path to red hex
		do
			Result := img_path
			Result.append_name ("hex_red.png")
		end

	hex_yellow_path: KL_PATHNAME
			-- Path to yellow hex
		do
			Result := img_path
			Result.append_name ("hex_yellow.png")
		end

end -- class IG_GUI_CONSTANTS
