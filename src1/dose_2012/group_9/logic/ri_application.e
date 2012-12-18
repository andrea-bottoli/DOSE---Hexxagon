note
	description : "RISKAPI application root class"
	date        : "$Date$"
	revision    : "$Revision$"

class
	RI_APPLICATION

inherit
	ARGUMENTS

create
	make

feature {NONE} -- Initialization
ap:RI_PLAYER
	make
			-- Run application.
		do
			--| Add your code here
			print ("Hello Eiffel World!%N")


		end



end
