note
	description: "The main window of the tictactoe game."
	author: "Christian Estler"
	date: "02.11.2012"
	revision: "1.1"

class
	TTT_MAIN_WINDOW

inherit
	EV_TITLED_WINDOW
		redefine
			initialize
		end

	TTT_GUI_CONSTANTS
		export
			{NONE} all
		undefine
			default_create, copy
		end

create
	make

feature {NONE}	-- Initialization

	make(a_main_ui_window: MAIN_WINDOW)
			-- Creation procedure
		do
				-- Store the main_ui object. We want to restore it later on (it's currently minimized).
			main_ui := a_main_ui_window
				-- Create the TicTacToe window.
			make_with_title (window_title)
		end

	initialize
			-- Build the window
		do
			Precursor {EV_TITLED_WINDOW}
			close_request_actions.extend (agent request_close_window)

				-- create the main container and put it on the window
			create con_main
			put(con_main)

				-- create the main container for the game itself
				-- put it on the right side of con_main
			create con_game
			con_game.set_background_pixmap (pix_background_sepia)
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
		local
			l_row, l_col: INTEGER
			l_tile: TTT_TILE
		do
				-- create a player and its opponent
			initialize_player_and_opponent

				-- set the background image
			con_game.set_background_pixmap (pix_background)

				-- create the tiles and store them in the con_game_tiles 2d array
			create con_game_tile.make_filled (Void, 3, 3)
			from
				l_row := 1
			until
				l_row >= 4
			loop
					-- inner loop for the columns
				from
					l_col := 1
				until
					l_col >= 4
				loop
					create l_tile.make (l_row, l_col, con_game, user)
					l_tile.set_blank
						-- store the tile the 2d array
					con_game_tile.put (l_tile, l_row, l_col)

					l_col := l_col + 1
				end
				l_row := l_row + 1
			end

				-- create a container for the text area
			create con_game_text
			con_game.extend_with_position_and_size (con_game_text, 0, 690, 780, 90)

				-- decide which text to set to the text area
			if a_wait then
				con_game_text.set_background_pixmap (pix_wait)
			else
				con_game_text.set_background_pixmap (pix_move)
			end

		ensure
			background_is_set: con_game.background_pixmap.is_equal (pix_background)
			wait_text_is_set: a_wait implies con_game_text.background_pixmap.is_equal (pix_wait)
			wait_text_is_set: (not a_wait) implies con_game_text.background_pixmap.is_equal (pix_move)
		end

	initialize_player_and_opponent
			-- TODO: this need modification for a network player
		do
				-- the user is a normaler player
			user := create {TTT_PLAYER_USER}.make(Current)

				-- the opponent is an AI player
			opponent := create {TTT_PLAYER_AI}.make_with_opponent(user)

				-- we need to inform the user about its opponent
			user.set_opponent (opponent)

		end


feature {TTT_PLAYER} -- Access for the player to update the view

	display_user_move (a_row, a_column: INTEGER)
			-- changes the tile at "a_row" and "a_column" to show the user symbol (fry)
		require
			args_are_valid: (1 <= a_row and a_row <= 3) and (1 <= a_column and a_column <= 3)
		do
			con_game_tile.item (a_row, a_column).set_fry

		end

	display_opponent_move (a_row, a_column: INTEGER)
			-- changes the tile at "a_row" and "a_column" to show the opponent symbol (bender)
		require
			args_are_valid: (1 <= a_row and a_row <= 3) and (1 <= a_column and a_column <= 3)
		do
			con_game_tile.item (a_row, a_column).set_bender
		end

	display_won
			-- displays that the user has won and prohibits further changes to the tiles
		do
			con_game_text.set_background_pixmap (pix_win)
				-- make sure tiles can no longer be moved
			set_all_tiles_blocked
		end

	display_lose
		do
			con_game_text.set_background_pixmap (pix_lose)
				-- make sure tiles can no longer be changed
			set_all_tiles_blocked
		end

	display_tie
		do
			con_game_text.set_background_pixmap (pix_tie)
				-- make sure tiles can no longer be changed
			set_all_tiles_blocked
		end

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
				destroy
			end
		end

	set_all_tiles_blocked
			-- blocks all tiles
		do
			across con_game_tile as t loop
				t.item.set_blocked
			end
		end


feature {NONE}	-- Attributes

	main_ui: MAIN_WINDOW
		-- the main ui, i.e. the game selector
		-- we need this reference to bring back (i.e. maximize) the game selector once the user quits tictactoe

	user:	TTT_PLAYER
		-- the player who sees the current window
	opponent: TTT_PLAYER
		-- the opponent of the user-player

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

		-- pixmaps
	pix_background_sepia: EV_PIXMAP
			-- returns the background sepia as a pixmap
		once
			create Result

			Result.set_with_named_file (file_system.pathname_to_string (Img_background_sepia))
		end

	pix_background: EV_PIXMAP
			-- returns the background for the active game
		once
			create Result
			Result.set_with_named_file (file_system.pathname_to_string (Img_background))
		end

	pix_wait: EV_PIXMAP
			-- returns the "wait" text picture
		once
			create Result
			Result.set_with_named_file (file_system.pathname_to_string (Img_wait))
		end

	pix_move: EV_PIXMAP
			-- returns the "your move" picture
		once
			create Result
			Result.set_with_named_file (file_system.pathname_to_string (Img_move))
		end

	pix_win: EV_PIXMAP
			-- returns the "you win" picture
		once
			create Result
			Result.set_with_named_file (file_system.pathname_to_string (Img_win))
		end

	pix_lose: EV_PIXMAP
			-- returns the "you lose" picture
		once
			create Result
			Result.set_with_named_file (file_system.pathname_to_string (Img_lose))
		end

	pix_tie: EV_PIXMAP
			-- returns the "it's a tie" picture
		once
			create Result
			Result.set_with_named_file (file_system.pathname_to_string (Img_tie))
		end

invariant
	-- class invariant
	game_area_has_background_image: attached con_game.background_pixmap

end
