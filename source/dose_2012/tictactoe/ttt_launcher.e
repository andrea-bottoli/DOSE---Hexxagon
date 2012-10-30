note
	description: "Launcher for the TicTacToe main window."
	author: "Christian Estler"
	date: "01.10.2011"
	revision: "1.0"

class
	TTT_LAUNCHER

inherit
	LAUNCHER

feature	-- Implementation

	launch (main_ui_window: EV_TITLED_WINDOW)
			-- lunch the application
		local
			window: TTT_MAIN_WINDOW
		do
				-- creates the tictactoe window
				-- gives the main_ui as argument so we can restore when tictactoe closes
			create window.make (main_ui_window)
			window.show
		end

end
