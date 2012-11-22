note
	description: "Summary description for {CU_ENUM_GAME_STATES}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	CU_ENUM_GAME_STATES
feature
	initializing: INTEGER once Result:=0 end
	starting:INTEGER once Result:=1 end
	dices:INTEGER once Result:=2 end
	moving:INTEGER once Result:=3 end
	suggesting:INTEGER once Result:=4 end
	ending: INTEGER once Result:=5 end
end
