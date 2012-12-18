note
	description: "Summary description for {G21_LAUNCHER}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	G21_LAUNCHER
inherit
	LAUNCHER

feature
	launch (main_ui_window: MAIN_WINDOW)
		local
		logic : G21_BOARD

		do
			create logic.make (true, 0)
		end

end
