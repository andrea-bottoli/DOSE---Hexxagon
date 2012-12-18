deferred class
	G19_GAME

feature

	start()
		deferred
		end

	get_avaible_actions_count(player: G19_PLAYER_INFO): TABLE[INTEGER, STRING]
		require
			player_exists: player /= void
		deferred
		ensure
			result_is_valid: result /= void
		end

	get_players(): TWO_WAY_SORTED_SET[G19_PLAYER_INFO]
		deferred
		ensure
			result_exists: result /= void
			players_count_is_valid: result.count() > 2 and result.count() <= 4
		end

	get_map(): G19_READONLY_MAP
		deferred
		ensure
        		result_exists: result /= void
		end

end
