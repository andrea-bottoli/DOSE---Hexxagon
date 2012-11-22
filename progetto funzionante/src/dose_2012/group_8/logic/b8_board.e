note
	description: "The game board."
	author: "Stefano Di Palma"
	date: "8/11/2012"
	revision: "0.2"

class
	B8_BOARD

create
	make

feature {NONE} -- Initialization

	make
			-- Initialization for `Current'.
		do

		end

feature {NONE} -- Attribute

	placed_game_tales:ARRAY[B8_GAME_TILE]
			-- the game tales which are placed on the board

	holes:ARRAY[B8_MONOMINO]
			-- the empty placec of the board

	width:INTEGER
			-- the width of the board

	height:INTEGER
			-- the height of the board

feature -- Access

	get_placed_number:INTEGER
			-- returns the number of placed game tiles
		do
			Result:=placed_game_tales.count
		ensure
			correct_result: Result=placed_game_tales.count
		end

	get_width:INTEGER
			-- returns the width of the board
		do
			Result:=width
		ensure
			correct_result: Result=width
		end

	set_width(a_width: like width)
			-- sets the width of the board
		do
			width := a_width
		ensure
			width_set: width = a_width
		end

	get_height:INTEGER
			-- returns the height of the board
		do
			Result:=height
		ensure
			correct_result: Result=height
		end

	set_height(a_height: like height)
			-- sets the height of the board
		do
			height:=a_height
		ensure
			height_set: height = a_height
		end

invariant
	check_dimension: width>0 and height>0
end
