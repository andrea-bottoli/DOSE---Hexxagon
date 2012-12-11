note
	description: "Summary description for {HX_L_MOVE}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	HX_L_MOVE

inherit
	HX_L_IMOVE

create
	make

feature {NONE} -- Initialization

	make (a_source: HX_L_ILOCATION; a_destination: HX_L_ILOCATION)
			-- Initialization for `Current'.
		do
			source := a_source
			destination := a_destination
		end
end
