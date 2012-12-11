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

feature {XX_BOARD,XX_HEXXAGON,XX_RULES} -- Initialization

--###############################################################
	make()  -- Constructor of object XX_GUI_BOARD
	do
		cell_n := 58
		create cells.make_filled(0,0,57)
	ensure
		valid_cells: (cells /= Void and cell_n = 58)
	end


	get_cell(cell: INTEGER): INTEGER	-- Get specific gui board cell
										--if 0 then it is empty
										--if 1 then has player1 piece
										--if 2 then has player2 piece
										--if 3 has possible clone position
										--if 4 has possible jump position
	require
		valid_get_cell: (cell>=0 and cell<=57)
	do
		Result := cells[cell]
	ensure
		valid_cell: (cells /= Void) and (Result = cells[cell])
	end

--###############################################################
	set_cell(cell:INTEGER; value:INTEGER)	-- Set value to a specific gui board cell
											-- 0 for empty
											-- 1 for player1 piece
											-- 2 for player2 piece
											-- 3 for possible clone position
											-- 4 for possible jump position
	require
		valid_cell:  (cell>=0 and cell<=57)
		valid_value: (value >=0 and value <=4)
	do
		cells[cell] := value
	ensure
		check_cell: (cells /= Void) and (cells[cell] = value )
	end



feature{ANY}

--###############################################################
	get_array(): ARRAY[INTEGER]			-- Get the whole array
										--for each cell has a number
										--if 0 then it is empty
										--if 1 then has player1 piece
										--if 2 then has player2 piece
										--if 3 has possible clone position
										--if 4 has possible jump position
	do
		Result := cells
	ensure
		valid_cell_array: (cells /= Void) and (Result = cells)
	end

end
