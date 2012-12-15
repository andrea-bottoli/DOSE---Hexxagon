note
	description: ""
	author: "Mármol Leonardo, Mattana Diego, Pereyra Federico, Varela Manuel"
	date: "05/08/2012"
	revision: ""

class
	CU_BUTTON

inherit

	EV_BUTTON

	EXECUTION_ENVIRONMENT
		undefine
			default_create,
			copy
		end

create
	default_create, make, make_with_controller

feature {ANY} -- Initialization

	make (coord_row, coord_col: INTEGER)
			-- Initialize the cell whit default values
		require
			valid_row: coord_row > 0
			valid_col: coord_col > 0
--		local
--			path_workspace: STRING --Contains the path of the working directory
		do
			default_create
--			create flag.default_create
--				--Create path of the project
--			create path_workspace.make_from_string ("C:\Users\JONA\Desktop\mines\trunk")
--				--Load image flag
--			flag.set_with_named_file (path_workspace + "\gui\image\flag.png")
--			flag.set_minimum_size (10, 10)
--				--Load image mine
--			create mine_image.default_create
--			mine_image.set_with_named_file (path_workspace + "\gui\image\mine.png")
--			mine_image.set_minimum_size (10, 10)
--				--Load image mine detonated
--			create mine_detonated_image.default_create
--			mine_detonated_image.set_with_named_file (path_workspace + "\gui\image\exploted_mine.png")
--			mine_detonated_image.set_minimum_size (10, 10)

				--Initialize colors
--			initialize_colors
			row := coord_row
			col := coord_col
		ensure
			valid_row: coord_row = row
			valid_col: coord_col = col
		end

	make_with_controller (coord_row, coord_col: INTEGER)--; ms_controller: MINESWEEPER_CONTROLLER)
			-- Initialize the cell whit default values. It adds a parameter, which is the controller
		require
			--ms_controller /= Void
		do
			make (coord_row, coord_col)
			--controller := ms_controller
		ensure
			valid_row: coord_row = row
			valid_col: coord_col = col
			--valid_assign_controller: controller = ms_controller
		end

feature -- Access

	row: INTEGER
			-- Value of row in a board

	x: INTEGER
		obsolete
			"X is obsolete. Use row instead."
		do
			Result := row
		end

	col: INTEGER
			-- Value of column in a board

	y: INTEGER
		obsolete
			"Y is obsolete. Use col instead."
		do
			Result := col
		end

feature {EQA_TEST_SET}

	flag: EV_PIXMAP
			-- Pixmap for mark image

	mine_image: EV_PIXMAP
			-- Pixmap for mine image

	mine_detonated_image: EV_PIXMAP
			-- Pixmap for mine detonated image

	color_table: ARRAY [EV_COLOR]
			-- Color for numbers

feature -- Status Setting

--	mark
--			-- Mark the indicated cell
--			-- Put flag image in the current button
--		do
--			Current.set_pixmap (flag)
--		ensure
--			cell_marked: Current.pixmap.is_equal (flag)
--		end

--	unmark
--			-- Unmark the indicated cell
--			-- Remove flag image in the current button
--		require
--			cell_marked: Current.pixmap /= Void
--		do
--			Current.remove_pixmap
--		ensure
--			cell_marked: Current.pixmap = Void
--		end

--	mine_discovered
--			-- Put mine image in the current button.
--		do
--			Current.set_pixmap (mine_image)
--		ensure
--			valid_mine_descovered: Current.pixmap.is_equal (mine_image)
--		end

--	mine_pressed
--			-- Put mine image in the current button
--		do
--			Current.set_pixmap (mine_image)
--		ensure
--			valid_mine_pressed: Current.pixmap.is_equal (mine_image)
--		end

--	mine_detoned
--			-- Put mine detonated image in the current button
--		do
--			Current.set_pixmap (mine_detonated_image)
--		ensure
--			valid_mine_detoned: Current.pixmap.is_equal (mine_detonated_image)
--		end

--	open (cell_value: INTEGER)
--			-- Print `cell_value' in the button
--		require
--			valid_cell_value: cell_value >= 0 and cell_value <= 8
--		do
--			if cell_value/=0 then
--				Current.set_foreground_color (color_table [cell_value])
--				Current.set_text (cell_value.out)
--			else
--				Current.disable_sensitive
--			end
--		ensure
--			valid_opened_cell_value: (cell_value >= 1 and cell_value<=8) implies (Current.foreground_color.is_equal (color_table [cell_value]))
--		end

--	initialize_colors
--			-- Colors for numbers in [1,8]
--		local
--			color: EV_COLOR
--		do
--			create color_table.make_filled (Void, 1, 8)
--			create color.make_with_8_bit_rgb (0, 0, 255) --Blue color
--			color_table [1] := color
--			create color.make_with_8_bit_rgb (0, 255, 0) --Green Color
--			color_table [2] := color
--			create color.make_with_8_bit_rgb (255, 0, 0) --Red color
--			color_table [3] := color
--			create color.make_with_8_bit_rgb (75, 150, 150) --Dark Green color
--			color_table [4] := color
--			create color.make_with_8_bit_rgb (112, 75, 149) --Violet color
--			color_table [5] := color
--			create color.make_with_8_bit_rgb (255, 204, 51) --Yellow color
--			color_table [6] := color
--			create color.make_with_8_bit_rgb (184, 138, 0) --Brown color
--			color_table [7] := color
--			create color.make_with_8_bit_rgb (51, 204, 255) --Celestial color
--			color_table [8] := color
--		ensure
--			valid_color_table_pos: (color_table /= Void)
--		end

	set_row (a: INTEGER)
			--Set attribute row
		require
			valid_row: a > 0
		do
			row := a
		ensure
			valid_row: row = a
		end

	set_x (a: INTEGER)
		obsolete
			"set_x is obsolete. Use set_row instead."
		do
			set_row (a)
		end

	set_col (a: INTEGER)
			--Set attribute col
		require
			valid_col: a > 0
		do
			col := a
		ensure
			valid_col: col = a
		end

	set_y (a: INTEGER)
		obsolete
			"set_y is obsolete. Use set_col instead."
		do
			set_col (a)
		end

feature-- {MINESWEEPER_WINDOW, EQA_TEST_SET}

	on_click (z_x, z_y: INTEGER; z_button: INTEGER; z_x_tilt, z_y_tilt: DOUBLE; z_pressure: DOUBLE; z_screen_x, z_screen_y: INTEGER)
			-- Gives information about which button was pressed
		do
--			if z_button = 1 then
--				controller.on_open_cell (row, col)
--			end
--			if z_button = 3 then
--				controller.on_toggle_flag (row, col)
--			end
		end

--	controller: MINESWEEPER_CONTROLLER

invariant
--	valid_row: row > 0
--	valid_col: col > 0
--	load_colors: color_table /= Void
--	load_flag_image: flag /= Void
--	load_mine_image: mine_image /= Void
--	load_mine_detonated_image: mine_detonated_image /=Void

end
