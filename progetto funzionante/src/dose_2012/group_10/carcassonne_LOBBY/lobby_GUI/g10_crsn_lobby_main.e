note
	description : "G10_MAIN_WINDOW application root class"
	author		: "Angel Kyriako"
	date        : "$Date$"
	revision    : "$Revision$"

class
	G10_CRSN_LOBBY_MAIN

inherit
	EV_TITLED_WINDOW
		redefine
			initialize
		end

	G10_GUI_CONSTANTS
		export
			{NONE} all
		undefine
			default_create, copy
		end

create
	make

feature {NONE}	-- Attributes

	--the components that interact with the lobby component
	main_ui: MAIN_WINDOW
	game_ui_launcher: G10_CRSN_GAME_LAUNCHER
	game_window: EV_WINDOW-- the game window that is currently opened

	--parts of the lobby graphic component
	background: EV_FIXED
	wallpaper: EV_FIXED
	create_button: EV_BUTTON
	join_button: EV_BUTTON

feature {NONE} -- constructs a titled window

	make (a_main_ui_window: MAIN_WINDOW)
		require
			Main_window_not_null: a_main_ui_window /= void
			window_title_not_null: crsn_lobby_title /= void
		do
				-- Store the main_ui object. We want to restore it later on (it's currently minimized).
			main_ui := a_main_ui_window
				-- Create the Lobby window.			
			make_with_title (crsn_lobby_title)
		ensure
			lobby_not_null: Current /= void
		end

	initialize -- Build the interface for this window.
		do
			Precursor {EV_TITLED_WINDOW}
			close_request_actions.extend (agent request_close_window)

			create background

			put(background)

			create wallpaper
			wallpaper.set_background_pixmap (pix_Ladies)
			background.extend_with_position_and_size (wallpaper, 0, 0, 800, 500)

			create create_button.make_with_text ("Create Game")
			create_button.select_actions.extend (agent create_game)
			background.extend_with_position_and_size (create_button, 110, 600, 180, 50)

			create join_button.make_with_text ("Join Game")
			join_button.select_actions.extend (agent join_game)
			background.extend_with_position_and_size (join_button, 510, 600, 180, 50)
		end


feature {NONE} -- agents of buttons

	create_game
	require
		lobby_not_null: Current /= void
	do
		if (game_window = void) then
			create game_ui_launcher
			game_ui_launcher.launch (Current)
			minimize
		end

	ensure
		game_ui_launcher_not_null: game_ui_launcher /= void
	end

	join_game
	require
		lobby_not_null: Current /= void
	do
		if (game_window = void) then
			create game_ui_launcher
			game_ui_launcher.launch (Current)
			minimize
		end
	ensure
		game_ui_launcher_not_null: game_ui_launcher /= void
	end

	request_close_window
			-- The user wants to close the window
		require
			Current /= void
		local
			question_dialog: EV_CONFIRMATION_DIALOG
		do
			create question_dialog.make_with_text (quit_Message)
			question_dialog.show_modal_to_window (Current)

			if question_dialog.selected_button.is_equal ((create {EV_DIALOG_CONSTANTS}).ev_ok) then
					-- Restore the main UI which is currently minimized
				if attached main_ui then
					main_ui.restore
					main_ui.remove_reference_to_game (Current)
				end
					-- Destroy the window
				destroy
			end
		end

feature {ANY}

	add_reference_to_game_window (a_game_window: EV_WINDOW)
			-- adds the reference to window of a game
		require
			arg_not_void: a_game_window /= Void
		do
			game_window := a_game_window
		ensure
			game_window_not_null: game_window /= void
		end

	remove_reference_to_game_window
			-- removes the game window reference
		do
			game_window := void
		ensure
			game_window_is_null: game_window = void
		end

invariant
	main_ui_not_null: main_ui /= void
end
