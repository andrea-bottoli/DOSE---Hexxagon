note
	description: "Summary description for {G2_GUI_CELL}."
	author: "Grupo 2 , Rio Cuarto 8"
	date: " 2012/12/12  "
	revision: "1.0.1"

class
	G2_GUI_CELL

inherit

	EV_BUTTON

	EXECUTION_ENVIRONMENT
		undefine
			default_create,
			copy
		end

create
	make_gui_cell, make_gui_cell_1

feature {ANY}
	--initialize

	make_gui_cell (row_1, col_1: INTEGER)
		require
			valid_row: valid_index (row_1)
			valid_col: valid_index (col_1)
		do
			default_create
			row := row_1
			col := col_1
			create card.make_default
			create element.make_default
			set_pixmap (card.pixmap)
			set_minimum_size (129, 158)
		end

	make_gui_cell_1 (row_1, col_1: INTEGER; card_1: G2_GUI_CARD; element_1: STRING)
		require
			valid_row: valid_index (row_1)
			valid_col: valid_index (col_1)
			card_not_void: card_1 /= Void
		do
			default_create
			row := row_1
			col := col_1
			card := card_1
			create element.make_gui_element (element_1)
			set_pixmap (card.pixmap)
			set_minimum_size (129, 158)
		ensure
			row_is_equal: row = row_1
			col_is_equal: col = col_1
		end

feature -- access

	set_cell (card_1: G2_GUI_CARD; element_1: STRING)
		require
			card_not_void: card_1 /= Void
		do
			element.set_element (element_1)
			card := card_1
			set_pixmap (card_1.image)
		end

	set_occupied (ocupp: BOOLEAN)
		do
			is_occupied := ocupp
		end

feature --miscellanies

	valid_index (index: INTEGER): BOOLEAN
		do
			Result := 0 <= index and index <= 3
		end

	set_board_game (board_1: G2_GUI_BOARD_GAME)
		do
			card.set_board_game (board_1)
		end

	on_click (z_x, z_y: INTEGER; z_button: INTEGER; z_x_tilt, z_y_tilt: DOUBLE; z_pressure: DOUBLE; z_screen_x, z_screen_y: INTEGER)
			-- Gives information about which button was pressed
		do
			if z_button = 1 then
				card.board.move (row, col)
				card.board.refresh_now
			end
		end

feature

	row, col: INTEGER

	card: G2_GUI_CARD

	element: G2_GUI_ELEMENT

	is_occupied: BOOLEAN

end
