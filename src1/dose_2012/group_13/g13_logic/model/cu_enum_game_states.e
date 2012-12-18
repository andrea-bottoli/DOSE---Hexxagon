note
	description: "Summary description for {CU_ENUM_GAME_STATES}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	CU_ENUM_GAME_STATES
feature
	initializing: INTEGER = 0
	starting:INTEGER = 1
	dices:INTEGER = 2
	moving:INTEGER = 3
	suggesting:INTEGER = 4
	ending: INTEGER = 5
end
