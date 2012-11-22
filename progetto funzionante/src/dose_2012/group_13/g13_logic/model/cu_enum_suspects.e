note
	description: "Summary description for {CU_ENUM_SUSPECT}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	CU_ENUM_SUSPECTS
feature --constants
	scarlet: INTEGER once Result:=0 end
	mustard: INTEGER once Result:=1 end
	white: INTEGER once Result:=2 end
	green: INTEGER once Result:=3 end
	peacock: INTEGER once Result:=4 end
	plum: INTEGER once Result:=5 end

feature --access
	get_full_name(a_suspect:INTEGER): STRING
		-- Returns the name of the one suspects
		require
			valid_suspect: a_suspect>=0 and a_suspect<=5
		do
		ensure
			valid_name: Result /= void
		end
end
