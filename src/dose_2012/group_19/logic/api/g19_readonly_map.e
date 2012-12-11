deferred class
	G19_READONLY_MAP

feature

	get_cell_at(x, y: INTEGER): TUPLE[type: CHARACTER; owner: G19_PLAYER_INFO]
		require
			x_position_is_valid: 1 <= x and x <= 20
			y_position_is_valid: 1 <= y and y <= 20
		deferred
		ensure
	 		cell_in_not_void: result /= void
			--can build on this
	 		type_is_valid: result.type = 'a' or --Grass
	 		               result.type = 'b' or --Canyon
	 		               result.type = 'c' or --Desert
	 		               result.type = 'd' or --Flower field
	 		               result.type = 'e' or --Forest
			--can't build on this
	 		               result.type = 'f' or --Castle
	 		               result.type = 'g' or --Water
	 		               result.type = 'h' or --Mountain
	 		               result.type = 'i' or --Oracle
	 		               result.type = 'j' or --Farm
	 		               result.type = 'k' or --Tavern
	 		               result.type = 'l' or --Tower
	 		               result.type = 'm' or --Harbor
	 		               result.type = 'n' or --Paddock
	 		               result.type = 'o' or --Barn
	 		               result.type = 'p'    --Oasis

		end

	get_avaible_cells(player: G19_PLAYER_INFO; action_type: STRING): TABLE[SET[TUPLE[x: INTEGER; y: INTEGER]], STRING]
			-- i'm not sure about return format, so we should discuss this
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
