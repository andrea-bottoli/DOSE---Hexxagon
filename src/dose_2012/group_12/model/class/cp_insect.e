note
	description: "Summary description for {CP_INSECT}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	CP_INSECT

inherit
	CP_IINSECT
		redefine move end

create
	make

feature

	color: INTEGER

	position: CP_POSITION

	onboard: BOOLEAN

	adjacent: ARRAY[INTEGER]


	setOnboard
		do
        	-- must be implemented
		end

	move
		do
			--must be implemented
		end


	make
			-- Initialization for `Current'.
		do

		end




end
