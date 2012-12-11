note
	description: "Represents the coordinaes in the hex map of the board"
	author: "Milano4"
	date: "24/11/2012"
	revision: "0.1"

class
	GR11_COORDINATES

inherit
	HASHABLE

create
	make

feature{NONE} --initialization

	make(new_x:INTEGER; new_y:INTEGER)
	--x: x coordinate in the hex map
	--y: y coordinate in the hex map

	require
		x_positive: new_x >= 0
		y_positive: new_y >= 0
	do
		x := new_x
		y := new_y
	end

feature --status access

	x : INTEGER
	--x-coordinate in the hex map
	y : INTEGER
	--y-coordinate in the hex map

	hash_code : INTEGER
	do
		Result := x + y*y
	end

invariant
	x_and_y_positive: x >= 0 and then y >= 0

end
