note
	description: "Summary description for {CU_NET_MESSAGE}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	CU_NET_MESSAGE

inherit
    STORABLE
    undefine
    	is_equal, copy
    end

	CU_GAME

create
	make
feature
	set_state (a_state: CU_GAME)
	do
		state := a_state
	end
	return_state: CU_GAME
	do
		Result := state
	end
feature {NONE}
	state : CU_GAME
end
