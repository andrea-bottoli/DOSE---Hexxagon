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

	get_block_gray: EV_PIXMAP
		once
			create Result
			Result.set_with_named_file (get_gfx_file_name("block_gray"))
		end

	get_block_blue: EV_PIXMAP
		once
			create Result
			Result.set_with_named_file (get_gfx_file_name("block_blue"))
		end

	get_block_yellow: EV_PIXMAP
		once
			create Result
			Result.set_with_named_file (get_gfx_file_name("block_yellow"))
		end

	get_block_red: EV_PIXMAP
		once
			create Result
			Result.set_with_named_file (get_gfx_file_name("block_red"))
		end

	get_block_green: EV_PIXMAP
		once
			create Result
			Result.set_with_named_file (get_gfx_file_name("block_green"))
		end

end
