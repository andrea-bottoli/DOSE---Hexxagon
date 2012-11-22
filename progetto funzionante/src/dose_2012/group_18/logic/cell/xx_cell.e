note
	description: "Represens/Simulates the behaviour of a cell at the board of the game"
	author: "Nikos Sourligas, Theocharis Vavouris"
	date: "$"
	revision: "$Revision$"

class
	XX_CELL

create make_cell


feature {NONE}

	cell_id: INTEGER	-- The unique id of the cell read-only	
	player1: BOOLEAN	-- The cell is occupied by player1 piece
	player2: BOOLEAN	-- The cell is occupied by player2 piece

feature {ANY}

	make_cell(id: INTEGER)  	--Constructor of cell object
	require
		valid_cell_id: id>=0 and id <= 57
	do

	ensure cell_id = id
	end

feature {NONE}

	set_cell_id(id: INTEGER)   -- Set the id to the cell
	require
		valid_cell_id: id>=0 and id <= 57
	do

	ensure
		cellid_set: cell_id = id
	end


feature {ANY}

	get_cell_id(): INTEGER	-- Get the cell unique id
	do

	ensure
		cellid_get: Result = cell_id
	end

	set_cell_player1()  -- Set the player1 as the owner of this cell
	do

	ensure
		player1_set: player1 = True and player2 = False
	end

	set_cell_player2()  -- Set the player2 as the owner of this cell
	do

	ensure
		player2_set: player2 = True and player1 = False
	end

	set_is_blank() -- Set the cell blank
	do

	ensure
		blank_cell: player1 = False and player2 = False
	end

	get_cell_player1(): BOOLEAN  -- Get info if player1 possesses this cell
	do

	ensure
		player1_valid: Result = player1
	end

	get_cell_player2(): BOOLEAN  -- Get info if player2 possesses this cell
	do

	ensure
		player2_valid: Result = player2
	end

	get_is_blank(): BOOLEAN  -- Get info if the cell is blank or not
	do

	ensure
		blank_cell: Result = ((player1 or player2) = FALSE)
	end


	invariant  -- Class invariant
		check_cell_ids: (cell_id >= 0 and cell_id <= 57)
		check_cell_occupation: (((player1 = True ) xor (player2 = True)) xor ((player1 = False) and (player2 = False)))
end
