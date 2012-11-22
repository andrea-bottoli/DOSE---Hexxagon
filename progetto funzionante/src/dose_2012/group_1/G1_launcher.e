note
	description: "Launcher for the Monopoly main window."
	author: "GROUP1: MILANO7 - RIO CUARTO7"
	date: "07/11/2012"
	revision: "1.0"

class
	G1_LAUNCHER

inherit
	LAUNCHER

feature -- Implemenation

	launch (main_ui_window: MAIN_WINDOW)
			-- shows a dummy output
		do
		 	io.put_string("Monopoly coming soon... Don't run away!!!")
		end

end
