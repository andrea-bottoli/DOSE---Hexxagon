note
	description: "The class that contains path to images and other constants of the main view of the GUI"
	author: "Gabriele Fanchini"
	date: "02.12.2012"
	revision: "1.0"

class
	G5_MAIN_GUI_CONSTANTS
inherit
    KL_SHARED_FILE_SYSTEM
        export {NONE}
            all
        end

feature {NONE} -- Access

	Dose_folder: STRING = "dose_2012"
	Image_folder: STRING = "images"
	Dominion_folder: STRING = "group5"
	Main_view_folder: STRING = "main_view_images"

	img_path: KL_PATHNAME
			-- Path were the images of DOMINION GUI
		do
			create Result.make
			Result.set_relative (True)
			Result.append_name (Dose_folder)
			Result.append_name (Image_folder)
			Result.append_name (Dominion_folder)
		end

-- ### path of players_info
	img_player_info: KL_PATHNAME
			-- Path to main view background image
		do
			Result := img_path
			Result.append_name (Main_view_folder)
			Result.append_name ("background_players_info")
		end

	img_top_discard_info: KL_PATHNAME
			-- Path to top discard pile area image
		do
			Result := img_path
			Result.append_name (Main_view_folder)
			Result.append_name ("top_discard_images")
		end
-- ### path of players info END

-- ### path of main view

	img_background_main_view: KL_PATHNAME
		-- Path to background image of the main view
		do
			Result := img_path
			Result.append_name (Main_view_folder)
			Result.append_name ("main_view_background.png")
		end

	img_quit_main_view: KL_PATHNAME
		-- Path to quit button image
		do
			Result := img_path
			Result.append_name (Main_view_folder)
			Result.append_name ("quit_button.png")
		end

	img_quit_main_view_hover: KL_PATHNAME
		-- Path to quit button
		do
			Result := img_path
			Result.append_name (Main_view_folder)
			Result.append_name ("quit_button_hover.png")
		end

	img_next_phase_main_view: KL_PATHNAME
		-- Path to next_phase button image
		do
			Result := img_path
			Result.append_name (Main_view_folder)
			Result.append_name ("next_phase_button.png")
		end

	img_next_phase_main_view_hover: KL_PATHNAME
		-- Path to next_phase button image
		do
			Result := img_path
			Result.append_name (Main_view_folder)
			Result.append_name ("next_phase_button_hover.png")
		end

-- ### path of main view END

-- ### path of hand box

	img_path_background_hand: KL_PATHNAME
		-- Path to background of the hand box
		do
			Result := img_path
			Result.append_name (Main_view_folder)
			Result.append_name ("background_hand_box.png")
		end

-- ### path of hand box END


-- ### path of board

	img_path_background_board: KL_PATHNAME
		-- Path to background of the hand box
		do
			Result := img_path
			Result.append_name (Main_view_folder)
			Result.append_name ("background_board_box.png")
		end

	img_path_supply_button: KL_PATHNAME
		-- Path to background of the hand box
		do
			Result := img_path
			Result.append_name (Main_view_folder)
			Result.append_name ("supply_button.png")
		end

	img_path_trash_button: KL_PATHNAME
		-- Path to background of the hand box
		do
			Result := img_path
			Result.append_name (Main_view_folder)
			Result.append_name ("trash_button.png")
		end


-- ### path of board END

	Window_title: STRING = "Dominion"
			-- Title of the main window

	Quit_dialog_message: STRING = "Do you really want to close?"
			-- Message for the quit dialog box


end
