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

	IG_CONSTANTS
		export
			{NONE} all
		undefine
			default_create, copy
		end

create
	make

feature {NONE}	-- Initialization

	make (a_main_ui_window: MAIN_WINDOW; a_logic: IG_LOGIC)
			-- Initialize the game window
			-- `a_main_window' is restored after the game window is closed
		do
			set_logic (a_logic)
				-- Store the main_ui object. We want to restore it later on (it's currently minimized).
			main_ui := a_main_ui_window
				-- Create the Ingenious window.
			make_with_title (window_title + " - " + a_logic.user_player.name)
		end

	initialize
			-- Build the window
		local
			l_current_turn_label, l_next_turn_label: EV_LABEL
			l_scoreboard_view: IG_SCOREBOARD_VIEW
			l_scoreboards: EV_VERTICAL_BOX
			l_fixed: EV_FIXED
		do
			Precursor {EV_TITLED_WINDOW}
			close_request_actions.extend (agent request_close_window)

				-- Create action sequences
			create lay_tile_actions
			create swap_tiles_actions
			create skip_ingenious_move_actions

				-- Create the main view container
			create main_view
			put (main_view)

				-- Create the help button
			create help_button.make_with_text_and_action (show_help_text, agent show_help_window)
			main_view.extend_with_position_and_size (help_button, 14, 14, 90, 24)

				-- Create the quit button
			create quit_button.make_with_text_and_action (quit_button_text, agent request_close_window)
			main_view.extend_with_position_and_size (quit_button, 696, 14, 90, 24)

				-- Create the game board and tiles views
			initialize_gameboard_view
			create l_fixed
			l_fixed.extend_with_position_and_size (gameboard_area, 0, 0, gameboard_width, gameboard_height)
			main_view.extend_with_position_and_size (l_fixed, 14, 45, gameboard_width, gameboard_height)

				-- Create the scoreboard view
			create scoreboard_view.make_with_text ("Scoreboard")
			main_view.extend_with_position_and_size (scoreboard_view, 528, 40, 258, 505)
			create l_scoreboards

				-- Add the scoreboards for each player to the scoreboard view
			create scoreboards.make
			across game_logic.players as l_cursor loop
				create l_scoreboard_view.make_with_user (l_cursor.item)
				l_scoreboards.extend (l_scoreboard_view)
				scoreboards.extend (l_scoreboard_view)
			end

			scoreboard_view.extend (l_scoreboards)

				-- Create swap tiles button
			create swap_tiles_button.make_with_text_and_action (swap_tiles_text, agent on_click_swap_tiles)
			main_view.extend_with_position_and_size (swap_tiles_button, 528, 554, 60, 60)

				-- Create current turn description and label
			create l_current_turn_label.make_with_text (current_turn_text)
			l_current_turn_label.align_text_right
			main_view.extend_with_position_and_size (l_current_turn_label, 602, 564, 60, 24)

			create current_turn_label.make_with_text ("")
			current_turn_label.align_text_left
			main_view.extend_with_position_and_size (current_turn_label, 666, 564, 120, 24)

				-- Create next player turn description and label
			create l_next_turn_label.make_with_text (next_turn_text)
			l_next_turn_label.align_text_right
			main_view.extend_with_position_and_size (l_next_turn_label, 602, 583, 60, 24)

			create next_turn_label.make_with_text ("")
			next_turn_label.align_text_left
			main_view.extend_with_position_and_size (next_turn_label, 666, 583, 120, 24)
		end

	initialize_gameboard_view
		local
			l_gameview_pixmap: EV_PIXMAP
			l_gameview_picture: EV_MODEL_PICTURE
		do
			create gameboard_area
			create gameboard_world
			create gameboard_projector.make (gameboard_world, gameboard_area)
			gameboard_area.key_release_actions.extend (agent rotate_selected_tile)
			gameboard_area.key_release_actions.extend (agent lay_selected_tile)

				-- Add the background to the world
			create l_gameview_pixmap
			l_gameview_pixmap.set_with_named_file (file_system.pathname_to_string (gameview_background_path))
			create l_gameview_picture.make_with_pixmap (l_gameview_pixmap)
			gameboard_world.extend (l_gameview_picture)

				-- Add the fixed hexes on the gameboard
			create gameboard_hexes
			for_all_hexes (agent add_hex)
			gameboard_world.extend (gameboard_hexes)
			gameboard_hexes.set_point_position (70, 60)

				-- Add the tiles on the tiles rack
			create tiles_view.make_with_logic (game_logic)
			gameboard_world.extend (tiles_view)
			tiles_view.set_point_position (10, 505)
		ensure
			gameboard_area_not_void: gameboard_area /= Void
		end

feature -- Status Settings

	set_logic (a_logic: IG_LOGIC)
			-- Assign the logic component `a_logic' to the main window. The logic component must be set
			-- before showing the window, so that it can draw the game state accordingly.
		require
			logic_not_void: a_logic /= Void
		do
			game_logic := a_logic
		ensure
			logic_set: game_logic = a_logic
		end

	show
		do
			disable_user_resize
			set_size (800, 630)
			Precursor
			set_position (width // 2, 100)
			refresh_turns
		end

feature -- Status Update

	refresh_game_view
			-- Refresh all the components of the game view.
		do
				-- Update the game board
			update_hexes
				-- Update the tiles view
			tiles_view.update
				-- Update the scoreboards
			across scoreboards as l_cursor loop
				l_cursor.item.update
			end
				-- Refresh the drawing area
			gameboard_projector.project
			refresh_turns
		end

	refresh_turns
			-- Update the turns labels.
		do
			if attached game_logic.current_player as l_player then
				current_turn_label.set_text (l_player.name)
				current_turn_label.refresh_now
			end
			if attached game_logic.next_player as l_player then
				next_turn_label.set_text (l_player.name)
				next_turn_label.refresh_now
			end
		end

	show_game_cancelled_dialog
			-- Inform the user player that the game was cancelled and
			-- return to the main window.
		local
			l_dialog: EV_INFORMATION_DIALOG
		do
			create l_dialog.make_with_text ("The game was cancelled.")
			l_dialog.default_push_button.select_actions.extend (agent close_window)
			l_dialog.set_title ("Ingenious - Game Cancelled")
			l_dialog.show_modal_to_window (Current)
		end

	show_game_over_dialog (a_player: IG_PLAYER)
			-- Inform the user player that the game ended and the winner is `a_player'.
			-- Close the game window and go back to the main window.
		require
			game_ended: game_logic.is_game_over
			player_not_void: a_player /= Void and then a_player.name /= Void
		local
			l_dialog: EV_INFORMATION_DIALOG
		do
			create l_dialog.make_with_text ("Game is over! The winner is " + a_player.name)
			l_dialog.default_push_button.select_actions.extend (agent close_window)
			l_dialog.set_title ("Ingenious - Game End")
			l_dialog.show_modal_to_window (Current)
		end

	show_bonus_move_dialog
			-- Inform the user about a bonus move.
			-- The user may decide to skip it.
		local
			l_dialog: EV_CONFIRMATION_DIALOG
		do
			create l_dialog.make_with_text ("Congratulations, you just earned a bonus move!%NWould you like to use it?")
			l_dialog.set_title ("Ingenious Move")
			l_dialog.show_modal_to_window (Current)
			if l_dialog.selected_button.is_equal ((create {EV_DIALOG_CONSTANTS}).ev_cancel) then
				skip_ingenious_move_actions.call ([])
			end
		end

feature -- Event Handling

	select_title_actions: ACTION_SEQUENCE[TUPLE[IG_TILE]]
		-- The list of subscribers notified when the user selects a tile of the tiles array.

	deselect_tile_actions: ACTION_SEQUENCE[TUPLE[IG_TILE]]
		-- The list of subscribers notified when the user deselects a tile of the tiles array.

	rotate_tile_actions: ACTION_SEQUENCE[TUPLE[IG_TILE]]
		-- The list of subscribers notified when the user rotates a tile of the tiles array

	lay_tile_actions: ACTION_SEQUENCE[TUPLE[IG_MOVE]]
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
				game_logic.abort_game
				close_window
			end
		end

	close_window
			-- Close the game window and restore the main one.
		do
			if attached main_ui then
				main_ui.restore
				main_ui.remove_reference_to_game (Current)
			end
			destroy
		end

	show_help_window
			-- Show a window with the rules and keyboard shortcuts for the game.
		local
			l_help_window: IG_HELP_WINDOW
		do
			create l_help_window
			l_help_window.show
		end

	on_click_swap_tiles
		local
			l_confirmation_dialog: EV_CONFIRMATION_DIALOG
		do
			if game_logic.can_swap_tiles (game_logic.user_player) then
					-- Ask confirmation for swapping tiles
				create l_confirmation_dialog.make_with_text (swap_tiles_dialog_message)
				l_confirmation_dialog.show_modal_to_window (Current)

				if l_confirmation_dialog.selected_button.is_equal ((create {EV_DIALOG_CONSTANTS}).ev_ok) then
					swap_tiles_actions.call ([])
				end
			else
				print ("Cannot swap tiles%N")
			end
		end

feature {NONE} -- Gameboard Implementation

	for_all_hexes (a_action: PROCEDURE[ANY, TUPLE[INTEGER, INTEGER, IG_HEX]])
		require
			action_not_void: a_action /= Void
		local
			i, j: INTEGER
			l_gameboard: ARRAY2[IG_HEX]
		do
			l_gameboard := game_logic.gameboard.gameboard
			from i := 1 until i > l_gameboard.height loop
				from j := 1 until j > l_gameboard.width loop
					if l_gameboard[i,j] /= Void then
						a_action.call ([i, j, l_gameboard[i, j]])
					end
					j := j + 1
				end
				i := i + 1
			end
		end

	add_hex (a_column, a_row: INTEGER; a_hex: IG_HEX)
		require
			hex_not_void: a_hex /= Void
		local
			l_x, l_y: INTEGER
			l_picture: EV_MODEL_PICTURE
		do
				-- The hex is 32 pixels wide, but two hexes cross at exactly 23 pixels
			l_x := (a_column - 1)*23

				-- The hex is 28 pixels tall.
			l_y := (a_row - 1)*27

				-- Odd columns should show the hex vertically displaced
				-- (32/2) = 16 pixles is the vertical displacement
			if a_column \\ 2 = 0 then
				l_y := l_y - 14
			end
			create l_picture.make_with_pixmap (hex_pixmap_with_color (a_hex.color))
			gameboard_hexes.extend (l_picture)
			l_picture.set_point_position (l_x, l_y)
		end

	update_hexes
		local
			l_pos: like position_from_coordinates
			l_hex: IG_HEX
		do
			across gameboard_hexes as l_cursor loop
				check attached {EV_MODEL_PICTURE} l_cursor.item as l_picture then
					l_pos := position_from_coordinates (l_picture.point_x, l_picture.point_y)
					l_hex := game_logic.gameboard.gameboard[l_pos.column, l_pos.row]
					l_picture.set_pixmap (hex_pixmap_with_color (l_hex.color))
				end
			end
		end

	rotate_selected_tile (a_key: EV_KEY)
			-- Rotate the selected tile (if any) when the space bar key is pressed.
		do
			if a_key.code = {EV_KEY_CONSTANTS}.key_space and attached tiles_view.selected_tile as l_tile then
				l_tile.rotate_hexes
					-- Immediately reflect the changes on the drawing area
				gameboard_projector.project
			end
		end

	lay_selected_tile (a_key: EV_KEY)
			-- Lay the selected tile (if any) when the enter key is pressed.
		local
			l_move: IG_MOVE
			l_pos: like position_from_coordinates
			l_is_lay_tile_key: BOOLEAN
		do
				-- Is key is one of `v', `b', `n'?
			l_is_lay_tile_key := a_key.code = {EV_KEY_CONSTANTS}.key_v or a_key.code = {EV_KEY_CONSTANTS}.key_b or a_key.code = {EV_KEY_CONSTANTS}.key_n
			if l_is_lay_tile_key and attached tiles_view.selected_tile as l_tile_view then
					-- Compute the position on the board from the mouse coordinates
				l_pos := position_from_coordinates (l_tile_view.point_x, l_tile_view.point_y)

					-- If the position is valid, forward the move
				if l_pos.row > 0 and l_pos.column > 0 then
					create l_move.make_with_tile (l_tile_view.tile)
					l_move.set_position (l_pos.column, l_pos.row)
					l_move.set_rotation (l_tile_view.direction)
						-- Notify subscribers of the move.
						-- Note that the move might not be valid. In this case,
						-- the event will have no effects.
					lay_tile_actions.call ([l_move])
				end
			end
		end

	position_from_coordinates (a_x, a_y: INTEGER): TUPLE[row, column: INTEGER]
			-- Compute the position of the hex on the board given the coordinates.
		local
			l_max_size: INTEGER
			l_x_offset, l_y_offset: INTEGER
		do
				-- Decode the position using the computations in `add_hex'
			l_x_offset := 70
			l_y_offset := 60
			create Result
			Result.column := ((a_x - l_x_offset) // 23) + 1
			if Result.column \\ 2 = 0 then
				Result.row := ((a_y - l_y_offset + 14) // 27) + 1
			else
				Result.row := ((a_y - l_y_offset) // 27) + 1
			end
			l_max_size := game_logic.gameboard.gameboard.width
				-- If outside the board, set the position to (0,0)
			if Result.row <= 0 or Result.row > l_max_size or Result.column <= 0 or Result.column > l_max_size then
				Result.row := 0
				Result.column := 0
			end
		end

feature {NONE}	-- Attributes

	main_ui: MAIN_WINDOW
			-- The main ui, i.e. the game selector.
			-- We need this reference to bring back (i.e. maximize) the game selector once the user quits Ingenious.

	game_logic: IG_LOGIC
			-- The complete state of the game.

	main_view: EV_FIXED
			-- The view to which all widgets are added.

	help_button: EV_BUTTON
			-- The `Help' button for displaying the rules and keyboard shortcuts.

	swap_tiles_button: EV_BUTTON
			-- The button to swap the tiles.

	quit_button: EV_BUTTON
			-- The button to quit the game.

	gameboard_projector: EV_MODEL_DRAWING_AREA_PROJECTOR
			-- The projector that maps the models to the drawing area.

	gameboard_world: EV_MODEL_WORLD
			-- The group of hexes and tiles of the whole game.

	gameboard_hexes: EV_MODEL_GROUP
			-- The group of hexes that make up the game board.

	gameboard_area: EV_DRAWING_AREA
			-- The view showing the game board and the tiles placed on it.

	scoreboard_view: EV_FRAME
			-- The view on the right side of the window containing the scoreboards.

	scoreboards: LINKED_LIST[IG_SCOREBOARD_VIEW]
			-- The list of scoreboard views.

	tiles_view: IG_TILES_VIEW
			-- The view showing the user's tiles on the bottom part of the window.

	current_turn_label: EV_LABEL
			-- The label indicating the current player whose turn is.

	next_turn_label: EV_LABEL
			-- The label indicating the next player of the next turn.

invariant
	-- class invariant

end
