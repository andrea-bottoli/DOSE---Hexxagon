note
	description: "Summary description for {G2_GUI_CELL}."
	author: "Grupo 2 , Rio Cuarto 8"
	date: "Date 13/11/2012"
	revision: "Revision  0.1"

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
	make_gui_cell

feature {ANY}
	--initialize

	make_gui_cell(row_1 , col_1 : INTEGER )
	    require
			valid_row : valid_index(row_1)
			valid_col  : valid_index(col_1)
		do
			default_create
			row := row_1
			col := col_1
			create card.make_default
			create element.make_default
			set_pixmap (card.pixmap)
			set_minimum_size (129 , 158)
		end

feature

	set_element (element_1 : STRING)
		do
			element.set_element (element_1)
		end

	set_card(card_1 : G2_GUI_CARD)
		require
			card_not_void : card_1 /= Void
		do
			card.set_card (card_1)
			set_pixmap (card.image)
		end

	valid_index (index : INTEGER) : BOOLEAN
		do
			Result :=  0 <= index and index <= 3
		end

	set_board_game (board_1 : G2_GUI_BOARD_GAME)
		do
				card.set_board_game (board_1)
		end

	set_occupied (ocupp : BOOLEAN)
		do
			is_occupied := ocupp
		end

	on_click (z_x, z_y: INTEGER; z_button: INTEGER; z_x_tilt, z_y_tilt: DOUBLE; z_pressure: DOUBLE; z_screen_x, z_screen_y: INTEGER)
			-- Gives information about which button was pressed
		do
			if z_button = 1 then
				card.board.move (row,col)
			end
		end
feature

	row , col : INTEGER

	card: G2_GUI_CARD

	element : G2_GUI_ELEMENT

	is_occupied : BOOLEAN
end
