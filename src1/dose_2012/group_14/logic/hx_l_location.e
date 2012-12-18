note
	description: "Summary description for {HX_L_LOCATION}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	HX_L_LOCATION

inherit
	HX_L_ILOCATION

create
	make

feature -- Initialization

	make(a_x: INTEGER; a_y: INTEGER)
		-- Default constructor.
		require
			non_negative: a_x >= 0 and a_y >= 0
		do
			x := a_x
			y := a_y
		end

end
