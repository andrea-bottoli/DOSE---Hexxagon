note
	description: "Summary description for {G20_LAUNCHER}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	G20_LAUNCHER
inherit
	LAUNCHER

feature{ANY}
	launch(main_ui_window: MAIN_WINDOW)
		local
			core: G20_CORE
		do
			create core.start_game
			io.put_string("It's OK")
		end


end
