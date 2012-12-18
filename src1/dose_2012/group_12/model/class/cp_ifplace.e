note
	description: "Summary description for {CP_IFPLACE}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

deferred class
	CP_IFPLACE

feature -- Access

	exists: BOOLEAN
		-- Does this place exists on the board?

	is_empty: BOOLEAN
		-- Is this place empty?
		require
			exists: exists
		deferred
		end

	player: CP_IFPLAYER
		-- Player, to who belongs a stone placed in this place.
		require
			non_empty: not is_empty
		deferred
		ensure
			non_void: Result /= Void
		end

	set_player (pplayer: CP_IFPLAYER)
		-- Player, to who belongs a stone placed in this place.
		require
			filled: not is_empty
			not_void: pplayer /= void
		deferred
		end
end
