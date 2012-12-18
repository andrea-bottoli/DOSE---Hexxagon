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
    	-- launch the application
	    local
			window: G1_UI_MAIN
		do
				-- creates the first window
				-- gives the main_ui as argument so we can restore when monopoly closes
			create window.make (main_ui_window)
			window.show

				-- we inform the Main-UI about the game window; otherwise, the game window might get garbage collected
			main_ui_window.add_reference_to_game (window)

		end

end
