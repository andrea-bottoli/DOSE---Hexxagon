note
	description: "Summary description for {BS_PLAYER}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	BS_PLAYER

inherit
	BS_TILE_SET

create
	make, make_with_name

feature

	make(player_number: INTEGER; color: INTEGER; type: INTEGER)
	require
		valid_number: player_number > 0 and player_number <= 4
		valid_color: color > 0 and color <= 4
	do
		add_tile_set( color )
		player_id := player_number
		player_color := color
		name := "Default name"
		still_playing := true
		player_type := type
	ensure
		tiles.count = 21
	end

	make_with_name(player_number: INTEGER; color: INTEGER; a_name: STRING; type: INTEGER)
	require
		valid_name: a_name /= Void and not a_name.is_empty
	do
		make(player_number, color, type)
		name := a_name
	end

	do_move(board: BS_BOARD): BS_MOVE
	do
		-- Paolo: this should be deferred
	end

	remove_tile( tile_played: BS_TILE )
		--remove tile from player
		--confirming correct move so piece must be deleted
	local
		tile_index : INTEGER
	do
		tile_index := tiles.index_of (tile_played,1)

		if tile_index > 0 then
			tiles.go_i_th (tile_index)
			tiles.remove
			tiles.start
		end
	end

	reset_set
	do
		tiles := void
		add_tile_set(player_color)
	end

	get_remaining_tiles: LINKED_LIST[BS_TILE]
	do
		Result := tiles
	end

	get_number: INTEGER
	do
		Result:= player_id
	end

	get_name: STRING
	do
		Result := name
	end

	get_color: INTEGER
	do
		Result := player_color
	end

	get_type: INTEGER
	do
		Result := player_type
	end

	is_still_playing: BOOLEAN
	do
		Result := still_playing
	end

	player_surrend
	do
		still_playing := false
	end

	warn_bad_move
	do

	end

feature {BS_GAME}

	set_name(a_name: STRING)
	require
		valid_name: a_name /= Void and not a_name.is_empty
	do
		name := a_name
	ensure
		name = a_name
	end

	set_number(new_number: INTEGER)
	require
		valid_number: new_number > 0 and new_number <= 4
	do
		player_id := new_number
	ensure
		player_id = new_number
	end

	set_color(new_color: INTEGER)
	require
		valid_color: new_color > 0 and new_color <= 4
	do
		player_color := new_color
	ensure
		player_color = new_color
	end




feature {NONE} -- {BS_PLAYER, BS_GAME}
	player_id: INTEGER
	name: STRING
	player_color: INTEGER
	player_type: INTEGER

	still_playing: BOOLEAN

end
