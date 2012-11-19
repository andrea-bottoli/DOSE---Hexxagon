note
	description: "Test on XX_BOARD class"
	author: "Team Milano2"
	date: "19-11-2012"
	revision: "0.1"
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

		create

			l_board.make_board ()
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
			from
				num_cells:= 0
			until
				num_cells >= 57
			loop
				assert ("Check num_cells >=0",l_board.get_num_cells().is_greater_equal (0))
				assert("Check num_cells >=0",l_board.get_num_cells().is_less_equal (57))
				num_cells:= num_cells+1
			end

		end

	--Tests the routine get_cell_clonep
	test_get_cell_clonep

		note
			testing:  "covers/{XX_BOARD}.get_cell_clonep"
			testing: "user/XX"
		do
		assert ("not_implemented", False)

		end

	--Tests the routine get_cell_jump
	test_get_cell_jump

		note
			testing:  "covers/{XX_BOARD}.get_cell_jump"
			testing: "user/XX"
		do
			assert ("not_implemented", False)
		end

	--Tests the routine get_num_cells
	test_get_num_cells

		note
			testing:  "covers/{XX_BOARD}.get_num_cells"
			testing: "user/XX"
		do
		assert ("not_implemented", False)
		end

end


