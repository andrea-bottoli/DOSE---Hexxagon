note
	description: "Summary description for {CU_GUI_CONSTANTS}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	CU_GUI_CONSTANTS

inherit
    KL_SHARED_FILE_SYSTEM
        export {NONE}
            all
        end

feature {NONE} -- Access

	Dose_folder: STRING = "dose_2012"
	Image_folder: STRING = "images"
	CU_folder: STRING = "group13"

	img_path: KL_PATHNAME
			-- Path were the images of TTT are stored
		do
			create Result.make
			Result.set_relative (True)
			Result.append_name (Dose_folder)
			Result.append_name (Image_folder)
			Result.append_name (CU_folder)
		end

	img_background: KL_PATHNAME
			-- Path to "background" image
		do
			Result := img_path
			Result.append_name ("CluedoBoard.png")
		end

	img_main_background: KL_PATHNAME
			-- Path to "background" image
		do
			Result := img_path
			Result.append_name ("main_background.png")
		end

	img_about: KL_PATHNAME
			-- Path to "background" image
		do
			Result := img_path
			Result.append_name ("about_png.png")
		end

	txt_rules: KL_PATHNAME
			-- Path to "background" image
		do
			Result := img_path
			Result.append_name ("rules.txt")
		end

	img_peacock: KL_PATHNAME
			-- Path to "background" image
		do
			Result := img_path
			Result.append_name ("PawnBoardMrsPeacock.png")
		end

	img_notes: KL_PATHNAME
			-- Path to "background" image
		do
			Result := img_path
			Result.append_name ("Notes.png")
		end

	img_notes_button_check: KL_PATHNAME
			-- Path to "background" image
		do
			Result := img_path
			Result.append_name ("checkmark.png")
		end

	img_notes_button_cross: KL_PATHNAME
			-- Path to "background" image
		do
			Result := img_path
			Result.append_name ("crosshair.png")
		end

	img_notes_button_question: KL_PATHNAME
			-- Path to "background" image
		do
			Result := img_path
			Result.append_name ("questionMark.png")
		end

	img_dices_1: KL_PATHNAME
			-- Path to "background" image
		do
			Result := img_path
			Result.append_name ("dices_1.png")
		end

	img_dices_1_1: KL_PATHNAME
			-- Path to "background" image
		do
			Result := img_path
			Result.append_name ("dices_1_1.png")
		end

	img_dices_2: KL_PATHNAME
			-- Path to "background" image
		do
			Result := img_path
			Result.append_name ("dices_2.png")
		end

	img_dices_3: KL_PATHNAME
			-- Path to "background" image
		do
			Result := img_path
			Result.append_name ("dices_3.png")
		end

	img_dices_4: KL_PATHNAME
			-- Path to "background" image
		do
			Result := img_path
			Result.append_name ("dices_4.png")
		end


	img_dices_5: KL_PATHNAME
			-- Path to "background" image
		do
			Result := img_path
			Result.append_name ("dices_5.png")
		end


	img_dices_6: KL_PATHNAME
			-- Path to "background" image
		do
			Result := img_path
			Result.append_name ("dices_6.png")
		end

	img_dices_6_1: KL_PATHNAME
			-- Path to "background" image
		do
			Result := img_path
			Result.append_name ("dices_6_1.png")
		end

	img_win: KL_PATHNAME
			-- Path to "background" image
		do
			Result := img_path
			Result.append_name ("epic_win.png")
		end

	img_win_dialog: KL_PATHNAME
			-- Path to "background" image
		do
			Result := img_path
			Result.append_name ("win_image.png")
		end

	img_lose: KL_PATHNAME
			-- Path to "background" image
		do
			Result := img_path
			Result.append_name ("epic_fail.png")
		end

	img_lose_fuu: KL_PATHNAME
			-- Path to "background" image
		do
			Result := img_path
			Result.append_name ("fuuu.png")
		end

	Quit_dialog_message: STRING = "Do you really want to close?"
			-- Message for the quit dialog box

	Menu_file_item: STRING = "&File"
			-- String for menu "File"

	Menu_file_new_item: STRING = "&New%TCtrl+N"
			-- String for menu "File/New"

	Menu_file_open_item: STRING = "&Open...%TCtrl+O"
			-- String for menu "File/Open"

	Menu_file_save_item: STRING = "&Save%TCtrl+S"
			-- String for menu "File/Save"

	Menu_file_saveas_item: STRING = "Save &As..."
			-- String for menu "File/Save As"

	Menu_file_close_item: STRING = "&Close"
			-- String for menu "File/Close"

	Menu_file_exit_item: STRING = "E&xit"
			-- String for menu "File/Exit"

	Menu_help_item: STRING = "&Help"
			-- String for menu "Help"

	Menu_help_contents_item: STRING = "&Contents and Index"
			-- String for menu "Help/Contents and Index"

	Menu_help_about_item: STRING = "&About..."
			-- String for menu "Help/About"

end
