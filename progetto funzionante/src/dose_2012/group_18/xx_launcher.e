note
	description: "Launcher for the Hexxagon main window."
	author: "Cairo2, Crete2, Milano2"
	date: "30/10/2012"
	revision: "1.0"

class
	XX_LAUNCHER

inherit
	LAUNCHER

feature -- Implementation

	launch (main_ui_window: MAIN_WINDOW)
			-- shows a dummy output
		local
			gui: XX_GUI
		do
		 	io.put_string("Hexxagon coming soon")
		 	create gui.make
		 	gui.show

		end

end
