note
	description: "Summary description for {HX_L_IPLACE}"
	author: ""
	date: "$Date$"
	revision: "$Revision$"

deferred class
	HX_L_IPLACE

feature -- Access

	exists: BOOLEAN
		-- Does this place exists on the board?

	is_empty: BOOLEAN
		-- Is this place empty?
		require
			exists: exists
		deferred
		end

	set_is_empty(a_empty: BOOLEAN)
		-- Set empty.
			require
				exists: exists
			deferred
			ensure
				remove: a_empty implies (player = Void)
			end

	player: HX_L_IPLAYER
		-- Player, to who belongs a stone placed in this place.
		require
			non_empty: not is_empty
		deferred
		ensure
			non_void: Result /= Void
		end

	set_player (a_player: HX_L_IPLAYER)
		-- Player, to who belongs a stone placed in this place.
		require
			non_empty: not is_empty
			non_void: a_player /= void
		deferred
		end
end
