note
	description: "An abstract player definition."
	author: "Daiane Hemerich, Lucélia Chipeaux, Renata De Paris"
	date: "$Date$"
	revision: "$Revision$"

class
	IG_PLAYER

create
	make_with_name
	
feature {NONE} -- Implementation

	make_with_name (a_name: STRING)
		require
			name_not_empty: a_name /= Void and then not a_name.is_empty
		do
			set_name (a_name)
			create tiles.make
		end

feature -- Status Setting

	set_name (a_name: STRING)
			--Changes the name of the player
		require
			name_not_empty: a_name /= Void and then not a_name.is_empty
		do
			name := a_name
		ensure
			name_set: name.is_equal (a_name)
		end

	set_scoreboard (a_scoreboard: IG_SCOREBOARD)
			-- Set the scoreboard to `a_scoreboard'.
		require
			scoreboard_not_void: a_scoreboard /= Void
		do
			scoreboard := a_scoreboard
		ensure
			scoreboard_set: scoreboard = a_scoreboard
		end

	add_tile(a_tile: IG_TILE)
		do
			tiles.extend (a_tile)
		end

	replace_tiles(a_tiles_list: LINKED_LIST [IG_TILE])
		do
			tiles := a_tiles_list
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
	tiles: LINKED_LIST [IG_TILE]
		-- Available tiles for each player.
	is_master: BOOLEAN
		--If a player is a master or slave (true == master)

invariant
	--Fbesser: Removed this since name could be empty after the call to make_empty
	--valid_name: name /= Void and then not name.is_empty
	tiles /= Void

end
