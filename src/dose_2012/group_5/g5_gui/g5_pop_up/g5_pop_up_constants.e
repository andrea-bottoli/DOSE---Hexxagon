note
	description: "Summary description for {G5_POP_UP_CONSTANTS}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	G5_POP_UP_CONSTANTS
inherit
    KL_SHARED_FILE_SYSTEM
        export {NONE}
            all
        end

feature {NONE} -- Access

	Dose_folder: STRING = "dose_2012"
	Image_folder: STRING = "images"
	Dominion_folder: STRING = "group5"
	Pop_up_folder: STRING = "pop_up_images"

	img_path: KL_PATHNAME
			-- Path were the images of DOMINION GUI
		do
			create Result.make
			Result.set_relative (True)
			Result.append_name (Dose_folder)
			Result.append_name (Image_folder)
			Result.append_name (Dominion_folder)
			Result.append_name (Pop_up_folder)
		end

	img_pop_up_background: KL_PATHNAME
			-- Path to main view background image
		do
			Result := img_path
			Result.append_name ("pop_up_background_reveal.png")
		end




end
