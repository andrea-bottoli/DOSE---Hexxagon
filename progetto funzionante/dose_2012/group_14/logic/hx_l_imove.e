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
		end

	deserialize(state: STRING)
		-- Initializes move from serialized state.
		deferred
		end

end
