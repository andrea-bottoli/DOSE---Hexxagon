deferred class
	G19_GAME_RESULT

feature
-- kingdom builders cards:
-- a - Fishermen !
-- b - Merchants
-- c - Discoverers !
-- d - Hermits
-- e - Citizens
-- f - Miners !
-- g - Workers
-- h - Knights !
-- i - Lords
-- j - Farmers !
	get_winners(): SET[G19_PLAYER_INFO]
		deferred
		ensure
	    		winners_is_not_void: result /= void
--	    		players_count_is_valid: result.count > 2 and result.count <= 4
		end

	get_scores(): TABLE[INTEGER, G19_PLAYER_INFO]
		deferred
		ensure
	    		scores_is_not_void: result /= void
--	    		players_count_is_valid: result.count > 2 and result.count <= 4
		end

	get_game(): G19_GAME
		deferred
		ensure
	        	game_is_not_void: result /= void
		end

end
