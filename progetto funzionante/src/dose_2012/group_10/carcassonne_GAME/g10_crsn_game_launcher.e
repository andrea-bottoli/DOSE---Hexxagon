note
	description: "Launcher for the Carcassonne main window."
	author: "Angel Kyriako"
	date: "8.11.2012"
	revision: "1.0"

class
	G10_CRSN_GAME_LAUNCHER

feature -- Implementation

	launch (crsn_lobby_ui: G10_CRSN_LOBBY_MAIN)
			-- lunch the application
		local
			crsn_game_ui: G10_CRSN_GAME_MAIN
		do
				-- creates the carcassonne window
				-- gives the main_ui as argument so we can restore when carcassonne closes
			create crsn_game_ui.make(crsn_lobby_ui)
			crsn_game_ui.show

				-- we inform the lobby-UI about the game window; otherwise, the game window might get garbage collected
			crsn_lobby_ui.add_reference_to_game_window (crsn_game_ui)
		end


end
