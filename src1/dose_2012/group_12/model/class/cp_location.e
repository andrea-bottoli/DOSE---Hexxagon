note
	description: "Summary description for {CP_LOCATION}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	CP_LOCATION

inherit
	CP_IFLOCATION

feature -- Initialization

	make(xx: INTEGER; yy: INTEGER)
		-- Default constructor.
		require
			positive: xx >= 0 and yy >= 0
		do
			x := xx
			y := yy
		end

end
