deferred class
	G19_PLAYER

inherit
	COMPARABLE

feature

	get_info(): G19_PLAYER_INFO
		deferred
		ensure
      			info_is_not_void: result /= void
		end

	on_game_start(game: G19_GAME)
		require
			game_is_not_void: game /= void
		deferred
		end

	on_terrain_card_recieve(game: G19_GAME; terrain_card: INTEGER)
		deferred
		end

	on_waiting_for(game: G19_GAME; player: G19_PLAYER_INFO)
		require
			player_is_not_void: player /= void
		deferred
		end

	on_next_step(game: G19_GAME): G19_STEP
		require
			game_is_not_void: game /= void
		deferred
		ensure
      			step_is_not_void: result /= void
		end

	on_wrong_step(game: G19_GAME; wrong_step: G19_STEP): G19_STEP
		require
			game_is_not_void: game /= void
			wrong_step_is_not_void: wrong_step /= void
		deferred
		ensure
      			step_is_not_void: result /= void
		end

	on_step(game: G19_GAME; player: G19_PLAYER_INFO; step: G19_STEP)
		require
			game_is_not_void: game /= void
			player_is_not_void: player /= void
		deferred
		end

	on_game_end(game: G19_GAME; game_result: G19_GAME_RESULT)
		require
			game_is_not_void: game /= void
			game_result_is_not_void: game_result /= void
		deferred
		end

	is_less alias "<" (other: like Current): BOOLEAN
		do
			result := get_info().is_less(other.get_info())
		end

end
