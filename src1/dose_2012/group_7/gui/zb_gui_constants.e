note
	description: "Class for some constants and stuff for the game ZOMBIES!!!."
	author: "Debrecen1"
	date: "01.12.2012"
	revision: "$Revision$"

class
	ZB_GUI_CONSTANTS

inherit
    KL_SHARED_FILE_SYSTEM
        export {NONE}
            all
        end

feature {NONE} -- Access

	Dose_folder: STRING = "dose_2012"
	Image_folder: STRING = "images"
	ZB_folder: STRING = "group7"

	img_path: KL_PATHNAME
			-- Path were the images of ZOMBIES!!! are stored
		do
			create Result.make
			Result.set_relative (True)
			Result.append_name (Dose_folder)
			Result.append_name (Image_folder)
			Result.append_name (ZB_folder)
		end

	img_lobby_background: KL_PATHNAME
		do
			Result := img_path
			Result.append_name ("lobby_background.png")
		end

	img_lobby_background_join: KL_PATHNAME
		do
			Result := img_path
			Result.append_name ("lobby_background_join.png")
		end

	img_lobby_background_host: KL_PATHNAME
		do
			Result := img_path
			Result.append_name ("lobby_background_host.png")
		end

	img_lobby_button_join: KL_PATHNAME
		do
			Result := img_path
			Result.append_name ("lobby_button_join.png")
		end

	img_lobby_button_join_hover: KL_PATHNAME
		do
			Result := img_path
			Result.append_name ("lobby_button_join_hover.png")
		end

	img_lobby_button_host: KL_PATHNAME
		do
			Result := img_path
			Result.append_name ("lobby_button_host.png")
		end

	img_lobby_button_host_hover: KL_PATHNAME
		do
			Result := img_path
			Result.append_name ("lobby_button_host_hover.png")
		end

	img_lobby_button_quit: KL_PATHNAME
		do
			Result := img_path
			Result.append_name ("lobby_button_quit.png")
		end

	img_lobby_button_quit_hover: KL_PATHNAME
		do
			Result := img_path
			Result.append_name ("lobby_button_quit_hover.png")
		end

	img_lobby_button_back: KL_PATHNAME
		do
			Result := img_path
			Result.append_name ("lobby_button_back.png")
		end

	img_lobby_button_back_hover: KL_PATHNAME
		do
			Result := img_path
			Result.append_name ("lobby_button_back_hover.png")
		end

	img_lobby_button_do_join: KL_PATHNAME
		do
			Result := img_path
			Result.append_name ("lobby_button_do_join.png")
		end

	img_lobby_button_do_join_hover: KL_PATHNAME
		do
			Result := img_path
			Result.append_name ("lobby_button_do_join_hover.png")
		end

	img_lobby_button_do_host: KL_PATHNAME
		do
			Result := img_path
			Result.append_name ("lobby_button_do_host.png")
		end

	img_lobby_button_do_host_hover: KL_PATHNAME
		do
			Result := img_path
			Result.append_name ("lobby_button_do_host_hover.png")
		end

	img_play_window_background: KL_PATHNAME
		do
			Result := img_path
			Result.append_name ("zb_play_window_background.png")
		end

	Window_title: STRING = "ZOMBIES!!!"
			-- Title of the main window

	Quit_dialog_message: STRING = "Do you really want to close?"
			-- Message for the quit dialog box

end -- class ZB_GUI_CONSTANTS
