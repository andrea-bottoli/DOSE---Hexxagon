note
	description: "Launcher for the Blokus main window."
	author: "Milano6"
	date: "29.11.2012"
	revision: "0.2"

class
	B8_LAUNCHER

inherit
	LAUNCHER

feature -- Implemenation

	launch (main_ui_window: MAIN_WINDOW)
		local
			window: B8_1ST_LAYER_WINDOW
			logic:B8_LOGIC
		do
			create logic.make
			-- creates the Blokus window
				-- gives the main_ui as argument so we can restore when Blokus closes
			create window.make (main_ui_window,logic)
			window.show

				-- we inform the Main-UI about the game window; otherwise, the game window might get garbage collected
			main_ui_window.add_reference_to_game (window)
		end

end
