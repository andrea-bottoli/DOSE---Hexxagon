note
	description: "The class that contains path to images and other constants of the menu of the GUI"
	author: "Gabriele Fanchini"
	date: "27.11.2012"
	revision: "1.0"

class
	G5_GUI_CONSTANTS

inherit
    KL_SHARED_FILE_SYSTEM
        export {NONE}
            all
        end

feature {NONE} -- Access

	Dose_folder: STRING = "dose_2012"
	Image_folder: STRING = "images"
	Dominion_folder: STRING = "group5"
	Menu_folder: STRING = "menu_images"

	img_path: KL_PATHNAME
			-- Path were the images of TTT are stored
		do
			create Result.make
			Result.set_relative (True)
			Result.append_name (Dose_folder)
			Result.append_name (Image_folder)
			Result.append_name (Dominion_folder)
		end

-- ### path of main menu
	img_background_menu: KL_PATHNAME
			-- Path to main menu background image
		do
			Result := img_path
			Result.append_name (Menu_folder)
			Result.append_name ("background_menu.png")
		end

	img_create: KL_PATHNAME
			-- Path to create button image
		do
			Result := img_path
			Result.append_name (Menu_folder)
			Result.append_name ("create_game_button.png")
		end

	img_create_hover: KL_PATHNAME
			-- Path to create button image (hover)
		do
			Result := img_path
			Result.append_name (Menu_folder)
			Result.append_name ("create_game_button_hover.png")
		end

	img_join: KL_PATHNAME
			-- Path to join button image
		do
			Result := img_path
			Result.append_name (Menu_folder)
			Result.append_name ("join_game_button.png")
		end

	img_join_hover: KL_PATHNAME
			-- Path to join button image (hover)
		do
			Result := img_path
			Result.append_name (Menu_folder)
			Result.append_name ("join_game_button_hover.png")
		end

	img_quit: KL_PATHNAME
			-- Path to quit button image
		do
			Result := img_path
			Result.append_name (Menu_folder)
			Result.append_name ("quit_button.png")
		end

	img_quit_hover: KL_PATHNAME
			-- Path to quit button image (hover)
		do
			Result := img_path
			Result.append_name (Menu_folder)
			Result.append_name ("quit_button_hover.png")
		end
-- ### path of main menu END

-- ### path of create menu

	img_create_menu_background: KL_PATHNAME
			-- Path to "create_menu_background" image
		do
			Result := img_path
			Result.append_name (Menu_folder)
			Result.append_name ("create_menu_background.png")
		end

	img_ok_button: KL_PATHNAME
			-- Path to ok button image
		do
			Result := img_path
			Result.append_name (Menu_folder)
			Result.append_name ("ok_button.png")
		end

	img_ok_button_hover: KL_PATHNAME
			-- Path to ok button image (hover)
		do
			Result := img_path
			Result.append_name (Menu_folder)
			Result.append_name ("ok_button_hover.png")
		end

	img_cancel_button: KL_PATHNAME
			-- Path to ok button image
		do
			Result := img_path
			Result.append_name (Menu_folder)
			Result.append_name ("cancel_button.png")
		end

	img_cancel_button_hover: KL_PATHNAME
			-- Path to ok button image (hover)
		do
			Result := img_path
			Result.append_name (Menu_folder)
			Result.append_name ("cancel_button_hover.png")
		end

	img_default_button: KL_PATHNAME
			-- Path to ok button image
		do
			Result := img_path
			Result.append_name (Menu_folder)
			Result.append_name ("default_button.png")
		end

	img_default_button_hover: KL_PATHNAME
			-- Path to ok button image (hover)
		do
			Result := img_path
			Result.append_name (Menu_folder)
			Result.append_name ("default_button_hover.png")
		end

	img_random_button: KL_PATHNAME
			-- Path to ok button image
		do
			Result := img_path
			Result.append_name (Menu_folder)
			Result.append_name ("random_button.png")
		end

	img_random_button_hover: KL_PATHNAME
			-- Path to ok button image (hover)
		do
			Result := img_path
			Result.append_name (Menu_folder)
			Result.append_name ("random_button_hover.png")
		end

	img_custom_button: KL_PATHNAME
			-- Path to ok button image
		do
			Result := img_path
			Result.append_name (Menu_folder)
			Result.append_name ("custom_button.png")
		end

	img_custom_button_hover: KL_PATHNAME
			-- Path to ok button image (hover)
		do
			Result := img_path
			Result.append_name (Menu_folder)
			Result.append_name ("custom_button_hover.png")
		end

-- ### path of create menu END

-- ### path of join menu

	img_join_menu_background: KL_PATHNAME
			-- Path to "create_menu_background" image
		do
			Result := img_path
			Result.append_name (Menu_folder)
			Result.append_name ("join_menu_background.png")
		end

-- ### path of create menu END

-- ### path of waiting rooms

	img_background_host_w_room: KL_PATHNAME
		-- Path to host waiting room background image
		do
			Result := img_path
			Result.append_name (Menu_folder)
			Result.append_name ("background_host_waiting_room.png")
		end

	img_background_player_w_room: KL_PATHNAME
		-- Path to joined player waiting room background image
		do
			Result := img_path
			Result.append_name (Menu_folder)
			Result.append_name ("background_player_waiting_room.png")
		end

-- ### path of waiting rooms END

-- DA CAMBIARE	
	img_wait: KL_PATHNAME
			-- Path to "wait" image
		do
			Result := img_path
			Result.append_name ("text_wait.png")
		end

	img_move: KL_PATHNAME
			-- Path to "move" image
		do
			Result := img_path
			Result.append_name ("text_move.png")
		end

	img_win: KL_PATHNAME
			-- Path to "win" image
		do
			Result := img_path
			Result.append_name ("text_win.png")
		end

	img_lose: KL_PATHNAME
			-- Path to "lose" image
		do
			Result := img_path
			Result.append_name ("text_lose.png")
		end

	img_tie: KL_PATHNAME
			-- Path to "tie" image
		do
			Result := img_path
			Result.append_name ("text_tie.png")
		end

	img_tile_prefix: KL_PATHNAME
			-- Path to prefix for the tile pictures
		do
			Result := img_path
			Result.append_name ("tile_")
		end

			-- The postfixes for the different tiles
	Img_bender_postfix: STRING = "_bender.png"
	Img_fry_postfix: STRING = "_fry.png"
	Img_blank_postfix: STRING = "_blank.png"
	Img_highlight_postfix: STRING = "_highlight.png"

-- fine DA CAMBIARE

	Window_title: STRING = "Dominion"
			-- Title of the main window

	Quit_dialog_message: STRING = "Do you really want to close?"
			-- Message for the quit dialog box

end -- class G5_GUI_CONSTANTS

