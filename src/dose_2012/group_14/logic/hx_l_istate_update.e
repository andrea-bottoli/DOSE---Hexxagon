note
	description: "Summary description for {HX_L_ISTATE_UPDATE}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

deferred class
	HX_L_ISTATE_UPDATE

feature -- Access

	serialized(): STRING
		-- Serialized state update.
		deferred
		ensure
			non_void: Result /= Void
		end

	deserialize(state: STRING)
		-- Initializes state update from serialized state.
		require
			non_void: state /= Void
		deferred
		end

	updatedPlaces: LIST[HX_L_IPLACE]
		-- Returns a list of places that changed.
		deferred
		ensure
			non_void: Result /= Void
		end

end
