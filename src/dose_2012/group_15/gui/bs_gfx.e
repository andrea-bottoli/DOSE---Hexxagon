note
	description: "Summary description for {BS_GFX}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

deferred class
	BS_GFX

inherit
	ANY

feature -- Get graphics file name

	get_gfx_file_name(a_name : STRING) : STRING
		do
			Result := "dose_2012/images/group_15/" + a_name + ".png"
		end

end
