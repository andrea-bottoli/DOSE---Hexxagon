note
	description: "Interface to a player's move."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

deferred class
	HX_L_IMOVE

feature -- Access

	source: HX_L_ILOCATION
		-- The location of the moved piece.

	destination: HX_L_ILOCATION
		-- The location where to put a piece.

end
