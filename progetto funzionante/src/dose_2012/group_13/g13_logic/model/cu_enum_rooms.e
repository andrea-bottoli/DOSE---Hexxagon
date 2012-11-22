note
	description: "Summary description for {CU_ENUM_ROOMS}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	CU_ENUM_ROOMS
feature --constants
	kitchen: INTEGER once Result:=0 end
	ball_room: INTEGER once Result:=1 end
	conservatory: INTEGER once Result:=2 end
	dining_room: INTEGER once Result:=3 end
	billiard_room: INTEGER once Result:=4 end
	library: INTEGER once Result:=5 end
	lounge: INTEGER once Result:=6 end
	hall: INTEGER once Result:=7 end
	study: INTEGER once Result:=8 end

feature --access
	get_full_name(a_room:INTEGER): STRING
		-- Returns the name of the one room
		require
			valid_room: a_room>=0 and a_room<=8
		do
		ensure
			valid_name: Result/=void
		end
end
