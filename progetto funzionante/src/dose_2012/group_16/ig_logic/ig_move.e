note
	description: "Summary description for {IG_MOVE}."
	author: "Daiane Hemerich, Lucélia Chipeaux, Renata De Paris"
	date: "$Date$"
	revision: "$Revision$"

class
	IG_MOVE

create
	make_with_tile

feature -- Initialization

	make_with_tile (a_tile:IG_TILE)
			--Create a new move for a tile.
		require
			tile_not_empty:a_tile /= Void
			a_tile.status_tile = "b"
		do
			-- TODO
		ensure
			tile_set: a_tile.status_tile="a"
		end

feature -- Status Setting
	set_rotation (a_rotation:INTEGER)
		--Rotate the tile in a clockwise rotation
		require
			rotation_valid: a_rotation >= 1 and a_rotation <= 6
		do
			--TODO
		ensure
			rotation_set : rotation = a_rotation
		end

set_position (a_x, a_y:INTEGER)
		--Set the coordinates x and y of a tile
		require
			coords_valid: a_x > 0 and a_y > 0 and a_x < 16 and a_y < 16
		do
			--TODO
		ensure
			position_tile_set_x : x_position = a_x
			position_tile_set_y: y_position = a_y
		end

feature -- Access
	tile: IG_TILE
		-- The tile of the move
	x_position: INTEGER
		-- The X coordinate of the move
	y_position: INTEGER
		-- The Y coordinate of the move
	rotation: INTEGER
		--The size of the rotation

invariant
	--Fbesser
	tile_not_empty:tile /= Void
	--Fbesser
	coords_valid: x_position > 0 and y_position > 0
	rotation_valid: rotation >= 1 and rotation <= 6

end
