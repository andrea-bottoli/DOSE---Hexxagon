note
	description: "Launcher for the Triple Triad New Generation main window."
	author: "RioCuarto8"
	date: "29/10/2012"
	revision: "1.0"

class
	G2_LAUNCHER

inherit
	LAUNCHER

feature -- Implemenation

	launch (main_ui_window: EV_TITLED_WINDOW)
			-- shows a dummy output
		do
		 	io.put_string("Triple Triad New Generation coming soon.")
		end

end
