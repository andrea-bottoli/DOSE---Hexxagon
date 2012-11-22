deferred class
	G19_GAME_BUILDER

feature

	add_player(player: G19_PLAYER): INTEGER
		require
			player_is_not_void: player /= void
		deferred
		end

	remove_player(player: G19_PLAYER): INTEGER
		require
			player_is_not_void: player /= void
		deferred
		end

	build(): G19_GAME
		deferred
		end

end
