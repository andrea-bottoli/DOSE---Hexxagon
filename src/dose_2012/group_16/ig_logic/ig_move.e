note
	description: "Summary description for {IG_MOVE}."
	author: "Daiane Hemerich, Luc�lia Chipeaux, Renata De Paris"
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
			tile_not_empty: a_tile /= Void
		do
			tile := a_tile
		end

feature -- Status Setting
	set_rotation (a_rotation:INTEGER)
		--Rotate the tile in a clockwise rotation
		require
			rotation_valid: a_rotation >= 1 and a_rotation <= 6
		do
			rotation := a_rotation
		ensure
			rotation_set : rotation = a_rotation
		end

	set_position (a_x, a_y:INTEGER)
			--Set the coordinates x and y of a tile
		require
			coords_valid: a_x > 0 and a_y > 0 and a_x < 16 and a_y < 16
		do
			x_position := a_x
			y_position := a_y
		ensure
			position_tile_set_x : x_position = a_x
			position_tile_set_y: y_position = a_y
		end

--feature {IG_AI_PLAYER} -- Status Setting

--	set_points (a_points: INTEGER)
--			-- Set the number of points for this move.
--			-- Only accessible to AI players.
--		require
--			non_negative_points: a_points >= 0
--		do
--			points_for_move := a_points
--		ensure
--			points_set: points_for_move = a_points
--		end

feature -- Access

	tile: IG_TILE
		-- The tile of the move
	x_position: INTEGER
		-- The X coordinate of the move
	y_position: INTEGER
		-- The Y coordinate of the move
	rotation: INTEGER
		--The rotation
--	points_for_move: INTEGER
--		-- The number of points obtained with the move

invariant
	tile_not_empty:tile /= Void
--	coords_valid: x_position > 0 and y_position > 0
--	rotation_valid: rotation >= 1 and rotation <= 6

end
