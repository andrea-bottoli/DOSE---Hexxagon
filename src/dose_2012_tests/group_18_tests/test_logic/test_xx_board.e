note
	description: "Test on XX_BOARD class"
	author: "Team Milano2"
	date: "19-11-2012"
	revision: "0.2"
	testing: "type/manual"

class
	TEST_XX_BOARD

inherit
	EQA_TEST_SET

feature -- Test routines

--Tests the routine make_board
	test_make_board
		note
			testing:  "covers/{XX_BOARD}.make_board"
			testing: "user/XX"
		local
			l_board: XX_BOARD
			num_cells: INTEGER
		do
			create l_board.make_board ()
			num_cells:= 58
			assert ("l_board not void", l_board/=VOID)
			assert ("Number cell are 58", l_board.get_num_cells().is_equal (58))
			assert ("Number cell are less than 59", l_board.get_num_cells().is_less (59))
		end

--Tests the routine get_gui_board
	test_get_gui_board
		note
			testing:  "covers/{XX_BOARD}.get_gui_board"
			testing: "user/XX"
		local
			l_gui_board: XX_GUI_BOARD
		do
			create l_gui_board.make
			assert("l_gui_board not void", l_gui_board/=VOID)
		end

	--Tests the routine get_cell
	test_get_cell
		note
			testing:  "covers/{XX_BOARD}.get_cell"
			testing: "user/XX"
		local
			l_board: XX_BOARD
			num_cells: INTEGER
		do
			create l_board.make_board
			from
				num_cells:= 0
			until
				num_cells >= 57
			loop
				assert ("Check num_cells >=1",l_board.get_num_cells>=1)
				assert("Check num_cells <=58",l_board.get_num_cells<=58)
				num_cells:= num_cells+1
			end
		end

	--Tests the routine get_cell_clonep
	test_get_cell_clonep
		note
			testing:  "covers/{XX_BOARD}.get_cell_clonep"
			testing: "user/XX"
		local
			l_board: XX_BOARD
			l_tuple: TUPLE[INTEGER,INTEGER,INTEGER]
		do
			create l_board.make_board
			l_tuple:=[1,2,4]
			assert ("clonep is correct", l_board.get_cell_clonep (0).is_equal (l_tuple))
		end

	--Tests the routine get_cell_jump
	test_get_cell_jump
		note
			testing:  "covers/{XX_BOARD}.get_cell_jump"
			testing: "user/XX"
		local
			l_board: XX_BOARD
			l_tuple: TUPLE[INTEGER,INTEGER,INTEGER,INTEGER,INTEGER]
		do
			create l_board.make_board
			l_tuple:=[3,5,7,8,12]
			assert ("jump is correct", l_board.get_cell_jump (0).is_equal (l_tuple))
		end

	--Tests the routine get_num_cells
	test_get_num_cells
		local
			l_board: XX_BOARD
			l_num: INTEGER
		do
			create l_board.make_board
			l_num:=58
			assert ("The number of the cells is correct", l_board.get_num_cells.is_equal (l_num))
		end
end
