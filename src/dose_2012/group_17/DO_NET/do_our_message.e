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


feature {ANY} -- creation

--	make
--	do

--	end

feature {ANY}

	id: INTEGER

	contents: LINKED_LIST[STRING]

	update: BOOLEAN

	set_id (new_id: INTEGER)
	do

	end

--	empty
--	do
--	end

--	append(s: STRING)
--	do
--	end

--	set_update
--	do
--	end

--	unset_update
--	do
--	end


end
