note
	description: "Constants for the Graphical User Interface of the Monopoly game."
	author: "Group1 - Milano7"
	date: "23/11/2012"
	revision: "1.0"

class
	G1_UI_CONSTANTS

inherit
    KL_SHARED_FILE_SYSTEM
        export {NONE}
            all
        end

feature {NONE} -- Access

	Dose_folder: STRING = "dose_2012"
	Image_folder: STRING = "images"
    Monopoly_folder: STRING = "group1"

feature {NONE} -- Messages

    Window_title: STRING = "Monopoly"
			-- Title of the main window
	First_window_title: STRING = "Welcome to Monopoly!"
	        -- Title of the first window shown
	Popup_manage_title: STRING = "Manage Houses&Hotels"
			-- Title of the mortgage popup
	Popup_trade_title: STRING = "Trade"
			-- Title of the trade popup
	Popup_jail_title : STRING = "Jail"
			-- Title of the prison popup
	Popup_special_title : STRING = "Special Cell"
			-- Title of the prison popup
	Quit_dialog_message: STRING = "Do you really want to close?"
			-- Message for the quit dialog box
	Popup_auction_title : STRING = "Auction"
			-- Title of the auction popup

feature {NONE} -- Numerical Constants

    Window_width: INTEGER = 730
            -- Initial width for the first window.
    Window_height: INTEGER = 500
            -- Initial height for the first window.

    Popup_manage_width : INTEGER = 660
			-- Initial width for the mortgage popup.
	Popup_manage_height: INTEGER = 400
            -- Initial height for the mortgage popup.

    Popup_std_width : INTEGER = 300
			-- Initial width for the mortgage popup.
	Popup_std_height: INTEGER = 310
            -- Initial height for the mortgage popup.

    Popup_trade_width : INTEGER = 830
			-- Initial width for the mortgage popup.
	Popup_trade_height: INTEGER = 300
            -- Initial height for the mortgage popup.		

	Popup_jail_width : INTEGER = 520
			-- Initial width for the mortgage popup.
	Popup_jail_height: INTEGER = 410
            -- Initial height for the mortgage popup.

    Popup_auction_width : INTEGER = 420
			-- Initial width for the auction popup.
	Popup_auction_height: INTEGER = 520
            -- Initial height for the auction popup.		

	screen_height: INTEGER
			-- Returns the screen heigt
		once
			Result := (create {EV_SCREEN}).height
		end

	screen_width: INTEGER
			-- Returns the screen width
		once
			Result := (create {EV_SCREEN}).width
		end

	WHITE: EV_COLOR
		local
			color:EV_COLOR
		do
			create color.default_create
					color.set_blue_with_8_bit (255)
					color.set_green_with_8_bit (255)
					color.set_red_with_8_bit (255)
			Result := color
		end

	GREEN: EV_COLOR
		local
			color:EV_COLOR
		do
			create  color.default_create
					color.set_blue_with_8_bit (0)
					color.set_green_with_8_bit (200)
					color.set_red_with_8_bit (0)
			Result := color
		end

feature {NONE} -- Resources

    mp_img_path: KL_PATHNAME
			-- Path where the images of Monopoly are stored
		do
			create Result.make
			Result.set_relative (True)
			Result.append_name (Dose_folder)
			Result.append_name (Image_folder)
			Result.append_name (Monopoly_folder)
		end

	mp_img_load (path:STRING) : KL_PATHNAME
		do
			Result := mp_img_path
			Result.append_name (path)
		end

	mp_flag (country_code: STRING) : KL_PATHNAME
			-- Path to "country" image
		do
			Result := mp_img_path
			Result.append_name ("flag")
			country_code.append (".png")
			Result.append_name (country_code)
		end


feature {NONE} -- Common features

	set_background (path: KL_PATHNAME; width_img,height_img:INTEGER_32): EV_FIXED
		local
			pixmap: EV_PIXMAP
			area: EV_FIXED
		do
			create area
			create pixmap
			pixmap.set_with_named_file (file_system.pathname_to_string (path))
			if width_img/=0 then
				pixmap.stretch (width_img,height_img)
			end
			area.set_background_pixmap (pixmap)
			Result := area
		end

	request_close_window(a_main_ui_window: MAIN_WINDOW; a_window: EV_TITLED_WINDOW)
			-- The user wants to close the window
		local
			question_dialog: EV_CONFIRMATION_DIALOG
		do
			create question_dialog.make_with_text (Quit_dialog_message)
			question_dialog.show_modal_to_window (a_window)

			if question_dialog.selected_button.is_equal ((create {EV_DIALOG_CONSTANTS}).ev_ok) then
					-- Restore the main UI which is currently minimized
				if attached a_main_ui_window then
					a_main_ui_window.restore
					a_main_ui_window.remove_reference_to_game (a_window)
				end
					-- Destroy the window
				a_window.destroy
			end
		end

	request_close_popup(a_window_popup : EV_TITLED_WINDOW)
			-- The user wants to close the popup window
		local
			question_dialog: EV_CONFIRMATION_DIALOG
		do
			create question_dialog.make_with_text (Quit_dialog_message)
			question_dialog.show_modal_to_window (a_window_popup)
			if question_dialog.selected_button.is_equal ((create {EV_DIALOG_CONSTANTS}).ev_ok) then
				a_window_popup.destroy
			end
		end

end -- class G1_UI_CONSTANTS
