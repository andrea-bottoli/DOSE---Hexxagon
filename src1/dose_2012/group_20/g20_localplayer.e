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

feature
	move : G20_MOVEMENT
		do

		end

	invalid_move
		do

		end

end
