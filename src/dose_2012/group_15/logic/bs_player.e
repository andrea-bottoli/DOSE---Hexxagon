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

	make(player_number: INTEGER; color: INTEGER)
	require
		valid_number: player_number > 0 and player_number <= 4
		valid_color: color > 0 and color <= 4
	do
		add_tile_set( color )
		player_id := player_number
		player_color := color
		create name.make_empty
		still_playing := true
	ensure
		tiles.count = 21
	end

	make_with_name(player_number: INTEGER; color: INTEGER; a_name: STRING)
	require
		valid_name: a_name /= Void and not a_name.is_empty
	do
		name := a_name
		make(player_number, color)
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

	get_number: INTEGER
	do
		Result:= player_id
	end

	get_remaining_tiles: LINKED_LIST[BS_TILE]
	do
		Result := tiles
	end

	get_name: STRING
	do
		Result := name
	end

	set_name(a_name: STRING)
	require
		valid_name: a_name /= Void and not a_name.is_empty
	do
		name := a_name
	end

	is_still_playing: BOOLEAN
	do
		Result := still_playing
	end

	player_surrend
	do
		still_playing := false
	end

	type: INTEGER = 0

	get_color: INTEGER
	do
		Result := player_color
	end

-- Paolo: changed this from private to protected, as BS_NET_PLAYER needs to now his color and id.
feature {BS_PLAYER}
	name: STRING
	player_id: INTEGER
	player_color: INTEGER
	still_playing: BOOLEAN

end
