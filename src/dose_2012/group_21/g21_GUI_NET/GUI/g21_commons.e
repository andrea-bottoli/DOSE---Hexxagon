note
	description: "Summary description for {G21_COMMONS}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	G21_COMMONS

feature
	rpath(img : STRING): READABLE_STRING_GENERAL
	do
		Result := g21_img_path
		Result.append_name (img)
	ensure
		--filename /= Void
	end

	g21_img_path: KL_PATHNAME
	-- Path where the images of Monopoly are stored
	do
		create Result.make
		Result.set_relative (True)
		Result.append_name (Dose_folder)
		Result.append_name (Image_folder)
		Result.append_name (TT_folder)
	end

end
