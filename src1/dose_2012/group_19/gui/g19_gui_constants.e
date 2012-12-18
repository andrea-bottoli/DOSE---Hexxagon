note
	description: "Summary description for {G19_GUI_CONSTANTS}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	G19_GUI_CONSTANTS

inherit
	
	ANY

	KL_SHARED_FILE_SYSTEM
        export {NONE}
            all
        end

feature
	img_menu_background: KL_PATHNAME
		do
			Result := g19_img_path
			Result.append_name ("menu_background.png")
		end

	img_menu_point_background: KL_PATHNAME
		do
			Result := g19_img_path
			Result.append_name ("menu_point.png")
		end

	g19_img_path: KL_PATHNAME
		do
			create Result.make
			Result.set_relative (True)
			Result.append_name (dose_folder)
			Result.append_name (image_folder)
			Result.append_name (g19_folder)
		end

	dose_folder: STRING = "dose_2012"
	image_folder: STRING = "images"
	g19_folder: STRING = "group_19"
end
