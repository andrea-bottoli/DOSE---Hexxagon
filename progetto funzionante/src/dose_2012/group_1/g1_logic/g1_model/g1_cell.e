note
	description: "Group 1 - Rio Cuarto 7 - Milano 7"
	author: ""
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
		ensure
			valid_attrs: (id_cell > 0 and id_cell = cell_id) and (name_cell = cell_name)
		end

	get_id_cell: INTEGER
		do
		end

	set_id_cell (cell_id: INTEGER)
			-- Set the id of cell
		require
			valid_cell: cell_id > 0
		do
		ensure
			valid_cell: id_cell > 0 and id_cell = cell_id
		end

	get_cell_name : STRING
			-- Get the name of the cell
		do
		end

	set_cell_name (cell_name: STRING)
			-- Set the name of cell
		do
		ensure
			valid_name_cell: name_cell = cell_name
		end

end
