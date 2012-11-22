note
	description: "Summary description for {MAIN_WINDOW_CONSTANTS}."
	author: "Christian Estler"
	date: "$Date$"
	revision: "$Revision$"

class
	MAIN_WINDOW_CONSTANTS

inherit
    KL_SHARED_FILE_SYSTEM
    		-- use KL_SHARED_FILE_SYSTEM to make file paths OS independent
        export {NONE}
            all
        end

feature {NONE} -- Access

	Dose_folder: STRING = "dose_2012"
	Image_folder: STRING = "images"
	Description_folder: STRING = "description"
	Main_ui_folder: STRING = "main_ui"

	mui_img_path: KL_PATHNAME
			-- Path for image folder of main_ui
		do
			create Result.make
			Result.set_relative (True)
			Result.append_name (Dose_folder)
			Result.append_name (Image_folder)
			Result.append_name (Main_ui_folder)
		end

	mui_img_background: KL_PATHNAME
			-- Path to "background" image
		do
			Result := mui_img_path
			Result.append_name ("background.png")
		end

	mui_img_play: KL_PATHNAME
			-- Path to "play" button image
		do
			Result := mui_img_path
			Result.append_name ("play.png")
		end

	mui_img_play_hover: KL_PATHNAME
			-- Path to "play" button image in hover mode
		do
			Result := mui_img_path
			Result.append_name ("play_hover.png")
		end

	mui_img_quit: KL_PATHNAME
			-- Path to "quit" image
		do
			Result := mui_img_path
			Result.append_name ("quit.png")
		end

	mui_img_quit_hover: KL_PATHNAME
			-- Path to "quit" image in hover mode
		do
			Result := mui_img_path
			Result.append_name ("quit_hover.png")
		end


	mui_description_prefix: KL_PATHNAME
			-- Path to description folder
		do
			create Result.make
			Result.set_relative (True)
			Result.append_name (Dose_folder)
			Result.append_name (Description_folder)
		end


	mui_message_string: STRING = "Please select a game first."

end
