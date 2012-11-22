note
	description: "Summary description for {TILE_PULL}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	G10_TILE_PULL

create
	make

feature
	Pull:ARRAYED_LIST[G10_TILE]
	IsTileTaken:ARRAYED_LIST[BOOLEAN]
feature
	GenerateNextTile():G10_TILE
	 do  end
	IsEmpty():BOOLEAN
	 do  end

-- mutator method.
feature
	add_tile_to_pile(tile : G10_TILE) -- routine ads a tile to the pile.
	do
	end

	initialize_pile() -- routine initializes the pile with all the tiles of the game.
	do
	end
-- constructors.
feature
	make
	do
	end

end
