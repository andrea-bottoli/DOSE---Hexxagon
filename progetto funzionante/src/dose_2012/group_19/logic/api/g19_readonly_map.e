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
	  		type_is_valid: result.type >= 1
		end

	get_avaible_cells(player: G19_PLAYER_INFO; action_type: STRING): SET[TUPLE[x: INTEGER; y: INTEGER]]
		require
			player_is_valid: player /= void
			action_type_is_valid: action_type.is_empty /= true
		deferred
		ensure
			result_is_not_void: result /= void
			result_is_not_empty: result /= true
		end

	get_size(): TUPLE[width, height: INTEGER]
		deferred
		ensure
      			result_is_valid: result /= void
      			width_is_valid: 1 <= result.width and result.width <= 20
      			height_is_valid: 1 <= result.height  and result.height <= 20
		end
end
