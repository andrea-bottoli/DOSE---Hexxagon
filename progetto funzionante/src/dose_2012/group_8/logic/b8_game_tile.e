note
	description: "Logic component rapresenting a game tile"
	author: "Andrea Braschi"
	date: "8/11/2012"
	revision: "0.1"

class
	B8_GAME_TILE

create
	make

feature {NONE} -- Initialization

	make
			-- Initialization for `Current'.
		do

		end

feature {NONE} --attributes

	color: INTEGER
			-- coloro id

	monomini: ARRAY[B8_MONOMINO]
			-- list of monomini composing the game tile

feature -- public functions

	rotate(side:INTEGER)
			--rotate the game tile (side=0->right || side=1->left)
		do

		end

	place(x,y: INTEGER; board: B8_BOARD)
			--place the game tile on the game board
		require
			x_in_the_board: x>=0 and x<=board.get_width
			y_in_the_board: y>=0 and y<=board.get_height
		do
		ensure
			is_placed_correctli: is_placed_correctly
		end

	check_rule(tile: B8_GAME_TILE):BOOLEAN
			-- true if this tile has nothing in contrary about placing here the passed tile	
		require
			is_placed_correctly: tile.is_placed_correctly
		do
		end

	is_placed_correctly():BOOLEAN
			--true if the tile has no monomini with coordinates equal to -1
		do

		end


feature {NONE} -- private functions

	is_overlapping(tile: B8_GAME_TILE):BOOLEAN
			--true if the tile placed in this position wil be overlapping with the passed (yet placed) game tile
		require
			is_placed_correctly: tile.is_placed_correctly
		do
		end

	is_neighbor(tile: B8_GAME_TILE):BOOLEAN
				-- true if the tile is near to the passed tile
		require
			is_placed_correctly: tile.is_placed_correctly
		do

		end
feature -- public functions

	get_monmini:like monomini
		--returns the array of monominos
	do
	end


invariant
	correct_id: color>=0 and color<=3

end
