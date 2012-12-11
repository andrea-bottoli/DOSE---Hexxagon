note
	description: "Summary description for {CP_MOVE}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	CP_MOVE

inherit
	CP_IFMOVE

create
	make

feature {NONE} -- Initialization

	make (ssource: CP_IFPLACE; ddestination: CP_IFPLACE)
		do
			place_from := ssource
			place_to := ddestination
		end
end
