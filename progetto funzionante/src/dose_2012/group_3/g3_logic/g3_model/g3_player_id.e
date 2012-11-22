note
	description: "Summary description for {G3_PLAYER_ID}."
	author: "R. Martinez, F. Chiotta, S. Permigiani, G. Scilingo"
	date: "$7 Nov. 2012$"
	revision: "$0.1$"

class
	G3_PLAYER_ID

create
	make

feature
	make
		-- make id for new connection
	do
	end

feature{G3_CONTROLLER}

	set_id(new_id : INTEGER)
		-- only the controller on server mode can performed action
	do

	end

feature

	is_register : BOOLEAN
		-- true if is a id registered on server

	get_server_id : G3_PLAYER_ID
		-- always return an server id, can use for construct new message to server.


feature{ANY}

	id : INTEGER

end
