note
	description: "Represents/Simulates the gameplay board of the game Hexxagon"
	author: "Nikolaos Sourligas, Theocharis Vavouris"
	date: "$Date$"
	revision: "$Revision$"

class
	XX_BOARD

create make_board

feature {NONE}

	cells:		ARRAY [XX_CELL]  --An array of the cells of the game board
	adjacent:	ARRAY [TUPLE]	--Array of Tuples. Each tuple contains each cell's adjacent cells, precached read only
	num_cells: INTEGER  --Total number of cells at the board! read only 58.


feature {XX_HEXXAGON}

	make_board()  -- Constructor of board object
	do

	ensure cells /= Void and adjacent /= Void and num_cells > 0
	end

feature {NONE}

	initialize_cells()  --Initialize of cells of the board
	do

	ensure cells /= Void and num_cells > 0
	end

	initialize_adjacents()  -- Initialize adjacents cells of each cell of the board
	do

	ensure adjacent /= Void
	end

feature {ANY}

	get_cell(cell_num: INTEGER): XX_CELL  -- Get info about a  specific cell
	require  cell_num >=0 and cell_num <= Max_value
	do

	ensure Result = cells[cell_num]
	end

	get_cell_adjacent(cell_num: INTEGER): TUPLE  -- Get the tuple with the adjacents of a cell
	require cell_num >=0 and cell_num <= Max_value
	do

	ensure Result = adjacent[cell_num]
	end

	get_num_cells(): INTEGER  --Get the number of cells of the board
	do

	ensure Result = num_cells
	end


end
