note
	description: "Represents the board"
	author: "TEAM Rio Cuarto5"
	date: "$Date$ 09/11/2012"
	revision: "$Revision$ see github repository"

class
	G6_BOARD

create
	make

feature -- Initialization

	make
			-- Create a state with the initial board
		do
		end

feature -- Measurement

	cells: ARRAY [G6_CELL]
			--List of cells of the board, 40 cells

invariant
	board_length: cells.count = 40

end
