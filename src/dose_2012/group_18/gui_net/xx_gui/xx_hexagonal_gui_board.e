note
	description: "This is the entire gui board"
	author: "Team Milano2"
	date: "23-11-2012"
	revision: "0.2"

class
	XX_HEXAGONAL_GUI_BOARD

inherit
	EV_FIXED

	XX_GUI_CONSTANTS
	undefine
		default_create,
		copy,
		is_equal
	end

create
	default_create,
	make_hexagonal_gui_board

feature {NONE} -- Constructor of the class

	make_hexagonal_gui_board(a_game_panel: XX_GAME_PANEL)
	do
		default_create
		game_panel:=a_game_panel
		hexagonal_board:=pixmap_board
		current.extend (hexagonal_board)
		create hexagonal_cells_array.make_filled (Void, 1, 58)
		create_cells
		draw_board
		set_agents
	end

feature	{NONE} -- Attributes

	game_panel: XX_GAME_PANEL
	hexagonal_cell: XX_HEXAGONAL_CELL
	hexagonal_cells_array: ARRAY[XX_HEXAGONAL_CELL]
	hexagonal_board: EV_PIXMAP

feature {XX_GAME_PANEL}

	-- Sets the array with the right cells
	set_board(a_board: ARRAY[INTEGER])
	local
		l_i: INTEGER
		l_x_pos: INTEGER
		l_y_pos: INTEGER
		l_status: INTEGER
		l_new_status: INTEGER
	do
		from
			l_i:=0
		until
			l_i>=58
		loop
			l_status:=hexagonal_cells_array.at (l_i+1).get_status
			l_new_status:=a_board.at (l_i+1)
			l_x_pos:=hexagonal_cells_array.at (l_i+1).get_x_coord
			l_y_pos:=hexagonal_cells_array.at (l_i+1).get_y_coord
			if(l_new_status/=l_status) then
				hexagonal_cells_array.at (l_i+1).set_status (l_new_status)
				hexagonal_cells_array.at (l_i+1).draw_cell (l_x_pos, l_y_pos, l_new_status, get_board)
			end
			l_i:=l_i+1
		end
	end

	--Method that cleans the board setting the status of each cell to 0
	clean_board
	local
		l_i: INTEGER
	do
		from
			l_i:=0
		until
			l_i>=58
		loop
			hexagonal_cells_array.at (l_i+1).set_status (0)
			l_i:=l_i+1
		end
	end

feature {NONE} --Methods for drawing the board

	-- Methods for loading the board as a pixmap
	pixmap_board: EV_PIXMAP
	once
		create Result
		Result.set_with_named_file (file_system.pathname_to_string (img_board))
	end

	--Returns the image of rhe board
	get_board: EV_PIXMAP
	do
		Result:=hexagonal_board
	end

	--Method that creates the hexagonal cell
	create_cells
	local
		l_i: INTEGER
	do
		from
			l_i:=0
		until
			l_i>=58
		loop
			create hexagonal_cell
			hexagonal_cell.set_id (l_i)
			hexagonal_cells_array.put (hexagonal_cell, l_i+1)
			l_i:=l_i+1
		end
		clean_board
	end

	-- Method that draws the board composed by cells
	draw_board
	local
		l_status: INTEGER
		l_i: INTEGER
		l_x_coord: INTEGER
		l_y_coord: INTEGER
		l_coordinates: ARRAY[INTEGER]
	do
		create l_coordinates.make_filled (0, 1, 2)
		from
			l_i:=0
		until
			l_i>=58
		loop
			l_coordinates:=get_cell_position (l_i)
			l_x_coord:=l_coordinates.at (1)
			l_y_coord:=l_coordinates.at (2)
			l_status:=hexagonal_cells_array.at (l_i+1).get_status
			hexagonal_cells_array.at (l_i+1).set_x_coord (l_x_coord)
			hexagonal_cells_array.at (l_i+1).set_y_coord (l_y_coord)
			hexagonal_cells_array.at (l_i+1).draw_cell (l_x_coord, l_y_coord, l_status, get_board)
			l_i:=l_i+1
		end
	end

	--Method that returns the coordinate of a determinate cell
	get_cell_position(a_id: INTEGER): ARRAY[INTEGER]
	local
		--Hexagonal cell's width
		l_cell_width: REAL
		--Initial x and y position of the first cell
		l_init_x: REAL
		l_init_y: REAL
		--Offset of obliquos sides
		l_x_offset: REAL
		l_y_offset: REAL
		--Coordinates of the cell
		l_x_coord: REAL
		l_y_coord: REAL
		l_coordinates: ARRAY[INTEGER]
	do
		create l_coordinates.make_filled (0, 1, 2)
		l_x_offset:=17
		l_y_offset:=35
		l_cell_width:=80
		l_init_x:=pixmap_board.width.to_real/2-l_cell_width/2
		l_init_y:=10
		--Compares the id and return the position of the relative cell
		if(a_id=0) then
			l_x_coord:=l_init_x
			l_y_coord:=l_init_y
			l_coordinates.put (l_x_coord.truncated_to_integer, 1)
			l_coordinates.put (l_y_coord.truncated_to_integer, 2)
			Result:=l_coordinates
		elseif(a_id=1) then
			l_x_coord:=l_init_x-l_cell_width+l_x_offset
			l_y_coord:=l_init_y+l_y_offset
			l_coordinates.put (l_x_coord.truncated_to_integer, 1)
			l_coordinates.put (l_y_coord.truncated_to_integer, 2)
		elseif(a_id=2) then
			l_x_coord:=l_init_x+(l_cell_width-l_x_offset)
			l_y_coord:=l_init_y+l_y_offset
			l_coordinates.put (l_x_coord.truncated_to_integer, 1)
			l_coordinates.put (l_y_coord.truncated_to_integer, 2)
		elseif(a_id=3) then
			l_x_coord:=l_init_x-2*(l_cell_width-l_x_offset)
			l_y_coord:=l_init_y+2*l_y_offset
			l_coordinates.put (l_x_coord.truncated_to_integer, 1)
			l_coordinates.put (l_y_coord.truncated_to_integer, 2)
		elseif(a_id=4) then
			l_x_coord:=l_init_x
			l_y_coord:=l_init_y+2*l_y_offset
			l_coordinates.put (l_x_coord.truncated_to_integer, 1)
			l_coordinates.put (l_y_coord.truncated_to_integer, 2)
		elseif(a_id=5) then
			l_x_coord:=l_init_x+2*(l_cell_width-l_x_offset)
			l_y_coord:=l_init_y+2*l_y_offset
			l_coordinates.put (l_x_coord.truncated_to_integer, 1)
			l_coordinates.put (l_y_coord.truncated_to_integer, 2)
		elseif(a_id=6) then
			l_x_coord:=l_init_x-3*(l_cell_width-l_x_offset)
			l_y_coord:=l_init_y+3*l_y_offset
			l_coordinates.put (l_x_coord.truncated_to_integer, 1)
			l_coordinates.put (l_y_coord.truncated_to_integer, 2)
		elseif(a_id=7) then
			l_x_coord:=l_init_x-l_cell_width+l_x_offset
			l_y_coord:=l_init_y+3*l_y_offset
			l_coordinates.put (l_x_coord.truncated_to_integer, 1)
			l_coordinates.put (l_y_coord.truncated_to_integer, 2)
		elseif(a_id=8) then
			l_x_coord:=l_init_x+(l_cell_width-l_x_offset)
			l_y_coord:=l_init_y+3*l_y_offset
			l_coordinates.put (l_x_coord.truncated_to_integer, 1)
			l_coordinates.put (l_y_coord.truncated_to_integer, 2)
		elseif(a_id=9) then
			l_x_coord:=l_init_x+3*(l_cell_width-l_x_offset)
			l_y_coord:=l_init_y+3*l_y_offset
			l_coordinates.put (l_x_coord.truncated_to_integer, 1)
			l_coordinates.put (l_y_coord.truncated_to_integer, 2)
		elseif(a_id=10) then
			l_x_coord:=l_init_x-4*(l_cell_width-l_x_offset)
			l_y_coord:=l_init_y+4*l_y_offset
			l_coordinates.put (l_x_coord.truncated_to_integer, 1)
			l_coordinates.put (l_y_coord.truncated_to_integer, 2)
		elseif(a_id=11) then
			l_x_coord:=l_init_x-2*(l_cell_width-l_x_offset)
			l_y_coord:=l_init_y+4*l_y_offset
			l_coordinates.put (l_x_coord.truncated_to_integer, 1)
			l_coordinates.put (l_y_coord.truncated_to_integer, 2)
		elseif(a_id=12) then
			l_x_coord:=l_init_x
			l_y_coord:=l_init_y+4*l_y_offset
			l_coordinates.put (l_x_coord.truncated_to_integer, 1)
			l_coordinates.put (l_y_coord.truncated_to_integer, 2)
		elseif(a_id=13) then
			l_x_coord:=l_init_x+2*(l_cell_width-l_x_offset)
			l_y_coord:=l_init_y+4*l_y_offset
			l_coordinates.put (l_x_coord.truncated_to_integer, 1)
			l_coordinates.put (l_y_coord.truncated_to_integer, 2)
		elseif(a_id=14) then
			l_x_coord:=l_init_x+4*(l_cell_width-l_x_offset)
			l_y_coord:=l_init_y+4*l_y_offset
			l_coordinates.put (l_x_coord.truncated_to_integer, 1)
			l_coordinates.put (l_y_coord.truncated_to_integer, 2)
		elseif(a_id=15) then
			l_x_coord:=l_init_x-3*(l_cell_width-l_x_offset)
			l_y_coord:=l_init_y+5*l_y_offset
			l_coordinates.put (l_x_coord.truncated_to_integer, 1)
			l_coordinates.put (l_y_coord.truncated_to_integer, 2)
		elseif(a_id=16) then
			l_x_coord:=l_init_x-l_cell_width+l_x_offset
			l_y_coord:=l_init_y+5*l_y_offset
			l_coordinates.put (l_x_coord.truncated_to_integer, 1)
			l_coordinates.put (l_y_coord.truncated_to_integer, 2)
		elseif(a_id=17) then
			l_x_coord:=l_init_x+(l_cell_width-l_x_offset)
			l_y_coord:=l_init_y+5*l_y_offset
			l_coordinates.put (l_x_coord.truncated_to_integer, 1)
			l_coordinates.put (l_y_coord.truncated_to_integer, 2)
		elseif(a_id=18) then
			l_x_coord:=l_init_x+3*(l_cell_width-l_x_offset)
			l_y_coord:=l_init_y+5*l_y_offset
			l_coordinates.put (l_x_coord.truncated_to_integer, 1)
			l_coordinates.put (l_y_coord.truncated_to_integer, 2)
		elseif(a_id=19) then
			l_x_coord:=l_init_x-4*(l_cell_width-l_x_offset)
			l_y_coord:=l_init_y+6*l_y_offset
			l_coordinates.put (l_x_coord.truncated_to_integer, 1)
			l_coordinates.put (l_y_coord.truncated_to_integer, 2)
		elseif(a_id=20) then
			l_x_coord:=l_init_x-2*(l_cell_width-l_x_offset)
			l_y_coord:=l_init_y+6*l_y_offset
			l_coordinates.put (l_x_coord.truncated_to_integer, 1)
			l_coordinates.put (l_y_coord.truncated_to_integer, 2)
		elseif(a_id=21) then
			l_x_coord:=l_init_x+2*(l_cell_width-l_x_offset)
			l_y_coord:=l_init_y+6*l_y_offset
			l_coordinates.put (l_x_coord.truncated_to_integer, 1)
			l_coordinates.put (l_y_coord.truncated_to_integer, 2)
		elseif(a_id=22) then
			l_x_coord:=l_init_x+4*(l_cell_width-l_x_offset)
			l_y_coord:=l_init_y+6*l_y_offset
			l_coordinates.put (l_x_coord.truncated_to_integer, 1)
			l_coordinates.put (l_y_coord.truncated_to_integer, 2)
		elseif(a_id=23) then
			l_x_coord:=l_init_x-3*(l_cell_width-l_x_offset)
			l_y_coord:=l_init_y+7*l_y_offset
			l_coordinates.put (l_x_coord.truncated_to_integer, 1)
			l_coordinates.put (l_y_coord.truncated_to_integer, 2)
		elseif(a_id=24) then
			l_x_coord:=l_init_x-l_cell_width+l_x_offset
			l_y_coord:=l_init_y+7*l_y_offset
			l_coordinates.put (l_x_coord.truncated_to_integer, 1)
			l_coordinates.put (l_y_coord.truncated_to_integer, 2)
		elseif(a_id=25) then
			l_x_coord:=l_init_x+(l_cell_width-l_x_offset)
			l_y_coord:=l_init_y+7*l_y_offset
			l_coordinates.put (l_x_coord.truncated_to_integer, 1)
			l_coordinates.put (l_y_coord.truncated_to_integer, 2)
		elseif(a_id=26) then
			l_x_coord:=l_init_x+3*(l_cell_width-l_x_offset)
			l_y_coord:=l_init_y+7*l_y_offset
			l_coordinates.put (l_x_coord.truncated_to_integer, 1)
			l_coordinates.put (l_y_coord.truncated_to_integer, 2)
		elseif(a_id=27) then
			l_x_coord:=l_init_x-4*(l_cell_width-l_x_offset)
			l_y_coord:=l_init_y+8*l_y_offset
			l_coordinates.put (l_x_coord.truncated_to_integer, 1)
			l_coordinates.put (l_y_coord.truncated_to_integer, 2)
		elseif(a_id=28) then
			l_x_coord:=l_init_x-2*(l_cell_width-l_x_offset)
			l_y_coord:=l_init_y+8*l_y_offset
			l_coordinates.put (l_x_coord.truncated_to_integer, 1)
			l_coordinates.put (l_y_coord.truncated_to_integer, 2)
		elseif(a_id=29) then
			l_x_coord:=l_init_x
			l_y_coord:=l_init_y+8*l_y_offset
			l_coordinates.put (l_x_coord.truncated_to_integer, 1)
			l_coordinates.put (l_y_coord.truncated_to_integer, 2)
		elseif(a_id=30) then
			l_x_coord:=l_init_x+2*(l_cell_width-l_x_offset)
			l_y_coord:=l_init_y+8*l_y_offset
			l_coordinates.put (l_x_coord.truncated_to_integer, 1)
			l_coordinates.put (l_y_coord.truncated_to_integer, 2)
		elseif(a_id=31) then
			l_x_coord:=l_init_x+4*(l_cell_width-l_x_offset)
			l_y_coord:=l_init_y+8*l_y_offset
			l_coordinates.put (l_x_coord.truncated_to_integer, 1)
			l_coordinates.put (l_y_coord.truncated_to_integer, 2)
		elseif(a_id=32) then
			l_x_coord:=l_init_x-3*(l_cell_width-l_x_offset)
			l_y_coord:=l_init_y+9*l_y_offset
			l_coordinates.put (l_x_coord.truncated_to_integer, 1)
			l_coordinates.put (l_y_coord.truncated_to_integer, 2)
		elseif(a_id=33) then
			l_x_coord:=l_init_x+3*(l_cell_width-l_x_offset)
			l_y_coord:=l_init_y+9*l_y_offset
			l_coordinates.put (l_x_coord.truncated_to_integer, 1)
			l_coordinates.put (l_y_coord.truncated_to_integer, 2)
		elseif(a_id=34) then
			l_x_coord:=l_init_x-4*(l_cell_width-l_x_offset)
			l_y_coord:=l_init_y+10*l_y_offset
			l_coordinates.put (l_x_coord.truncated_to_integer, 1)
			l_coordinates.put (l_y_coord.truncated_to_integer, 2)
		elseif(a_id=35) then
			l_x_coord:=l_init_x-2*(l_cell_width-l_x_offset)
			l_y_coord:=l_init_y+10*l_y_offset
			l_coordinates.put (l_x_coord.truncated_to_integer, 1)
			l_coordinates.put (l_y_coord.truncated_to_integer, 2)
		elseif(a_id=36) then
			l_x_coord:=l_init_x
			l_y_coord:=l_init_y+10*l_y_offset
			l_coordinates.put (l_x_coord.truncated_to_integer, 1)
			l_coordinates.put (l_y_coord.truncated_to_integer, 2)
		elseif(a_id=37) then
			l_x_coord:=l_init_x+2*(l_cell_width-l_x_offset)
			l_y_coord:=l_init_y+10*l_y_offset
			l_coordinates.put (l_x_coord.truncated_to_integer, 1)
			l_coordinates.put (l_y_coord.truncated_to_integer, 2)
		elseif(a_id=38) then
			l_x_coord:=l_init_x+4*(l_cell_width-l_x_offset)
			l_y_coord:=l_init_y+10*l_y_offset
			l_coordinates.put (l_x_coord.truncated_to_integer, 1)
			l_coordinates.put (l_y_coord.truncated_to_integer, 2)
		elseif(a_id=39) then
			l_x_coord:=l_init_x-3*(l_cell_width-l_x_offset)
			l_y_coord:=l_init_y+11*l_y_offset
			l_coordinates.put (l_x_coord.truncated_to_integer, 1)
			l_coordinates.put (l_y_coord.truncated_to_integer, 2)
		elseif(a_id=40) then
			l_x_coord:=l_init_x-l_cell_width+l_x_offset
			l_y_coord:=l_init_y+11*l_y_offset
			l_coordinates.put (l_x_coord.truncated_to_integer, 1)
			l_coordinates.put (l_y_coord.truncated_to_integer, 2)
		elseif(a_id=41) then
			l_x_coord:=l_init_x+(l_cell_width-l_x_offset)
			l_y_coord:=l_init_y+11*l_y_offset
			l_coordinates.put (l_x_coord.truncated_to_integer, 1)
			l_coordinates.put (l_y_coord.truncated_to_integer, 2)
		elseif(a_id=42) then
			l_x_coord:=l_init_x+3*(l_cell_width-l_x_offset)
			l_y_coord:=l_init_y+11*l_y_offset
			l_coordinates.put (l_x_coord.truncated_to_integer, 1)
			l_coordinates.put (l_y_coord.truncated_to_integer, 2)
		elseif(a_id=43) then
			l_x_coord:=l_init_x-4*(l_cell_width-l_x_offset)
			l_y_coord:=l_init_y+12*l_y_offset
			l_coordinates.put (l_x_coord.truncated_to_integer, 1)
			l_coordinates.put (l_y_coord.truncated_to_integer, 2)
		elseif(a_id=44) then
			l_x_coord:=l_init_x-2*(l_cell_width-l_x_offset)
			l_y_coord:=l_init_y+12*l_y_offset
			l_coordinates.put (l_x_coord.truncated_to_integer, 1)
			l_coordinates.put (l_y_coord.truncated_to_integer, 2)
		elseif(a_id=45) then
			l_x_coord:=l_init_x
			l_y_coord:=l_init_y+12*l_y_offset
			l_coordinates.put (l_x_coord.truncated_to_integer, 1)
			l_coordinates.put (l_y_coord.truncated_to_integer, 2)
		elseif(a_id=46) then
			l_x_coord:=l_init_x+2*(l_cell_width-l_x_offset)
			l_y_coord:=l_init_y+12*l_y_offset
			l_coordinates.put (l_x_coord.truncated_to_integer, 1)
			l_coordinates.put (l_y_coord.truncated_to_integer, 2)
		elseif(a_id=47) then
			l_x_coord:=l_init_x+4*(l_cell_width-l_x_offset)
			l_y_coord:=l_init_y+12*l_y_offset
			l_coordinates.put (l_x_coord.truncated_to_integer, 1)
			l_coordinates.put (l_y_coord.truncated_to_integer, 2)
		elseif(a_id=48) then
			l_x_coord:=l_init_x-3*(l_cell_width-l_x_offset)
			l_y_coord:=l_init_y+13*l_y_offset
			l_coordinates.put (l_x_coord.truncated_to_integer, 1)
			l_coordinates.put (l_y_coord.truncated_to_integer, 2)
		elseif(a_id=49) then
			l_x_coord:=l_init_x-l_cell_width+l_x_offset
			l_y_coord:=l_init_y+13*l_y_offset
			l_coordinates.put (l_x_coord.truncated_to_integer, 1)
			l_coordinates.put (l_y_coord.truncated_to_integer, 2)
		elseif(a_id=50) then
			l_x_coord:=l_init_x+(l_cell_width-l_x_offset)
			l_y_coord:=l_init_y+13*l_y_offset
			l_coordinates.put (l_x_coord.truncated_to_integer, 1)
			l_coordinates.put (l_y_coord.truncated_to_integer, 2)
		elseif(a_id=51) then
			l_x_coord:=l_init_x+3*(l_cell_width-l_x_offset)
			l_y_coord:=l_init_y+13*l_y_offset
			l_coordinates.put (l_x_coord.truncated_to_integer, 1)
			l_coordinates.put (l_y_coord.truncated_to_integer, 2)
		elseif(a_id=52) then
			l_x_coord:=l_init_x-2*(l_cell_width-l_x_offset)
			l_y_coord:=l_init_y+14*l_y_offset
			l_coordinates.put (l_x_coord.truncated_to_integer, 1)
			l_coordinates.put (l_y_coord.truncated_to_integer, 2)
		elseif(a_id=53) then
			l_x_coord:=l_init_x
			l_y_coord:=l_init_y+14*l_y_offset
			l_coordinates.put (l_x_coord.truncated_to_integer, 1)
			l_coordinates.put (l_y_coord.truncated_to_integer, 2)
		elseif(a_id=54) then
			l_x_coord:=l_init_x+2*(l_cell_width-l_x_offset)
			l_y_coord:=l_init_y+14*l_y_offset
			l_coordinates.put (l_x_coord.truncated_to_integer, 1)
			l_coordinates.put (l_y_coord.truncated_to_integer, 2)
		elseif(a_id=55) then
			l_x_coord:=l_init_x-l_cell_width+l_x_offset
			l_y_coord:=l_init_y+15*l_y_offset
			l_coordinates.put (l_x_coord.truncated_to_integer, 1)
			l_coordinates.put (l_y_coord.truncated_to_integer, 2)
		elseif(a_id=56) then
			l_x_coord:=l_init_x+(l_cell_width-l_x_offset)
			l_y_coord:=l_init_y+15*l_y_offset
			l_coordinates.put (l_x_coord.truncated_to_integer, 1)
			l_coordinates.put (l_y_coord.truncated_to_integer, 2)
		elseif(a_id=57) then
			l_x_coord:=l_init_x
			l_y_coord:=l_init_y+16*l_y_offset
			l_coordinates.put (l_x_coord.truncated_to_integer, 1)
			l_coordinates.put (l_y_coord.truncated_to_integer, 2)
		end
		Result:=l_coordinates
	end

	--Method that sets the agents on the board
	set_agents
	do
		pixmap_board.pointer_button_release_actions.extend (agent mouse_realease(?,?,?,?,?,?,?,?))
	end

	--Method that implements the release of the mouse button
	mouse_realease(x_pos, y_pos, c: INTEGER; d,e,f: REAL_64; g,h:INTEGER)
	do
		if(not click_cell (x_pos, y_pos).is_equal ("")) then
			game_panel.send_id_clicked_cell (click_cell (x_pos, y_pos).to_integer)
		end
	end

	--Method that returns the id of the cell clicked
	click_cell(a_x_pos, a_y_pos: INTEGER): STRING
	local
		l_i: INTEGER
		l_b: BOOLEAN
		l_cell1_width: INTEGER
		l_cell1_height: INTEGER
		l_cell2_width: INTEGER
		l_cell2_height: INTEGER
		l_x1_pos: INTEGER
		l_y1_pos: INTEGER
		l_x2_pos: INTEGER
		l_y2_pos: INTEGER
		l_num_elem: INTEGER
	do
		l_num_elem:=hexagonal_cells_array.count
		Result:=""
		from
			l_i:=0
			l_b:=FALSE
		until
			l_i>=hexagonal_cells_array.count//2 or l_b=TRUE
		loop
			l_x1_pos:=hexagonal_cells_array.at (l_i+1).get_x_coord
			l_y1_pos:=hexagonal_cells_array.at (l_i+1).get_y_coord
			l_cell1_width:=hexagonal_cells_array.at (l_i+1).get_width
			l_cell1_height:=hexagonal_cells_array.at (l_i+1).get_height

			l_x2_pos:=hexagonal_cells_array.at (l_num_elem-l_i).get_x_coord
			l_y2_pos:=hexagonal_cells_array.at (l_num_elem-l_i).get_y_coord
			l_cell2_width:=hexagonal_cells_array.at (l_num_elem-l_i).get_width
			l_cell2_height:=hexagonal_cells_array.at (l_num_elem-l_i).get_height

			if(a_x_pos>l_x1_pos+17 and a_x_pos<(l_x1_pos+l_cell1_width-17) and a_y_pos>l_y1_pos and a_y_pos<(l_y1_pos+l_cell1_height)) then
				Result.append_integer (l_i)
				l_b:=TRUE
			elseif (a_x_pos>l_x2_pos+17 and a_x_pos<(l_x2_pos+l_cell2_width-17) and a_y_pos>l_y2_pos and a_y_pos<(l_y2_pos+l_cell2_height)) then
				Result.append_integer (l_num_elem-l_i-1)
				l_b:=TRUE
			else
				l_i:=l_i+1
			end
		end
	end

feature{XX_GAME_PANEL} --Method for checking contracts

	--Checks board status
	is_board_empty: BOOLEAN
	do
		Result:= hexagonal_cells_array.is_empty
	end
end
