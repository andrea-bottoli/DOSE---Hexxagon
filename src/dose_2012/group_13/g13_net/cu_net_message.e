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

	LINKED_LIST [STRING]

create
	make
end
