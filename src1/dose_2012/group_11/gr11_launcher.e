note
	description: "Launcher for the Battle Beyond Space main window."
	author: "Group11"
	date: "29.10.2012"
	revision: "1.0"

class
	GR11_LAUNCHER

inherit
	LAUNCHER

feature -- Implementation

	launch (main_ui_window: MAIN_WINDOW)
			-- shows a dummy output
		do
		 	io.put_string("Battle Beyond Space. No game yet...")
		end

end

