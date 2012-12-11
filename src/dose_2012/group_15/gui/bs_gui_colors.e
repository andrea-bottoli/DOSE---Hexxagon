note
	description: "Summary description for {BS_GUI_COLORS}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

deferred class
	BS_GUI_COLORS

inherit
	ANY
		undefine
			is_equal, default_create, copy
		end

feature -- GUI colors

	col_white : EV_COLOR
		local
			l_col_white : EV_COLOR
		once
			create l_col_white.make_with_8_bit_rgb(255, 255, 255)
			Result := l_col_white
		end

	col_red : EV_COLOR
		local
			l_col_red : EV_COLOR
		once
			create l_col_red.make_with_8_bit_rgb(255, 30, 30)
			Result := l_col_red
		end

	col_reddish : EV_COLOR
		local
			l_col_reddish : EV_COLOR
		once
			create l_col_reddish.make_with_8_bit_rgb(255, 100, 100)
			Result := l_col_reddish
		end

	col_brown : EV_COLOR
		local
			l_col_brown : EV_COLOR
		once
			create l_col_brown.make_with_8_bit_rgb (91, 46, 0)
			Result := l_col_brown
		end

	col_blue : EV_COLOR
		local
			l_col_blue : EV_COLOR
		once
			create l_col_blue.make_with_8_bit_rgb (0, 0, 250)
			Result := l_col_blue
		end

	col_yellow : EV_COLOR
		local
			l_col_yellow : EV_COLOR
		once
			create l_col_yellow.make_with_8_bit_rgb (255, 200, 0)
			Result := l_col_yellow
		end
	end
