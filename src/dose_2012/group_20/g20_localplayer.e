note
	description: "Summary description for {LOCALPLAYER}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	G20_LOCALPLAYER

inherit
	G20_PLAYER
	redefine move, invalid_move end

create
	make

feature
	make
	do

	end
	
	move(currentPlayer: INTEGER) : G20_MOVEMENT
		do

		end

	invalid_move
		do

		end

end
