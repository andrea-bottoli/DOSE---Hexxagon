note
	description: "Summary description for {G10_CRSN_LOBBY_LAUNCHER}."
	author: "Angel Kyriako"
	date: "11.11.2012"
	revision: "1.0"

class
	G10_CRSN_LOBBY_LAUNCHER

inherit
	LAUNCHER

feature -- Implementation

	launch (main_ui: MAIN_WINDOW)
			-- launch the application
		local
			crsn_lobby_ui: G10_CRSN_LOBBY_MAIN
		do
				-- creates the carcassonne game window
				-- gives the main_ui as argument so we can restore when carcassonne closes
			create crsn_lobby_ui.make (main_ui)
			crsn_lobby_ui.show

				-- we inform the Main-UI about the game window; otherwise, the game window might get garbage collected
			main_ui.add_reference_to_game (crsn_lobby_ui)
		end


end
