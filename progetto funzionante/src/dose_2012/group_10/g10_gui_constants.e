note
	description: "Summary description for {G10_GUI_CONSTANTS}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	G10_GUI_CONSTANTS

inherit
    KL_SHARED_FILE_SYSTEM
        export {NONE}
            all
        end

feature {ANY} -- Access


		--text
	crsn_game_title: STRING = "Carcassonne Game"
	crsn_lobby_title: STRING = "Carcassonne Lobby"
	quit_Message: STRING = "Are you sure you wanna close ?"

		--folders
	dose_folder: STRING = "dose_2012"
	image_folder: STRING = "images"
	crsn_folder: STRING = "carcassonne"

		-- paths of images	
	img_path: KL_PATHNAME
			-- Path were the images of carcassonne are stored
		do
			create Result.make
			Result.set_relative (True)
			Result.append_name (dose_folder)
			Result.append_name (image_folder)
			Result.append_name (crsn_folder)
		end

	img_McNulty: KL_PATHNAME
		do
			Result := img_path
			Result.append_name ("McNulty.png")
		end

	img_PowerRanger: KL_PATHNAME
		do
			Result := img_path
			Result.append_name ("PowerRanger.png")
		end

	img_Naruto: KL_PATHNAME
		do
			Result := img_path
			Result.append_name ("Naruto.png")
		end

	img_Ladies: KL_PATHNAME
		do
			Result := img_path
			Result.append_name ("LadiesNo.png")
		end

		-- pixmaps of images
	pix_McNulty: EV_PIXMAP
		once
			create Result
			Result.set_with_named_file (file_system.pathname_to_string(img_McNulty) )
		end

	pix_PowerRanger: EV_PIXMAP
		once
			create Result
			Result.set_with_named_file (file_system.pathname_to_string(img_PowerRanger) )
		end

	pix_Naruto: EV_PIXMAP
		once
			create Result
			Result.set_with_named_file (file_system.pathname_to_string(img_Naruto) )
		end

	pix_Ladies: EV_PIXMAP
		once
			create Result
			Result.set_with_named_file (file_system.pathname_to_string(img_Ladies) )
		end

end
