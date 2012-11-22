note
	description: "Represents/Simulates the gameplay board of the game Hexxagon"
	author: "Nikolaos Sourligas, Theocharis Vavouris"
	date: "$Date$"
	revision: "$Revision$"

class
	XX_BOARD

create make_board

feature {NONE}

	cells:		ARRAY [XX_CELL]	-- An array of the cells of the game board
	clonep:		ARRAY [TUPLE]	-- Array of Tuples. Each tuple contains each cell's possible clone moves(neighbors), precached read only
	jump:		ARRAY [TUPLE]	-- Array of Tuples. Each tuple contains each cell's possible jump moves, precached read only
	gui:		XX_GUI_BOARD	-- The board that GUI needs to draw
	num_cells: 	INTEGER			-- Total number of cells at the board! read only 58.


feature {XX_HEXXAGON}

	make_board()  -- Constructor of board object
	do

	ensure
		valid_cells: (cells /= Void)
		valid_clonep: (clonep /= Void)
		valid_jump: (jump /= Void)
		valid_num_cells: (num_cells = 58)
	end

feature {NONE}

	initialize_cells()  --Initialize of cells of the board
	do

	ensure
		valid_init_cells: (cells /= Void and num_cells = 58)
	end

	initialize_clonep()  -- Initialize clonep array (shows each cell's possible clone positions)
	do

	ensure
		valid_clonep: (clonep /= Void)
	end

	initialize_jump()  -- Initialize jump array (shows each cell's possible jump positions)
	do

	ensure
		valid_jump: (jump /= Void)
	end

feature {ANY}

	get_gui_board() : XX_GUI_BOARD	-- Get the gui board that needed for the GUI component
	do

	ensure
		valid_gui_board: (gui /= Void) and ( Result = gui)
	end

	get_cell(cell_num: INTEGER): XX_CELL  -- Get a  specific cell
	require
		valid_cell_num: (cell_num >=0 and cell_num<=57)
	do

	ensure
		valid_cell:((cells[cell_num] /= Void) and Result = cells[cell_num])
	end

	get_cell_clonep(cell_num: INTEGER): TUPLE  -- Get the tuple with the cell's possible clone positions
	require
		valid_cell_num: (cell_num >=0 and cell_num<=57)
	do

	ensure
		valid_cell: ( clonep[cell_num] /= Void and Result = clonep[cell_num] )
	end

	get_cell_jump(cell_num: INTEGER): TUPLE  -- Get the tuple with the cell's possible jump positions
	require
		valid_cell_num: (cell_num >=0 and cell_num<=57)
	do

	ensure
		valid_cell: (jump[cell_num] /= Void and Result = jump[cell_num])
	end

	get_num_cells(): INTEGER  --Get the number of cells of the board
	do

	ensure
		valid_num_cells: +Result = num_cells
	end

	invariant  -- Class invariant
		check_cells: (cells /= Void and clonep /= Void and jump /= Void)
		check_capacity_cells: (num_cells = 58) and (cells.capacity = 58) and (clonep.capacity = 58) and (jump.capacity = 58)

end
