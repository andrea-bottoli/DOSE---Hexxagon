deferred class
	G19_STEP_CHECKER

feature

	is_step_valid(map: G19_MAP; player: G19_PLAYER_INFO; step: G19_STEP): BOOLEAN
		require
			map_is_not_void: map /= void
			player_is_not_void: player /= void
			step_is_not_void: step /= void
		deferred
		end

end
