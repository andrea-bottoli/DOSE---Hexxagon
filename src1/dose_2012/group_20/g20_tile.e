note
	description: "Summary description for {G20_TILE}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	G20_TILE
		create
		make,
		make_random

		feature{NONE}
			color1 : G20_COLOR
			color2 : G20_COLOR

		feature{ANY}
		make(argColor1 : G20_COLOR; argColor2 : G20_COLOR)
			do
				color1 := argColor1.twin
				color2 := argColor2.twin
			end

		make_random
			do
				create color1.make_random
				create color2.make_random
			end

		GetColor1: G20_COLOR
			do
				Result := color1.twin
			end

		GetColor2: G20_COLOR
			do
				Result := color2.twin
			end
end --class G20_TILE
