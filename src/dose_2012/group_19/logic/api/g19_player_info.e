deferred class
	G19_PLAYER_INFO

inherit

	COMPARABLE
		redefine
			is_equal
		end

	HASHABLE
		redefine
			is_equal
		end

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

	hash_code(): INTEGER
	    do
	        result := get_age()
	    end

	is_equal(other: like Current): BOOLEAN
		do
			result := get_nickname().is_equal(other.get_nickname())
				and get_age() = other.get_age()
		end

end
