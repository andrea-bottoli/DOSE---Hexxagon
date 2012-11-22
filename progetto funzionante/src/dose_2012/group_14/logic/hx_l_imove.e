note
	description: "Interace to a player's move."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

deferred class
	HX_L_IMOVE

feature -- Access

	serialized(): STRING
		-- Serialized move.
		deferred
		ensure
			non_void: Result /= Void
		end

	deserialize(state: STRING)
		-- Initializes move from serialized state.
		require
			non_void: state /= Void
		deferred
		end

	player: HX_L_IPLAYER

	type: INTEGER

	source: HX_L_IPLACE

	destination: HX_L_IPLACE


end
