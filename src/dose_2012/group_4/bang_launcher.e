note
	description: "Launcher for the Bang! game main window."
	author: "PUCRS6 & Crete12"
	date: "10112012"
	revision: "0.1"

class
	BANG_LAUNCHER

inherit
	LAUNCHER

feature	-- Implementation

	launch (main_ui_window: MAIN_WINDOW)
			-- lunch the application
		local
			window: BANG_MAIN_WINDOW
		do
				-- creates the tictactoe window
				-- gives the main_ui as argument so we can restore when tictactoe closes
			print("Bang! Game")
			create window.make (main_ui_window)
			window.show

				-- we inform the Main-UI about the game window; otherwise, the game window might get garbage collected
			main_ui_window.add_reference_to_game (window)
		end

end

