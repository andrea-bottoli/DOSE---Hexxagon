deferred class
	G19_READONLY_MAP

feature

	get_cell_at(x, y: INTEGER): TUPLE[type: INTEGER; owner: G19_PLAYER_INFO]
		require
			x_position_is_valid: 1 <= x and x <= 20
			y_position_is_valid: 1 <= y and y <= 20
		deferred
		ensure
	 		cell_in_not_void: result /= void
			-- can build on these
	 		type_is_valid: result.type = ('a').code()   -- Grass
	 		              or result.type = ('b').code() -- Canyon
	 		              or result.type = ('c').code() -- Desert
	 		              or result.type = ('d').code() -- Flower field
	 		              or result.type = ('e').code() -- Forest
			-- can't build on these
	 		              or result.type = ('f').code() -- Castle
	 		              or result.type = ('g').code() -- Water
	 		              or result.type = ('h').code() -- Mountain
	 		              or result.type = ('i').code() -- Oracle
	 		              or result.type = ('j').code() -- Farm
	 		              or result.type = ('k').code() -- Tavern
	 		              or result.type = ('l').code() -- Tower
	 		              or result.type = ('m').code() -- Harbor
	 		              or result.type = ('n').code() -- Paddock
	 		              or result.type = ('o').code() -- Barn
	 		              or result.type = ('p').code() -- Oasis

		end

	get_avaible_cells(player: G19_PLAYER_INFO; action_type: STRING): SET[TUPLE[x, y: INTEGER]]
		require
			player_is_valid: player /= void
			action_type_is_valid: action_type.is_empty() /= true
		deferred
		ensure
			result_is_not_void: result /= void
		end

	get_size(): TUPLE[width, height: INTEGER]
		deferred
		ensure
      			result_is_valid: result /= void
      			width_is_valid: 1 <= result.width and result.width <= 20
      			height_is_valid: 1 <= result.height  and result.height <= 20
		end
end
