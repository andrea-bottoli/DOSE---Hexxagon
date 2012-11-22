note
	description: "Summary description for {G10_GAME}."
	author: "Eleytherios S. Benisis"
	date: "$Date$ 19/11"
	revision: "$carcassone's logic component's API"

class
	G10_GAME

create
	make

-- attributes
feature{NONE}
	terrain : G10_MAP
	current_players_tile : G10_TILE
	current_player : G10_PLAYER
	players : LIST[G10_PLAYER]
	pile : G10_TILE_PULL

-- constructors
feature{ANY}
	make()
	do
	end

-- accesor methods
feature{ANY}
	get_current_player_tile_id() : INTEGER -- routine returns the current players tile id.
	do
	end

	get_current_player_tile_state() : INTEGER -- routine returns the state (degrees rotated ) of the current players tile.
	do
	end

	get_current_player_tile() : G10_TILE -- routine returns the current players tile.
	do
	end

	generate_current_player_tile() : G10_TILE -- routine generates and returns a new tile to be used by the current player.
	do
	end

	get_tile_from_terrain(x : INTEGER y : INTEGER) : G10_TILE -- routine returns the tile located in (x,y) coordinates in the terrain.
	do
	end

	get_tile_id(tile : G10_TILE) : INTEGER -- routine returns the id of the tile.
	do
	end

	get_tile_state(tile : G10_TILE) : INTEGER -- routine returns the state of the tile.
	do
	end

	get_tile_status(tile : G10_TILE) : STRING -- routine returns the status of the tile (status could be available , empty , not available , filled etc. we could discus about it.)
	do
	end

	get_tile_chip_position(tile : G10_TILE) : INTEGER -- routine returns the potition of the chip located in tile(position could be (1-9 , we could discus about it).
	do
	end

	get_tile_chip_id(tile : G10_TILE) : INTEGER -- routine returns the chip id of the tile.
	do
	end

	get_terrain_potition_status(x : INTEGER y : INTEGER) : STRING -- routine returns the status of the tile located in (x,y) coordinates of the terrain.
	do
	end

	get_players_list() : LIST[G10_PLAYER] -- routine returns a collection with the players of the game.
	do
	end

	get_players_name(p : G10_PLAYER) : STRING -- routine returns the name of player p
	do
	end

	get_players_score(p : G10_PLAYER) : INTEGER -- routine returns the score of player p
	do
	end

	get_players_chips_number(p : G10_PLAYER) : INTEGER -- routine returns the score of player p
	do
	end

	get_current_player() : G10_PLAYER -- routine returns the current player.
	do
	end

	get_length_players_list() : INTEGER -- routine returns the length of the players list.
	do
	end

-- observer methods.
feature{ANY}
	is_tile_available(tile : G10_TILE) : BOOLEAN -- routine returns true if the tile status is available.
	do
	end

	is_terrain_position_empty(x : INTEGER y: INTEGER) : BOOLEAN -- routine returns true if the tile  with (x,y) coordinates status is empty
	do
	end

	is_tile_filled(tile : G10_TILE) : BOOLEAN  -- routine returns true if the tile status is filled
	do
	end

	is_empty_players_list() : BOOLEAN -- routine returns true if players list is empty else false.
	do
	end

	match_tile_to_terrain(x : INTEGER y : INTEGER tile : G10_TILE) : BOOLEAN -- routine returns true if tile matches to (x,y) coordinates of the tarrain and it can be places there.
	do
	end

	tile_has_chip(tile : G10_TILE) : BOOLEAN -- routine returns true if tile has any chips else false.
	do
	end

-- mutator methods.
feature{ANY}
	end_turn() -- routine sets the next player in queue the new current player.
	do
	end

	set_tile_state(tile : G10_TILE state : INTEGER) -- routine sets the tile state to state
	do
	end

	set_tile_status(tile : G10_TILE status : STRING) -- routine sets the tile state to status
	do
	end

	set_tile_id(tile : G10_TILE id : INTEGER) -- routine sets tile's id to id
	do
	end

	add_player_to_list(p : G10_PLAYER) -- routine adds player p in the players list
	do
	end

	update_game(m : G10_MESSAGE) -- routine takes a message , parses it and then updates the game regarding the move it decodes from message
	do
	end

	rotate_current_players_tile() -- routine rotates the current players tile to 90 degrees at time.
	do
	end

	set_current_player(p : G10_PLAYER) -- routine sets p player the current player of the game.
	do
	end

	set_players_list(list : LIST[G10_PLAYER]) -- routine sets the players_list attribute to list.
	do
	end

	update_player_score(p : G10_PLAYER score : INTEGER) -- routine sets the player's p score to score.
	do
	end

	update_players_chip_number(p : G10_PLAYER chip_num : INTEGER) -- routine sets the player's p chip number to chip_num.
	do
	end

	set_current_player_tile(tile : G10_TILE) -- routine sets the current player tile to tile.
	do
	end

	set_tile_to_terrain(x : INTEGER y : INTEGER tile : G10_TILE) -- routine sets the tile to the terrain in (x,y) position.
	do
	end

	set_tile_chip_id(tile : G10_TILE chip_id : INTEGER) -- routine sets the tile's chip id to chip_id.
	do
	end

	update_terrain_status() -- routine updates the status of all the terrain. according to the current player tile.
	do
	end

end
