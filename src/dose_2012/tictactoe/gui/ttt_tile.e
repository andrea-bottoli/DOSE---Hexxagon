note
	description: "A tile of the TicTacToe board."
	author: "Christian Estler"
	date: "01.10.2011"
	revision: "1.0"

class
	TTT_TILE

inherit
	EV_FIXED
		redefine
			height, width
		end

	TTT_GUI_CONSTANTS
	export {NONE} all
	undefine
		default_create, copy, is_equal
	end

create
	make


feature {NONE} -- Initialization

	make (a_row, a_column: INTEGER; a_parent_container: EV_FIXED; a_player: TTT_PLAYER)
			-- creates a new tile for the position "a_row", "a_column"
		require
			row_is_valid: 1 <= a_row and a_row <= 3
			col_is_valid: 1 <= a_column and a_column <= 3
			player_not_void: a_player /= Void
		do
			default_create

			row := a_row
			column := a_column
			player := a_player

			blocked := false
				-- tiles are by default not blocked

			initialize_pixmaps

				-- determine the x_coord and y_coord values
			x_coord := 100 + (column - 1) * 190 + (column - 1) * 10
			y_coord := 90 + (row - 1) * 190 + (row - 1) * 10

				-- events for mouse over
			pointer_enter_actions.extend (agent mouse_enter_action)
			pointer_leave_actions.extend (agent mouse_leave_action)

				-- events for mouse click
			pointer_button_release_actions.extend (agent mouse_button_action (?,?,?,?,?,?,?,?))

				-- by default, we assign the blank pixmap to a new tile
			set_blank

				-- put the tile in the parent container
			put_in_parent_container (a_parent_container)

		ensure
		--	tile_pixmaps_initialized: pixmaps_are_initialized = true
			tile_is_blank: blank = true
			player_initialized: player = a_player
		end

	mouse_enter_action
			-- the pixmap shall be set to highlight only if the tile is currently "blank"
		do
			if not blocked and blank then
				set_highlight
			end
		end

	mouse_leave_action
			-- the pixmap shall be set to blank only if the tile is currently "highlight"
		do
			if not blocked and highlight then
				set_blank
			end
		end

	mouse_button_action (a, b, c: INTEGER_32; d, e, f: REAL_64; g, h: INTEGER_32)
			-- inform the controller (i.e. the player object) that the tile was clicked
		do
				-- we will only inform the player about the click if the tile is not occupied by a fry or bender
			if not blocked and (blank or highlight) then
				player.process_user_move (row, column)
			end
		end


feature -- Status report

	blank: BOOLEAN
		-- is "true" if the tile blank

	highlight: BOOLEAN
		-- is true if the tile is highlighted

	bender: BOOLEAN
		-- is ture if the tiel is bender

	fry: BOOLEAN
		-- is true if the tile is fry

	blocked: BOOLEAN
		-- is true if the tile is set to be blocked

feature -- Status setting

	set_bender
			-- set the tile to show "bender"
		do
			set_pixmap_to_bender
			bender := true
			blank := false
			fry := false
			highlight := false
		ensure
			set_bender: bender = true
		end

	set_blank
			-- set the tile to show "blank"
		do
			set_pixmap_to_blank
			bender := false
			blank := true
			fry := false
			highlight := false
		ensure
			set_blank: blank = true
		end

	set_fry
			-- set the tile to show "fry"
		do
			set_pixmap_to_fry
			bender := false
			blank := false
			fry := true
			highlight := false
		ensure
			set_fry: fry = true
		end

	set_highlight
			-- set the tile to show "highlight"
		do
			set_pixmap_to_highlight
			bender := false
			blank := false
			fry := false
			highlight := true
		ensure
			set_highlight: highlight = true
		end

	set_blocked
			-- set the tile to be blocked
		do
			blocked := True
		end


feature -- Attributes

	row: INTEGER
		-- the row value of the tile

	column: INTEGER
		-- the column value of the tile

	x_coord: INTEGER
		-- the x coordinate value of the tile

	y_coord: INTEGER
		-- the y coordinate value of the tile

	Height: INTEGER = 190

	Width: INTEGER = 190

	player: TTT_PLAYER
		-- the player (controller) for this view


		-- the different pixmaps
	pixmap_fry: EV_PIXMAP
	pixmap_bender: EV_PIXMAP
	pixmap_blank: EV_PIXMAP
	pixmap_highlight: EV_PIXMAP

		-- "true" if the the pixmaps have been set
	pixmaps_are_initialized: BOOLEAN


feature {NONE}	-- Implemenation

	put_in_parent_container(a_widget: EV_FIXED)
			-- put the Current tile at the right position in a container
		do
			a_widget.extend_with_position_and_size (Current, x_coord, y_coord, Width, Height)
		end

feature {NONE}	-- Implementation for the pixmaps

	set_pixmap_to_fry
		do
			set_background_pixmap (pixmap_fry)
		end

	set_pixmap_to_bender
		do
			set_background_pixmap (pixmap_bender)
		end

	set_pixmap_to_blank
		do
			set_background_pixmap (pixmap_blank)
		end

	set_pixmap_to_highlight
		do
			set_background_pixmap (pixmap_highlight)
		end

	initialize_pixmaps
			-- sets the pixmaps for the tile
		local
			l_pixmap: EV_PIXMAP
		once ("Object")
				-- set the l_pixmap to initialize "fry"
			create l_pixmap
			l_pixmap.set_with_named_file (file_system.pathname_to_string (Img_tile_prefix) + row.out + "_" + column.out + Img_fry_postfix)
			pixmap_fry := l_pixmap

				-- set the l_pixmap to initialize "bender"
			create l_pixmap
			l_pixmap.set_with_named_file (file_system.pathname_to_string (Img_tile_prefix) + row.out + "_" + column.out + Img_bender_postfix)
			pixmap_bender := l_pixmap

				-- set the l_pixmap to initialize "blank"
			create l_pixmap
			l_pixmap.set_with_named_file (file_system.pathname_to_string (Img_tile_prefix) + row.out + "_" + column.out + Img_blank_postfix)
			pixmap_blank := l_pixmap

				-- set the l_pixmap to initilalize "highlight"
			create l_pixmap
			l_pixmap.set_with_named_file (file_system.pathname_to_string (Img_tile_prefix) + row.out + "_" + column.out + Img_highlight_postfix)
			pixmap_highlight := l_pixmap

			pixmaps_are_initialized := true

		ensure
			pixmaps_initialized: pixmaps_are_initialized = true
			pixmaps_not_void: pixmap_fry /= Void and pixmap_bender /= Void and pixmap_blank /= Void and pixmap_highlight /= Void
		end

invariant
	row_is_valid_value: 1 <= row and row <= 3
	column_is_valid_value: 1 <= column and column <= 3
	x_position_is_valid: 0 <= x_coord and x_coord <= 780
	y_position_is_valid: 0 <= y_coord and y_coord <= 780
	only_one_state: bender xor fry xor blank xor highlight
end
