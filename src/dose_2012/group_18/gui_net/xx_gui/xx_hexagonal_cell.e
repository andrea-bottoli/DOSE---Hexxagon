note
	description: "Basic element of the board"
	author: "Team Milano2"
	date: "22-11-2012"
	revision: "0.2"

class
	XX_HEXAGONAL_CELL

inherit
	XX_GRAPHICAL_ELEMENT

	XX_GUI_CONSTANTS
	undefine
		default_create,
		copy,
		is_equal
	end

feature	{NONE}	--Attributes of the hexagon cell

	id:	INTEGER
	status: INTEGER

feature {XX_HEXAGONAL_GUI_BOARD} --Methods used by XX_HEXAGONAL_GUI_BOARD

	--Returns the width of the image
	get_width: INTEGER
	do
		Result:=image.width
	end

	--Returns the height of the image
	get_height: INTEGER
	do
		Result:=image.height
	end

	-- Returns the status of the cell
	get_status: INTEGER
	do
		Result:=status
	end

	--Returns the cell
	get_cell: XX_HEXAGONAL_CELL
	do
		Result:=current
	end

	--Returns the id
	get_id: INTEGER
	do
		Result:=id
	end

	--Sets the id of the cell
	set_id(a_id: INTEGER)
	do
		id:=a_id
	end

	--Sets the status of the cell
	set_status(a_status: INTEGER)
	do
		status:=a_status
		set_image
	end

	-- Method that draws a cell in the board
	draw_cell(a_x_coord, a_y_coord, a_cell_type: INTEGER; a_board: EV_PIXMAP)
	do
		--The cell is blank
		if(a_cell_type=0) then
			a_board.draw_pixmap (a_x_coord, a_y_coord, pixmap_blank_cell)
		--The cell is a ruby
		elseif(a_cell_type=1) then
			a_board.draw_pixmap (a_x_coord, a_y_coord, pixmap_ruby)
		--The cell is an highlighted ruby
		elseif(a_cell_type=2) then
			a_board.draw_pixmap (a_x_coord, a_y_coord, pixmap_ruby_hilighted)
		--The cell is a pearl
		elseif(a_cell_type=3) then
			a_board.draw_pixmap (a_x_coord, a_y_coord, pixmap_pearl)
		--The cell is an highlighted pearl
		elseif(a_cell_type=4) then
			a_board.draw_pixmap (a_x_coord, a_y_coord, pixmap_pearl_highlighted)
		--The cell is a cell at distance 1
		elseif(a_cell_type=5) then
			a_board.draw_pixmap (a_x_coord, a_y_coord, pixmap_distance_1)
		--The cell is a cell at distance 2
		elseif(a_cell_type=6) then
			a_board.draw_pixmap (a_x_coord, a_y_coord, pixmap_distance_2)
		end
	end

feature	{NONE}	--Private methods

	--Sets the image of the cell
	set_image
	do
		-- 0: empty
		if(status=0) then
			image:=pixmap_blank_cell
		-- 1: player1 or ruby
		elseif(status=1) then
			image:=pixmap_ruby
		-- 2: player2 or pearl
		elseif(status=2) then
			image:=pixmap_pearl
		-- 3: distance1
		elseif(status=3) then
			image:=pixmap_distance_1
		-- 4: distance2
		elseif(status=4) then
			image:=pixmap_distance_2
		end
	end

	-- Returns the hexagonal blank cell as pixmap
	pixmap_blank_cell:	EV_PIXMAP
	once
		create Result
		Result.set_with_named_file (file_system.pathname_to_string (img_hexagonal_blank))
	end

	-- Returns the hexagonal cell with a pearl as pixmap
	pixmap_pearl:	EV_PIXMAP
	once
		create Result
		Result.set_with_named_file (file_system.pathname_to_string (img_hexagonal_pearl))
	end

	-- Returns the hexagonal cell with a ruby as pixmap
	pixmap_ruby:	EV_PIXMAP
	once
		create Result
		Result.set_with_named_file (file_system.pathname_to_string (img_hexagonal_ruby))
	end

	-- Returns the hexagonal cell with a pearl highlighted as pixmap
	pixmap_pearl_highlighted:	EV_PIXMAP
	once
		create Result
		Result.set_with_named_file (file_system.pathname_to_string (img_hexagonal_pearl_highlighted))
	end

	-- Returns the hexagonal cell with a pearl as pixmap
	pixmap_ruby_hilighted:	EV_PIXMAP
	once
		create Result
		Result.set_with_named_file (file_system.pathname_to_string (img_hexagonal_ruby_highlighted))
	end

	-- Returns the hexagonal cell with a pearl as pixmap
	pixmap_distance_1:	EV_PIXMAP
	once
		create Result
		Result.set_with_named_file (file_system.pathname_to_string (img_hexagonal_distance_1))
	end

	-- Returns the hexagonal cell with a pearl as pixmap
	pixmap_distance_2:	EV_PIXMAP
	once
		create Result
		Result.set_with_named_file (file_system.pathname_to_string (img_hexagonal_distance_2))
	end

end
