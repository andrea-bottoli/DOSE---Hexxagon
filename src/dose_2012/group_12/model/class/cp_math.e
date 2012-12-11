note
	description: "Summary description for {CP_MATH}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

--
		--  h = short length (outside)
		--  r = long length (outside)
		--  side = length of a side of the hexagon, all 6 are equal length
		--
		--  h = sin (30 degrees) x side
		--  r = cos (30 degrees) x side
		--
		--		 h
		--	     ---
		--   ----     |r
		--  /    \    |
		-- /      \   |
		-- \      /
		--  \____/
		--
		-- Flat orientation (scale is off)
		--
		--     /\
		--    /  \
		--   /    \
		--   |    |
		--   |    |
		--   |    |
		--   \    /
		--    \  /
		--     \/
		-- Pointy orientation (scale is off)

class
	CP_MATH

	feature
	DegreesToRadians: DOUBLE degrees: DOUBLE
	do

		--http://en.wikipedia.org/wiki/Radians
		Result:= degrees -- * SYSTEM.MATH.PI / 180
	end
end
