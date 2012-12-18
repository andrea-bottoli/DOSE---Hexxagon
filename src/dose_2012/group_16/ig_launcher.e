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
			main_ui_window := a_main_window

			create start_dialog.make_with_title (start_window_title)

			start_dialog.show
			start_dialog.host_game_actions.extend (agent start_host)
			start_dialog.join_game_actions.extend (agent start_join)
			start_dialog.abort_host_actions.extend (agent cancel_host_join)
			start_dialog.abort_join_actions.extend (agent cancel_host_join)
		end

	start_host (a_game_settings: IG_GAME_SETTINGS)
		do
				-- Create game logic with given game settings
			create main_logic.make_with_host_settings(a_game_settings, agent initialize_actions, agent cancel_game_callback, agent game_over)
			main_logic.check_if_full_house

		end

	cancel_host_join
		do
			if main_logic /= Void then
				main_logic.abort_game
			end
		end

	cancel_game_callback
		do
			--Game has been aborted, and this function gets called.
			--TODO: Add code
		end

	receive_abort
		do
			if game_window /= Void then
				game_window.show_game_cancelled_dialog
			else
				start_dialog.show_game_cancelled_dialog
			end

		end

	start_join (a_game_settings: IG_GAME_SETTINGS)
		do
				-- Create game logic with given game settings
			create main_logic.make_with_join_settings (a_game_settings, agent initialize_actions, agent cancel_game_callback, agent game_over)
		end

	game_over (a_player: IG_PLAYER)
		do
			game_window.show_game_over_dialog(a_player)
		end

	initialize_actions
		do
				-- Create game window
			create game_window.make (main_ui_window, main_logic)
				-- Update the game window whenever the logic changes
			main_logic.game_update_actions.extend(agent game_window.refresh_game_view)
			main_logic.turn_update_actions.extend (agent game_window.refresh_turns)
			game_window.swap_tiles_actions.extend (agent main_logic.swap_tiles (main_logic.user_player))
			game_window.lay_tile_actions.extend (agent main_logic.process_move)

			game_window.show

				-- Keep the game window from being collected
			main_ui_window.add_reference_to_game (game_window)

				-- Hide the start dialog
			start_dialog.hide
		end

	main_ui_window: MAIN_WINDOW

	game_window: IG_MAIN_WINDOW

	main_logic: IG_LOGIC

	start_dialog: IG_START_DIALOG

end
