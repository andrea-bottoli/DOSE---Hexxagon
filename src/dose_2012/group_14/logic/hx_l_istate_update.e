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
		end

	deserialize(state: STRING)
		-- Initializes state update from serialized state.
		deferred
		end
end
