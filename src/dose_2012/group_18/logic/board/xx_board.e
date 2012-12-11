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


feature {ANY}

	make_board()  -- Constructor of board object
	do
		initialize_cells()
		initialize_clonep()
		initialize_jump()
		create gui.make
	ensure
		valid_cells: (cells /= Void)
		valid_clonep: (clonep /= Void)
		valid_jump: (jump /= Void)
		valid_num_cells: (num_cells = 58)
	end

feature {NONE}


	initialize_cells()  --Initialize of cells of the board
	local
		i: INTEGER
	do
		create cells.make_filled (Void, 0, 57)
		from i:= 0 until i = 58
		loop
			cells.at(i):= create {XX_CELL}.make_cell(i)
			i := i+1
		end
		num_cells :=58
	ensure
		valid_init_cells: (cells /= Void and num_cells = 58)
	end

	initialize_clonep()  -- Initialize clonep array (shows each cell's possible clone positions)
	do
		create clonep.make_filled (Void, 0, 57)


		clonep.at(0) := [1,2,4]
		clonep.at(1) := [0,3,4,7]
		clonep.at(2) :=[0,4,5,8]

		clonep.at(3) := [1,6,7,11]
		clonep.at(4) := [0,1,2,7,8,12]
		clonep.at(5) := [2,8,9,13]

		clonep.at(6) := [3,10,11,15]
		clonep.at(7) := [1,3,4,11,12,16]
		clonep.at(8) := [2,4,5,12,13,17]

		clonep.at(9)  := [5,13,14,18]
		clonep.at(10) := [6,15,19]
		clonep.at(11) := [3,6,7,15,16,20]

		clonep.at(12) := [4,7,8,16,17]
		clonep.at(13) := [5,8,9,17,18,21]
		clonep.at(14) := [9,18,22]

		clonep.at(15) := [6,10,11,19,20,23]
		clonep.at(16) := [7,11,12,20,24]
		clonep.at(17) := [8,12,13,21,25]

		clonep.at(18) := [9,13,14,21,22,26]
		clonep.at(19) := [10,15,23,27]
		clonep.at(20) := [11,15,16,23,24,28]

		clonep.at(21) := [13,17,18,25,26,30]
		clonep.at(22) := [14,18,26,31]
		clonep.at(23) := [15,19,20,27,28,32]

		clonep.at(24) := [16,20,28,29]
		clonep.at(25) := [17,21,29,30]
		clonep.at(26) := [18,21,22,30,31,33]

		clonep.at(27) := [19,23,32,34]
		clonep.at(28) := [20,23,24,32,35]
		clonep.at(29) := [24,25,36]

		clonep.at(30) := [21,25,26,33,37]
		clonep.at(31) := [22,26,33,38]
		clonep.at(32) := [23,27,28,34,35,39]

		clonep.at(33) := [26,30,31,37,38,42]
		clonep.at(34) := [27,32,39,43]
		clonep.at(35) := [28,32,39,40,44]

		clonep.at(36) := [29,40,41,45]
		clonep.at(37) := [30,33,41,42,46]
		clonep.at(38) := [31,33,42,47]

		clonep.at(39) := [32,34,35,43,44,48]
		clonep.at(40) := [35,36,44,45,49]
		clonep.at(41) := [36,37,45,46,50]

		clonep.at(42) := [33,37,38,46,47,51]
		clonep.at(43) := [34,39,48]
		clonep.at(44) := [35,39,40,48,49,52]

		clonep.at(45) := [36,40,41,49,50,53]
		clonep.at(46) := [37,41,42,50,51,54]
		clonep.at(47) := [38,42,51]

		clonep.at(48) := [39,43,44,52]
		clonep.at(49) := [40,44,45,52,53,55]
		clonep.at(50) := [41,45,46,53,54,56]

		clonep.at(51) := [42,46,47,54]
		clonep.at(52) := [44,48,49,55]
		clonep.at(53) := [45,49,50,55,56,57]

		clonep.at(54) := [46,50,51,56]
		clonep.at(55) := [49,52,53,57]
		clonep.at(56) := [50,53,54,57]
		clonep.at(57) := [53,55,56]

	ensure
		valid_clonep: (clonep /= Void)
	end


	initialize_jump()  -- Initialize jump array (shows each cell's possible jump positions)
	do
		create jump.make_filled (Void,0,57)

		jump.at(0) := [3,5,7,8,12]
		jump.at(1) := [6,11,16,12,8,2]
		jump.at(2) := [1,7,12,17,13,9]

		jump.at(3) := [10,15,20,16,12,4,0]
		jump.at(4) := [3,11,16,17,13,5]
		jump.at(5) := [0,4,12,17,21,18,14]

		jump.at(6) := [19,23,20,16,7,1]
		jump.at(7) := [6,15,20,24,17,8,2,0]
		jump.at(8) := [0,1,7,16,25,21,18,9]

		jump.at(9)  := [2,8,17,21,26,22]
		jump.at(10) := [3,11,20,23,27]
		jump.at(11) := [10,19,23,28,24,12,4,1]

		jump.at(12) := [0,1,3,11,20,24,29,25,21,13,5,2]
		jump.at(13) := [2,4,12,25,30,26,22,14]
		jump.at(14) := [5,13,21,26,31]

		jump.at(15) := [27,32,28,24,16,7,3]
		jump.at(16) := [1,3,6,15,23,28,29,25,17,8,4]
		jump.at(17) := [2,4,7,16,24,29,30,26,18,9,5]

		jump.at(18) := [5,8,17,25,30,33,31]
		jump.at(19) := [6,11,20,28,32,34]
		jump.at(20) := [3,6,10,19,27,32,35,29,12,7]

		jump.at(21) := [5,8,12,29,37,33,31,22,14,9]
		jump.at(22) := [9,13,21,30,33,38]
		jump.at(23) := [6,10,34,39,35,24,16,11]

		jump.at(24) := [7,11,15,23,32,35,40,36,25,17,12]
		jump.at(25) := [8,12,16,24,36,41,37,33,26,18,13]
		jump.at(26) := [14,9,13,17,25,37,42,38]

		jump.at(27) := [10,15,20,28,35,39,43]
		jump.at(28) := [11,15,19,27,34,39,44,40,36,29,16]
		jump.at(29) := [12,16,20,28,35,40,45,41,37,30,21,17]

		jump.at(30) := [13,17,29,36,41,46,42,38,31,22,18]
		jump.at(31) := [14,18,21,30,37,42,47]
		jump.at(32) := [15,19,43,48,44,40,24,20]

		jump.at(33) := [18,21,25,41,46,51,47,22]
		jump.at(34) := [19,23,28,35,44,48]
		jump.at(35) := [20,23,27,34,43,48,52,49,45,36,29,24]

		jump.at(36) := [24,28,35,44,49,53,50,46,37,30,25]
		jump.at(37) := [21,25,29,36,45,50,54,51,47,38,31,26]
		jump.at(38) := [22,26,30,37,46,51]

		jump.at(39) := [27,23,28,40,49,52]
		jump.at(40) := [24,28,32,39,48,52,55,53,50,41,29]
		jump.at(41) := [25,29,40,49,53,56,54,51,42,33,30]

		jump.at(42) := [26,30,41,50,54,31]
		jump.at(43) := [27,32,35,44,52]
		jump.at(44) := [28,32,34,43,55,53,45,36]

		jump.at(45) := [29,35,44,52,55,57,56,54,46,37]
		jump.at(46) := [30,36,45,53,56,47,38,33]
		jump.at(47) := [31,33,37,46,54]

		jump.at(48) := [34,32,35,40,49,55]
		jump.at(49) := [35,39,48,57,56,50,41,36]
		jump.at(50) := [36,40,49,55,57,51,42,37]

		jump.at(51) := [38,33,37,41,50,56]
		jump.at(52) := [43,39,35,40,45,53,57]
		jump.at(53) := [36,40,44,52,54,46,41]

		jump.at(54) := [57,53,45,41,37,42,47]
		jump.at(55) := [48,44,40,45,50,56]
		jump.at(56) := [41,45,49,55,51,46]
		jump.at(57) := [45,49,52,54,50]

	ensure
		valid_jump: (jump /= Void)
	end

feature {ANY}


	get_cell_board() : ARRAY[XX_CELL]	-- Get the gui board that needed for the GUI component
	do
		Result := cells
	ensure
		valid_gui_board: (cells /= Void) and ( Result = cells)
	end

	get_gui_board() : XX_GUI_BOARD	-- Get the gui board that needed for the GUI component
	do
		Result := gui
	ensure
		valid_gui_board: (gui /= Void) and ( Result = gui)
	end


	get_cell(cell_num: INTEGER): XX_CELL  -- Get a  specific cell
	require
		valid_cell_num: (cell_num >=0 and cell_num<=57)
	do
		Result := cells[cell_num]
	ensure
		valid_cell:((cells[cell_num] /= Void) and Result = cells[cell_num])
	end


	get_cell_clonep(cell_num: INTEGER): TUPLE  -- Get the tuple with the cell's possible clone positions
	require
		valid_cell_num: (cell_num >=0 and cell_num<=57)
	do
		Result := clonep[cell_num]
	ensure
		valid_cell: ( clonep[cell_num] /= Void and Result = clonep[cell_num] )
	end


	get_cell_jump(cell_num: INTEGER): TUPLE  -- Get the tuple with the cell's possible jump positions
	require
		valid_cell_num: (cell_num >=0 and cell_num<=57)
	do
		Result := jump[cell_num]
	ensure
		valid_cell: (jump[cell_num] /= Void and Result = jump[cell_num])
	end


	get_num_cells(): INTEGER  --Get the number of cells of the board
	do
		Result := num_cells
	ensure
		valid_num_cells: +Result = num_cells
	end

	copy_board:XX_BOARD

	local
		i:INTEGER
		newcopy:XX_BOARD
	do
		create newcopy.make_board
		from i:=0
		until i>=58
		loop
			newcopy.get_cell (i).set_contents (cells.at (i).get_contents)
			newcopy.get_gui_board.set_cell (i, gui.get_cell (i))
		end
		Result:=newcopy
		ensure Result /=Void
	end


	invariant  -- Class invariant
		check_cells: (cells /= Void and clonep /= Void and jump /= Void)
		check_capacity_cells: (num_cells = 58) and (cells.capacity = 58) and (clonep.capacity = 58) and (jump.capacity = 58)

end
