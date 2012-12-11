note
	description: "A launcher for the Ingenious game. Serves as our Controller."
	author: "Emanuele Rudel, Florian Besser"
	date: "05.11.2012"
	revision: "0.1"

class
	IG_LAUNCHER

inherit
	LAUNCHER
	IG_CONSTANTS

feature -- Implemenation

	launch (a_main_window: MAIN_WINDOW)
			-- Launch the Ingenious main window
		do

			io.put_string ("Starting launch Dialog.%N")

			main_ui_window := a_main_window

			create start_dialog.make_with_title (start_window_title)

			io.put_string ("Created Dialog.%N")

			start_dialog.show
			start_dialog.host_game_actions.extend (agent start_host)
			start_dialog.join_game_actions.extend (agent start_join)
			start_dialog.abort_host_actions.extend (agent abort_host)
			start_dialog.abort_join_actions.extend (agent abort_join)

			io.put_string ("Dialog ready.%N")
		end

	start_host (a_game_settings: IG_GAME_SETTINGS)
		do
				-- Create game logic with given game settings
			create main_logic.make_with_host_settings(a_game_settings, agent actual_host, agent receive_abort, agent game_over)
			main_logic.check_if_full_house

		end

	actual_host
		do
			create game_window.make (main_ui_window, main_logic)

				-- Update the game window whenever the logic changes
			main_logic.game_update_actions.extend(agent game_window.refresh_game_view)
			game_window.lay_tile_actions.extend (agent main_logic.process_move)

			game_window.show
				-- Keep the game window from being collected
			main_ui_window.add_reference_to_game (game_window)
		end

	abort_host
		do
			main_logic.abort_host
			--Maybe more code added here in the future?
		end

	abort_join
		do
			main_logic.abort_host
			--Maybe more code added here in the future?
		end

	receive_abort
		do
			game_window.show_game_cancelled_dialog
		end

	start_join (a_game_settings: IG_GAME_SETTINGS)
		do
				-- Create game logic with given game settings
			create main_logic.make_with_join_settings (a_game_settings, agent actual_join, agent receive_abort, agent game_over)

		end

	actual_join
		do
				-- Create game window
			create game_window.make (main_ui_window, main_logic)
				-- Update the game window whenever the logic changes
			main_logic.game_update_actions.extend(agent game_window.refresh_game_view)
			game_window.lay_tile_actions.extend (agent main_logic.process_move)

			game_window.show

				-- Keep the game window from being collected
			main_ui_window.add_reference_to_game (game_window)
		end

	game_over (a_player: IG_PLAYER)
		do
			game_window.show_game_over_dialog(a_player)
		end

	main_ui_window: MAIN_WINDOW

	game_window: IG_MAIN_WINDOW

	main_logic: IG_LOGIC

	start_dialog: IG_START_DIALOG

end
