note
	description: "Summary description for {HX_A_AI}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	HX_A_AI

create
	make

feature --intialization

	e: HX_A_ENGINE

	make(depth: INTEGER)
	--Constructor for class HX_A_AI
	do
	ensure
		non_voide: e /= Void
	end

feature

	getMovement(board: HX_L_IBOARD): HX_L_IMOVE
	--returnrs the movement the AI will do in a given state
	require
		non_void: board /= Void
	do
	ensure
		non_void: Result /= Void
	end
end
