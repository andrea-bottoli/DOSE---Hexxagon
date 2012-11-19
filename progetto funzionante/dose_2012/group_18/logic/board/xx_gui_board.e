note
	description: "Represents/Simulates the board that GUI needs to draw the board."
	author: "Nikolaos Sourligas, Theocharis Vavouris"
	date: "$Date$"
	revision: "$Revision$"

class
	XX_GUI_BOARD

create
	make

feature {NONE}

	cells:		ARRAY [INTEGER]	-- An array of the cells of the game board
	cell_n:		INTEGER		-- The number of cells

feature {XX_BOARD,XX_HEXXAGON} -- Initialization

	make()  -- Constructor of object XX_GUI_BOARD
	do

	ensure
		valid_cells: (cells /= Void and cell_n = 58)
	end

	get_cell(cell: INTEGER): INTEGER  -- Get specific gui board cell
	require
		valid_get_cell: (cell>=0 and cell<=57)
	do

	ensure
		valid_cell: (cells /= Void) and (Result = cells[cell])
	end

	set_cell(cell:INTEGER; value:INTEGER)  -- Set value to a specific gui board cell
	require
		valid_cell:  (cell>=0 and cell<=57)
		valid_value: (value >=0 and value <=4)
	do

	ensure
		check_cell: (cells /= Void) and (cells[cell] = value )
	end


feature{ANY}

	get_array(): ARRAY[INTEGER]
	do

	ensure
		valid_cell_array: (cells /= Void) and (Result = cells)
	end

end
