note
	description: "Summary description for {BS_POSITION}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	BS_POSITION

create
	make

feature
	make(x_position, y_position: INTEGER)
	require
		greater_then_zero: x_position > 0 and y_position > 0
	do
		column_position := x_position
		row_position := y_position
	end

	x: INTEGER
	do
		Result := column_position
	end

	y: INTEGER
	do
		Result := row_position
	end

feature {NONE}
	column_position: INTEGER
	row_position: INTEGER

end
