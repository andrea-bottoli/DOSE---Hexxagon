note
	description: "Represens/Simulates the behaviour of a cell at the board of the game"
	author: "Nikos Sourligas, Theocharis Vavouris"
	date: "$Date$"
	revision: "$Revision$"

class
	XX_CELL

create make_cell


feature {NONE}

	cell_id: INTEGER -- The unique id of the cell read-only
	player1: BOOLEAN -- The cell is occupied by player1 piece
	player2: BOOLEAN -- The cell is occupied by player2 piece
	is_blank: BOOLEAN -- The cell is not occupied from players

feature {ANY}

	make_cell(id: INTEGER)  --Constructor of cell object
	require id>=0
	do

	ensure cell_id = id
	end

feature {NONE}

	set_cell_id(id: INTEGER)
	require id>=0 
	do

	ensure cell_id = id
	end


feature {ANY}

	get_cell_id(): INTEGER -- Get the cell unique id
	do

	ensure Result = cell_id
	end

	set_cell_player1(value: BOOLEAN)  --Set the player1 as the owner of this cell
	require value = True or value = False
	do

	ensure player1 = value
	end

	set_cell_player2(value: BOOLEAN)  --Set the player2 as the owner of this cell
	require value = True or value = False
	do

	ensure player2 = value
	end

	set_is_blank(value: BOOLEAN) -- Set the boolean value if the cell
	require value = True or value = False
	do

	ensure is_blank = value
	end

	get_cell_player1(): BOOLEAN  -- Get info if player1 possesses this cell
	do

	ensure Result = player1
	end

	get_cell_player2(): BOOLEAN  -- Get info if player2 possesses this cell
	do

	ensure Result = player2
	end

	get_is_blank(): BOOLEAN  -- Get info if the cell is blank or not
	do

	ensure Result = is_blank
	end

end
