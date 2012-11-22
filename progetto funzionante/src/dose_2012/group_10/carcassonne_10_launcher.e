note
	description: "Launcher for the Carcassonne main window."
	author: "CRETE3"
	date: "29.10.2012"
	revision: "1.0"

class
	CARCASSONNE_10_LAUNCHER

inherit
	LAUNCHER

feature -- Implemenation

	launch (main_ui_window: MAIN_WINDOW)
			-- shows a dummy output
		do
		 	io.put_string("Carcassonne board game not ready yet...")
		end

end
