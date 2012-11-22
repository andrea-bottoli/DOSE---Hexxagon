note
	description: "A launcher for the Ingenious game. Serves as our Controller."
	author: "Emanuele Rudel, Florian Besser"
	date: "05.11.2012"
	revision: "0.1"

class
	IG_LAUNCHER

inherit
	LAUNCHER
	IG_GUI_CONSTANTS

feature -- Implemenation

	launch (a_main_window: MAIN_WINDOW)
			-- launch the Ingenious main window
		local
			l_dialog: IG_START_DIALOG
		do
			main_ui_window := a_main_window

			create l_dialog.make_with_title (start_window_title)
			l_dialog.show
		end

	start_dialog_host (a_game_settings: IG_GAME_SETTINGS)
		local
			l_window: IG_MAIN_WINDOW
		do
			create l_window.make (main_ui_window)
			l_window.show
				-- Keep the game window from being collected
			main_ui_window.add_reference_to_game (l_window)

			--TODO

		end

	start_dialog_join (a_game_settings: IG_GAME_SETTINGS)
		do
			--TODO
		end

	main_ui_window: MAIN_WINDOW

	dummy
		local
			l_ai_player: IG_AI_PLAYER
		do

		end

end
