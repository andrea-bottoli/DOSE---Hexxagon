note
	description: "An object that represents a player across the network."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	IG_NETWORK_PLAYER

inherit
	IG_PLAYER

create
	make_with_network

feature {NONE} -- Initialization

	make_with_network (a_network: IG_NETWORK)
		require
			network_not_void: a_network /= Void
		do

		end

feature -- Access

	next_move: IG_MOVE
		do
		end

end
