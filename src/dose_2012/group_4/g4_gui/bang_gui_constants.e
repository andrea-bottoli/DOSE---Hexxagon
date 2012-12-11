note
	description: "Constants for the Graphical User Interface of the Bang! game."
	author: "PUCRS6 & Crete12"
	date: "10.11.2012"
	revision: "01"

class
	BANG_GUI_CONSTANTS

inherit
    KL_SHARED_FILE_SYSTEM
        export {NONE}
            all
        end

feature {NONE} -- Access

		-- Title of the main window
	Window_title: STRING = "Bang!"

		-- Folder paths
	Dose_folder: STRING = "dose_2012"
	Image_folder: STRING = "images"
	BANG_image_folder: STRING = "group_4"

	bang_img_path: KL_PATHNAME
			-- Path for image folder of main_ui
		do
			create Result.make
			Result.set_relative (True)
			Result.append_name (Dose_folder)
			Result.append_name (Image_folder)
			Result.append_name (BANG_image_folder)
		end

	-- Path to "background" image
	bang_main_img_background: KL_PATHNAME
	do
		Result := bang_img_path
		Result.append_name ("background.png")
	end

	-- PATHS TO MAIN WINDOW BUTTONS
	bang_img_quit_normal: KL_PATHNAME
			-- Path to "quit" image
		do
			Result := bang_img_path
			Result.append_name ("quit_normal.png")
		end
	bang_img_quit_hover: KL_PATHNAME
			-- Path to "quit" image
		do
			Result := bang_img_path
			Result.append_name ("quit_hover.png")
		end
	bang_img_credits_normal: KL_PATHNAME
			-- Path to "quit" image
		do
			Result := bang_img_path
			Result.append_name ("credits_normal.png")
		end
	bang_img_credits_hover: KL_PATHNAME
			-- Path to "quit" image
		do
			Result := bang_img_path
			Result.append_name ("credits_hover.png")
		end
	bang_img_rules_normal: KL_PATHNAME
			-- Path to "quit" image
		do
			Result := bang_img_path
			Result.append_name ("rules_normal.png")
		end
	bang_img_rules_hover: KL_PATHNAME
			-- Path to "quit" image
		do
			Result := bang_img_path
			Result.append_name ("rules_hover.png")
		end
	bang_img_game_normal: KL_PATHNAME
			-- Path to "quit" image
		do
			Result := bang_img_path
			Result.append_name ("new_normal.png")
		end
	bang_img_game_hover: KL_PATHNAME
			-- Path to "quit" image
		do
			Result := bang_img_path
			Result.append_name ("new_hover.png")
		end

	-- PATHS TO CREDITS
	bang_img_credits: KL_PATHNAME
		do
			Result := bang_img_path
			Result.append_name ("credits.png")
		end

	-- PATHS TO RULES
	bang_img_rules: KL_PATHNAME
	do
		Result := bang_img_path
		Result.append_name ("rules.png")
	end
	bang_rtf_rules: KL_PATHNAME
	do
		Result := bang_img_path
		Result.append_name ("rules.rtf")
	end

	-- DEFAULT MESSAGES USED IN THE BANG APPLICATION
	Quit_dialog_message: STRING = "Do you really want to quit the Bang!?"
	Credits_dialog_message: STRING = "This awesome game was created by the PUCRS6 and Crete12 teams for the Dose 2012 program! List of names are:\n-	Diogo Strube de Lima\n- ..."


end -- class BANG_GUI_CONSTANTS
