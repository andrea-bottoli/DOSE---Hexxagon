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
	make(x_value, y_value: INTEGER)
	require
		greater_then_zero: x_value > 0 and y_value > 0
	do
		position_x := x_value
		position_y := y_value
	end

	x: INTEGER
	do
		Result := position_x
	end

	y: INTEGER
	do
		Result := position_y
	end

feature {NONE}
	position_x: INTEGER
	position_y: INTEGER

end
