note
	description: "The main window of the Ingenious game. The game is played here."
	author: "Emanuele Rudel, Florian Besser"
	date: ""
	revision: "0.1"

class
	IG_MAIN_WINDOW

inherit
	EV_TITLED_WINDOW
		redefine
			initialize,
			show
		end

	IG_GUI_CONSTANTS
		export
			{NONE} all
		undefine
			default_create, copy
		end

create
	make

feature {NONE}	-- Initialization

	make(a_main_ui_window: MAIN_WINDOW)
			-- Initialize the game window
			-- `a_main_window' is restored after the game window is closed
		do
				-- Store the main_ui object. We want to restore it later on (it's currently minimized).
			main_ui := a_main_ui_window
				-- Create the Ingenious window.
			make_with_title (window_title)
		end

	initialize
			-- Build the window
		do
			Precursor {EV_TITLED_WINDOW}
			close_request_actions.extend (agent request_close_window)

				-- create the main container and put it on the window
			create con_main
			put (con_main)

				-- create the main container for the game itself
				-- put it on the right side of con_main
			create con_game
--			con_game.set_background_pixmap (pix_background_sepia)
			con_main.extend_with_position_and_size (con_game, 200, 0, 780, 780)

				-- create a frame container for the player settings
			--create con_players.make_with_text ("Player Settings")
			--con_main.extend_with_position_and_size (con_players, 10, 20, 180, 150)

				-- create a frame container for the network settings
			--create con_network.make_with_text ("Network Settings")
			--con_main.extend_with_position_and_size (con_network, 10, 220, 180, 150)

				-- create buttons for starting the game and quitting it
			create btn_start.make_with_text ("Start Game")
			btn_start.select_actions.extend (agent initialize_game_board (false))
			con_main.extend_with_position_and_size (btn_start, 10, 600, 180, 50)

			create btn_quit.make_with_text ("Quit Game")
			btn_quit.select_actions.extend (agent request_close_window)
			con_main.extend_with_position_and_size (btn_quit, 10, 690, 180, 50)
		end

	initialize_game_board(a_wait: BOOLEAN)
			-- sets the board ready for a new game
			-- if a_wait is true, then a the "wait" text is show; otherwise "your move" text is shown
		do
		end

	initialize_player_and_opponent
		do
		end

feature -- Status Settings

	show
		do
			Precursor
		end

feature -- Event Handling

	select_title_actions: ACTION_SEQUENCE[TUPLE[IG_TILE]]
		-- The list of subscribers notified when the user selects a tile of the tiles array.

	deselect_tile_actions: ACTION_SEQUENCE[TUPLE[IG_TILE]]
		-- The list of subscribers notified when the user deselects a tile of the tiles array.

	rotate_tile_actions: ACTION_SEQUENCE[TUPLE[IG_TILE]]
		-- The list of subscribers notified when the user rotates a tile of the tiles array

	lay_tile_actions: ACTION_SEQUENCE[TUPLE[IG_TILE]]
		-- The list of subscribers notified when the user wants to lay a tile on the game board.

	swap_tiles_actions: ACTION_SEQUENCE[TUPLE[]]
		-- The list of subscribers notified when the user wants to swap the tiles array.

	skip_ingenious_move_actions: ACTION_SEQUENCE[TUPLE[]]
		-- The list of subscribers notified when the user skips the bonus move.

feature {NONE} -- Implementation, Close event

	request_close_window
			-- The user wants to close the window
		local
			question_dialog: EV_CONFIRMATION_DIALOG
		do
			create question_dialog.make_with_text (Quit_dialog_message)
			question_dialog.show_modal_to_window (Current)

			if question_dialog.selected_button.is_equal ((create {EV_DIALOG_CONSTANTS}).ev_ok) then
					-- Restore the main UI which is currently minimized
				if attached main_ui then
					main_ui.restore
					main_ui.remove_reference_to_game (Current)
				end
					-- Destroy the window
				-- TODO: tell the logic to disconnect
				destroy
			end
		end


feature {NONE}	-- Attributes

	main_ui: MAIN_WINDOW
		-- the main ui, i.e. the game selector
		-- we need this reference to bring back (i.e. maximize) the game selector once the user quits tictactoe

	con_main: EV_FIXED
			-- the main, fixed-size container to which all other widgets are added
	con_game: EV_FIXED
			-- the container which holds the background
	con_game_tile: ARRAY2 [TTT_TILE]
			-- 2dim-array for the tiles of the game (3x3)
	con_game_text: EV_FIXED
			-- container for the area where the show the game's status messages

	con_players: EV_FRAME
			-- the container which holds the widgets for selecting player settings
	con_network: EV_FRAME
			-- the container which holds the widgets for selecting network settings

	btn_start: EV_BUTTON
			-- button to start a game
	btn_quit: EV_BUTTON
			-- button to quit the game

invariant
	-- class invariant

end
