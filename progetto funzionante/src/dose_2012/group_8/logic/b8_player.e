note
	description: "Logic ocmponent rapresenting a player of th blockus game"
	author: "Andrea Braschi"
	date: "8/11/2012"
	revision: "0.1"

class
	B8_PLAYER

create
	make

feature {NONE} -- Initialization

	make
			-- Initialization for `Current'.
		do

		end

feature {NONE} -- attributes

	id:INTEGER
			-- user's id

	tiles: ARRAY[B8_GAME_TILE]
			-- user's game tiles
			
	last_placed: B8_GAME_TILE
			-- last placed tile

feature -- public functions

	get_tiles: like tiles
			-- returns the array of tails
		do
		end

	add_tile(tile: B8_GAME_TILE)
			-- add tile in the array
		do
		end

	can_make_a_move(board: B8_BOARD):BOOLEAN
			-- true if the player can play
		do
		end

	has_a_game_tile(tile: B8_GAME_TILE):BOOLEAN
			-- true if the passed tile is in the array
		do
		end

	get_score:INTEGER
			-- returns the users score
		do
		end

	get_last_placed:like last_placed
			-- returns the last placed tile
		do
		end
		
	set_last_placed(tile:like last_placed)
			-- set the last placed tiles
		do
		end

invariant
	correct_id: id>=0 and id<=3

end
