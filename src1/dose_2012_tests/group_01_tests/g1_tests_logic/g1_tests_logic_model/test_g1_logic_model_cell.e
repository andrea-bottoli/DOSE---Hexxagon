note
	description: "[
		Eiffel tests that can be executed by testing tool.
	]"
	author: "EiffelStudio test wizard"
	date: "$Date$"
	revision: "$Revision$"
	testing: "type/manual"

class
	TEST_G1_LOGIC_MODEL_CELL

inherit
	EQA_TEST_SET
		redefine
			on_prepare,
			on_clean
		end

feature {NONE} -- Events

	on_prepare
			-- <Precursor>
		do
		end

	on_clean
			-- <Precursor>
		do
		end

feature -- Test routines
	test_make
		note
			testing: "covers/{G1_CELL}.make"
			testing: "user/G1"
		local
			cell_t : G1_CELL
		do
			create cell_t.make (2,"railway")
			assert("ID_cell is 2, Name_Cell is 'railway'", cell_t.id_cell.is_equal (2) and cell_t.name_cell.is_equal ("railway"))
		end

	test_set_id_cell
		note
			testing: "covers/{G1_CELL}.set_id_cell"
			testing: "user/G1"
		local
			cell_t : G1_CELL
		do
			create cell_t.make (2,"railway")
			cell_t.set_id_cell (3)
			assert("ID_cell is 3", cell_t.id_cell.is_equal (3))
		end

	test_set_cell_name
		note
			testing: "covers/{G1_CELL}.set_cell_name"
			testing: "user/G1"
		local
			cell_t : G1_CELL
		do
			create cell_t.make (2,"railway")
			cell_t.set_cell_name ("Pippo")
			assert("Name_Cell is 'Pippo'", cell_t.name_cell.is_equal ("Pippo"))
		end

end


