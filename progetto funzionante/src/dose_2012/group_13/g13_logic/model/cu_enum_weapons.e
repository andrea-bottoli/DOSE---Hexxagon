note
	description: "A class for enumarating the weapons of the game."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	CU_ENUM_WEAPONS
feature --constants
	rope: INTEGER once Result:=0 end
	lead_pipe: INTEGER once Result:=1 end
	knife: INTEGER once Result:=2 end
	wrench: INTEGER once Result:=3 end
	candlestick: INTEGER once Result:=4 end
	pistol: INTEGER once Result:=5 end

feature --Access
	get_full_name(a_weapon: INTEGER): STRING
		-- Returns the name of the one weapon
		require
			valid_room: a_weapon>=0 and a_weapon<=5
		do
		ensure
			valid_name: Result /= void
		end
end
