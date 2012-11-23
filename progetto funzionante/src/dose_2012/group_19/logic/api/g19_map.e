deferred class
	G19_MAP

inherit
	G19_READONLY_MAP

feature

	build(player: G19_PlAYER_INFO; position: TUPLE[x: INTEGER; y: INTEGER]; action_type: STRING)
		require
			player_is_not_void: player /= void
--			x_is_valid: 1 <= x and x >= 20
--			y_is_valid: 1 <= y and y >= 20
			action_type_is_valid: action_type.is_empty /= true
		deferred
		end

	move(player: G19_PLAYER_INFO; dropped: TUPLE[x: INTEGER; y: INTEGER]; created: TUPLE[x: INTEGER; y: INTEGER]; action_type: STRING)
		require
			player_is_not_void: player /= void
			action_type_is_valid: action_type.is_empty /= true
			dropped_x_is_valid: 1 <= dropped.x and dropped.x >= 20
			dropped_y_is_valid: 1 <= dropped.y and dropped.y >= 20
			created_x_is_valid: 1 <= created.x and created.x >= 20
			created_x_is_valid: 1 <= created.y and created.y >= 20
		deferred
		end
end
