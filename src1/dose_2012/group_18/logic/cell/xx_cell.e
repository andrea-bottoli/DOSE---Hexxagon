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
--###############################################################
	make_cell(id: INTEGER)  	--Constructor of cell object
	require
		valid_cell_id: id>=0 and id <= 57
	do
		set_cell_id(id)
		set_is_blank()
	ensure cell_id = id
	end

feature {NONE}
--###############################################################
	set_cell_id(id: INTEGER)   -- Set the id to the cell
	require
		valid_cell_id: id>=0 and id <= 57
	do
		cell_id := id
	ensure
		cellid_set: cell_id = id
	end


feature {ANY}

--###############################################################
	get_cell_id(): INTEGER	-- Get the cell unique id
	do
		Result := cell_id
	ensure
		cellid_get: Result = cell_id
	end


	set_cell_player1()  -- Set the player1 as the owner of this cell
	do
		player1 := True
		player2 := False
	ensure
		player1_set: player1 = True and player2 = False
	end

--###############################################################
	set_cell_player2()  -- Set the player2 as the owner of this cell
	do
		player2 := True
		player1 := False
	ensure
		player2_set: player2 = True and player1 = False
	end

--###############################################################
	set_is_blank() -- Set the cell blank
	do
		player1 := False
		player2 := False
	ensure
		blank_cell: player1 = False and player2 = False
	end

--###############################################################
	get_cell_player1(): BOOLEAN  -- Get info if player1 possesses this cell
	do
		Result := player1
	ensure
		player1_valid: Result = player1
	end

--###############################################################
	get_cell_player2(): BOOLEAN  -- Get info if player2 possesses this cell
	do
		Result := player2
	ensure
		player2_valid: Result = player2
	end

--###############################################################
	get_is_blank(): BOOLEAN  -- Get info if the cell is blank or not
	do
		Result:= not ((player1 or player2))

	ensure
		blank_cell: (Result = True) xor (Result = False)
	end

--###############################################################
	get_contents():INTEGER	--Get the contents of a cell
							--0 is empty
							--1 has player1 piece
							--2 has player2 piece
							-- if -1 THERE IS SOMETHING VERY VERY WRONG with this cell

	do
		if(player1 and player2 ) then
			Result := -1
		elseif ((not player1) and (not player2))then
			Result := 0
		elseif (player1) then
			Result := 1
		else
			Result := 2
		end
		ensure
			valid_result: ((Result>=-1) and (Result <=2))
	end
	
--###############################################################
	set_contents(value:INTEGER)	--set the contents of a cell
								--0 for empty
								--1 for player1 piece
								--2 for player2 piece
	require
		valid_value: ((value>=0) and (value<=2))
	do
		if value =1 then
			set_cell_player1
		elseif value = 2 then
			set_cell_player2
		else
			set_is_blank
		end
	end



	invariant  -- Class invariant
		check_cell_ids: (cell_id >= 0 and cell_id <= 57)
		check_cell_occupation: (((player1 = True ) xor (player2 = True)) xor ((player1 = False) and (player2 = False)))
end
