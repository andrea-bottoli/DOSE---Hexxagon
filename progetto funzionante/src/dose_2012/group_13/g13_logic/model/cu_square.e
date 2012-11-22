note
	description: "A square on the board. Can be a corridor or a room"
	author: ""
	date: "$Date$"
	revision: "$Revision$"

deferred class
	CU_SQUARE

feature -- Access
	x: INTEGER
			-- The horizontal coordinate in the board matrix system

	y: INTEGER
			-- The vertical coordinate in the board matrix system

invariant
	valid_x: x>=0
	valid_y: y>=0
end
