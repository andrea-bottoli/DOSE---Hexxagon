note
	description: "This is the entire gui board"
	author: "Team Milano2"
	date: "23-11-2012"
	revision: "0.1"

class
	XX_HEXAGONAL_GUI_BOARD

create
	make_hexagonal_gui_board

feature {NONE} -- Constructor of the class

	make_hexagonal_gui_board(a_width, a_height, a_side,a_offset_x,a_offset_y: INTEGER)
	do
		width:=a_width
		height:=a_height
		side:=a_side
		offset_x:=a_offset_x
		offset_y:=a_offset_y
	end

feature	{NONE} -- Attributes

	hexagonal_cells:	ARRAY[XX_HEXAGONAL_CELL]
	width:				INTEGER
	height:				INTEGER
	offset_x:			INTEGER
	offset_y:			INTEGER
	side:				INTEGER
	pixel_width:		REAL
	pixel_height:		REAL
	hexagons:			TUPLE[INTEGER, INTEGER]

end
