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

	set_pixmap (a_path: KL_PATHNAME): EV_PIXMAP
	do
		create Result
		Result.set_with_named_file (file_system.pathname_to_string (a_path))
	end

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
			Result.append_name ("cluedo_table.png")
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

	img_mustard: KL_PATHNAME
			-- Path to "background" image
		do
			Result := img_path
			Result.append_name ("PawnBoardColonelMustard.png")
		end

	img_plum: KL_PATHNAME
			-- Path to "background" image
		do
			Result := img_path
			Result.append_name ("PawnBoardProfessorPlum.png")
		end

	img_scarlett: KL_PATHNAME
			-- Path to "background" image
		do
			Result := img_path
			Result.append_name ("PawnBoardMissScarlett.png")
		end

	img_green: KL_PATHNAME
			-- Path to "background" image
		do
			Result := img_path
			Result.append_name ("PawnBoardMrGreen.png")
		end

	img_white: KL_PATHNAME
			-- Path to "background" image
		do
			Result := img_path
			Result.append_name ("PawnBoardMrsWhite.png")
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

	------------- Img card rooms ----------------------------------------
	img_card_ball_room: KL_PATHNAME
			-- Path to "Ball Room" image
		do
			Result := img_path
			Result.append_name ("CardRoomBallRoom.png")
		end

	img_card_billiard_room: KL_PATHNAME
			-- Path to "Billiard Room" image
		do
			Result := img_path
			Result.append_name ("CardRoomBilliardRoom.png")
		end

	img_card_conservatory: KL_PATHNAME
			-- Path to "Conservatory" image
		do
			Result := img_path
			Result.append_name ("CardRoomConservatory.png")
		end

	img_card_dining_room: KL_PATHNAME
			-- Path to "Dining Room" image
		do
			Result := img_path
			Result.append_name ("CardRoomDiningRoom.png")
		end

	img_card_hall: KL_PATHNAME
			-- Path to "Hall" image
		do
			Result := img_path
			Result.append_name ("CardRoomHall.png")
		end

	img_card_kitchen: KL_PATHNAME
			-- Path to "Kitchen" image
		do
			Result := img_path
			Result.append_name ("CardRoomKitchen.png")
		end

	img_card_library: KL_PATHNAME
			-- Path to "Library" image
		do
			Result := img_path
			Result.append_name ("CardRoomLibrary.png")
		end

	img_card_lounge: KL_PATHNAME
			-- Path to "Lounge" image
		do
			Result := img_path
			Result.append_name ("CardRoomLounge.png")
		end

	img_card_study: KL_PATHNAME
			-- Path to "Study" image
		do
			Result := img_path
			Result.append_name ("CardRoomStudy.png")
		end


------------- Img card suspects ----------------------------------------
	img_card_mustard: KL_PATHNAME
			-- Path to "Mustard" image
		do
			Result := img_path
			Result.append_name ("CardSuspectColonelMustard.png")
		end

	img_card_plum: KL_PATHNAME
			-- Path to "Plum" image
		do
			Result := img_path
			Result.append_name ("CardSuspectProfessorPlum.png")
		end

	img_card_scarlett: KL_PATHNAME
			-- Path to "Scarlett" image
		do
			Result := img_path
			Result.append_name ("CardSuspectMissScarlett.png")
		end

	img_card_peacock: KL_PATHNAME
			-- Path to "Peacock" image
		do
			Result := img_path
			Result.append_name ("CardSuspectMrsPeacock.png")
		end

	img_card_white: KL_PATHNAME
			-- Path to "White" image
		do
			Result := img_path
			Result.append_name ("CardSuspectMrsWhite.png")
		end

	img_card_green: KL_PATHNAME
			-- Path to "Green" image
		do
			Result := img_path
			Result.append_name ("CardSuspectReverendGreen.png")
		end

------------- Img card weapons ----------------------------------------
	img_card_knife: KL_PATHNAME
			-- Path to "Knife" image
		do
			Result := img_path
			Result.append_name ("CardWeaponKnife.png")
		end

	img_card_candlestick: KL_PATHNAME
			-- Path to "Candlestick" image
		do
			Result := img_path
			Result.append_name ("CardWeaponCandlestick.png")
		end

	img_card_lead_pipe: KL_PATHNAME
			-- Path to "Lead Pipe" image
		do
			Result := img_path
			Result.append_name ("CardWeaponLeadPipe.png")
		end

	img_card_wrench: KL_PATHNAME
			-- Path to "Wrench" image
		do
			Result := img_path
			Result.append_name ("CardWeaponWrench.png")
		end

	img_card_rope: KL_PATHNAME
			-- Path to "Rope" image
		do
			Result := img_path
			Result.append_name ("CardWeaponRope.png")
		end

	img_card_revolver: KL_PATHNAME
			-- Path to "Revolver" image
		do
			Result := img_path
			Result.append_name ("CardWeaponRevolver.png")
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
