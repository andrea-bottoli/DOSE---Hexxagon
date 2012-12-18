note
	description: "Class representing a cell of the board"
	author: "Group 1 - Rio Cuarto 7 - Milano 7: Federico Pereyra"
	date: "$Date$"
	revision: "$Revision$"

class
	G1_CELL

create
	make

feature -- Attributes

	id_cell: INTEGER

	name_cell: STRING

feature

	make (cell_id: INTEGER; cell_name: STRING)
		require
			valid_param: cell_id > 0
		do
			id_cell := cell_id
			name_cell := cell_name
		ensure
			valid_attrs: (id_cell > 0 and id_cell = cell_id) and (name_cell = cell_name)
		end

	set_id_cell (cell_id: INTEGER)
			-- Set the id of cell
		require
			valid_cell: cell_id > 0
		do
			id_cell := cell_id
		ensure
			valid_cell: id_cell > 0 and id_cell = cell_id
		end

	set_cell_name (cell_name: STRING)
			-- Set the name of cell
		require
			cell_name /= Void
		do
			name_cell := cell_name
		ensure
			valid_name_cell: name_cell = cell_name
		end

invariant
	valid_id_cell: id_cell >= 0
	valid_name_cell: name_cell /= Void
end
