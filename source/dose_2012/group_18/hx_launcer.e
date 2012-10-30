note
	description: "Launcher for the Hexxagon main window."
	author: "Cairo2, Crete2, Milano2"
	date: "30/10/2012"
	revision: "1.0"

class
	HX_LAUNCHER

inherit
	LAUNCHER

feature -- Implementation

	launch (main_ui_window: EV_TITLED_WINDOW)
			-- shows a dummy output
		do
		 	io.put_string("Hexxagon coming soon")
		end

end
