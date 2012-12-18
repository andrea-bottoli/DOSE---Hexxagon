deferred class
	G19_STEP_CHECKER

feature

	is_step_valid(game: G19_GAME; step: G19_STEP): BOOLEAN
		require
			game_is_not_void: game /= void
			step_is_not_void: step /= void
		deferred
		end

end
