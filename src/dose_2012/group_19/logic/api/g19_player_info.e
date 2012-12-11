deferred class
	G19_PLAYER_INFO

inherit
	COMPARABLE

feature

	get_nickname(): STRING
		deferred
		ensure
      			nickname_is_not_void: result /= void and not result.is_empty()
		end

	get_age(): INTEGER
		deferred
		ensure
      			age_is_valid: result > 0
		end

--	is_equal(): BOOLEAN
--		deferred
--		end

end
