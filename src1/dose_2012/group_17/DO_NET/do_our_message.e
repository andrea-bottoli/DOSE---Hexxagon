note
	description: "Messages between the clients and server."
	author: "Rio Cuarto9"
	date: "13/11/2012"
	revision: "0.0"

class
    DO_OUR_MESSAGE

inherit

	LINKED_LIST[STRING]

	STORABLE
		undefine
			is_equal, copy
		end

create

    make

end
