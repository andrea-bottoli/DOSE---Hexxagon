note
	description: "An abstract player definition."
	author: "Daiane Hemerich, Lucélia Chipeaux, Renata De Paris"
	date: "$Date$"
	revision: "$Revision$"

deferred class
	IG_PLAYER

feature -- Status Setting

	make_empty
		do
			--The name of the player is not yet known, and needs to be set later...
		end

	set_name (a_name: STRING)
			--Changes the name of the player
		require
			name_not_empty: a_name /= Void and then not a_name.is_empty
		do
			-- TODO
		ensure
			name_set: name.is_equal (a_name)
		end

feature -- Access

	scoreboard: IG_SCOREBOARD
		-- Score of each player.
	name: STRING
		--Player's name
	id_player: INTEGER
		-- Id of each player.
	status_player: BOOLEAN
		-- If a player is active or not.
	tile_list: ARRAY [IG_TILE]
		-- Available tiles for each player.
	is_master: BOOLEAN
		--If a player is a master or slave (true == master)

invariant
	--Fbesser: Removed this since name could be empty after the call to make_empty
	--valid_name: name /= Void and then not name.is_empty

end
