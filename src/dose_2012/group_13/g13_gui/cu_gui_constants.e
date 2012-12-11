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
