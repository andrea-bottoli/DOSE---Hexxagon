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
		deferred
		end

	is_empty: BOOLEAN
		-- Is this place empty?
		require
			exists: exists
		deferred
		end

	player: HX_L_IPLAYER
		-- Player, to who belongs a stone placed in this place.
		require
			non_empty: not is_empty
		deferred
		ensure
			non_void: Result /= Void
		end

end
