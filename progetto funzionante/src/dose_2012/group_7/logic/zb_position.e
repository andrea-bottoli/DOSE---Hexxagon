note
	description: "The position class Of the Logic Sub Component"
	author: "Milano8"
	date: "13.11.2012"
	revision: "0.0.2"

class
	ZB_POSITION

feature	-- Implementation

x:INTEGER
y:INTEGER

getX():INTEGER
--returns the x value of the position
	require
		true
		do
			--impl
			ensure
				result/=void
		end

getY():INTEGER
--returns the y value of the position
	require
		true
		do
			--impl
			ensure
				result/=void
		end




end
