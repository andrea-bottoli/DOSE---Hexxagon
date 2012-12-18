note
	description: "Summary description for {G3_PLAYER_ID}."
	author: "R. Martinez, F. Chiotta, S. Permigiani, G. Scilingo"
	date: "$7 Nov. 2012$"
	revision: "$0.1$"

class
	G3_PLAYER_ID

inherit
	ANY
		redefine
			is_equal
		end

create
	make

feature
	make
			-- make an id for new connection
		do
			id := 0
		end

feature{G3_CONTROLLER, G3_PLAYER_ID}

	set_id(new_id : INTEGER)
			-- only the controller on server mode can performed action
		do
			id := new_id
		end

feature

	is_register : BOOLEAN
		-- true if is a id registered on server
		do
			Result := id > 0 and id <= 4
		end

	get_server_id : G3_PLAYER_ID
		-- always return a server id, can use for construct new message to server.
		local
			server_id : G3_PLAYER_ID
		do
			create server_id.make
			server_id.set_id(1)
			Result := server_id

		end

	is_equal (id_ : G3_PLAYER_ID ) : BOOLEAN
		do
			Result := id.is_equal (id_.id)
		end

feature -- internal representation

	id : INTEGER

	-- Kind of ids:
	-- -1	   Refuse
	--  0 	   New connection petition (not registered has yet)
	--  1 	   Player id of player on server
	--  2 to 4 Player id of cliente mode

end
