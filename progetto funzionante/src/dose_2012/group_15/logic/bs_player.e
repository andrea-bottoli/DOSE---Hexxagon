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
	make

feature

	make(player_number: INTEGER; a_initial_color: INTEGER)
	require
		valid_number: player_number > 0 and player_number <= 4
		valid_color: a_initial_color > 0 and a_initial_color <= 4
	do
		add_tile_set( a_initial_color )
		player_id := player_number
	ensure
		tiles.count = 21
	end

	do_move(board: BS_BOARD): BS_MOVE
	do

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

feature {NONE}
	player_id: INTEGER

end
