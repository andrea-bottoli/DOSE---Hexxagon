note
	description: "Summary description for {G10_GAME}."
	author: "Anastasia"
	date: "$Date$ 19/11"
	revision: "$carcassone's logic component's API"

class
	G10_GAME
create
	make

-- attributes
feature{NONE}
	Map : G10_MAP
	CurrentPlayerTile : G10_TILE
	CurrentPlayer : G10_PLAYER
	Players : G10_PLAYERS
	TilePull : G10_TILE_PULL
	is_finished: BOOLEAN


feature {G10_LOBBY_USER, G10_HOST} -- constructor
	make
	do
		create Map.make()
		create Players.make
		create TilePull.make()
		create CurrentPlayerTile.make
		is_finished := false
		CurrentPlayer:=void
		CurrentPlayerTile:=void
	end


-- mutator methods.
feature{ANY}
	end_turn() -- routine sets the next player in queue the new current player.
	do
		CurrentPlayer := players.get_players().at(Players.generate_next_player())
	end

	set_tile_rotation(tile : G10_TILE rotation : INTEGER) -- routine sets the tile state to state
	do
		tile.set_rotation(rotation)
	end

	set_tile_status(tile : G10_TILE status : INTEGER) -- routine sets the tile state to status
	do
		tile.set_rotation (status)
	end

	set_tile_id(tile : G10_TILE id : INTEGER) -- routine sets tile's id to id
	do
	end

	add_player_to_list(p : G10_PLAYER) -- routine adds player p in the players list
	do
		players.add_player (p)
	end


	update_game(m : G10_CRSN_MESSAGE) -- routine takes a message , parses it and then updates the game regarding the move it decodes from message
	do
	end

	rotate_current_players_tile_counterclockwise() -- routine rotates the current players tile to 90 degrees at time.
	do
		CurrentPlayerTile.rotatecounterclockwise()
	end

	--set current player for the turn and for player IsCurrent flag is set to TRUE
	--unsafe method! use set_current_player_by_id() method for safety
	set_current_player(p : G10_PLAYER) -- routine sets p player the current player of the game.
	do
		Players.set_current_player(p)
		CurrentPlayer:=p
	end

	set_current_player_by_id(id :INTEGER) -- routine sets p player the current player of the game.
	do
		Players.set_current_player_by_id(id)
		CurrentPlayer:=Players.get_players().at (Players.get_current_player_id())
	end

	get_current_player():G10_PLAYER
	do
		Result:=CurrentPlayer
	end

	get_current_player_id:INTEGER
	do
		Result:=Players.get_current_player_id()
	end

	set_players_list(list : ARRAYED_LIST[G10_PLAYER]) -- routine sets the players_list attribute to list.
	do
		Players.set_players(list)
	end

	update_player_score(p : G10_PLAYER score : INTEGER) -- routine sets the player's p score to score.
	do
		p.set_score (score)
	end

	update_players_chip_number(p : G10_PLAYER chip_num : INTEGER) -- routine sets the player's p chip number to chip_num.
	do
		p.set_sparechipsamount (chip_num)
	end

	set_current_player_tile(tile : G10_TILE) -- routine sets the current player tile to tile.
	do
		CurrentPlayerTile:=tile
	end

	set_tile_to_terrain(pos: G10_POSITION tile : G10_TILE playerID: INTEGER) -- routine sets the tile to the terrain in (x,y) position.
	do
		Map.put_tile (tile, pos, playerID)
	end

	set_tile_chip_id(tile : G10_TILE chip_id : INTEGER) -- routine sets the tile's chip id to chip_id.
	do

	end

	update_terrain_status() -- routine updates the status of all the terrain. according to the current player tile.
	do
	end

-- accesor methods
feature{ANY}

	get_current_player_tile() : G10_TILE -- routine returns the current players tile.
	do
		Result:=CurrentPlayerTile
	end

	generate_current_player_tile()  -- routine generates and stores a new tile from tile pull to current player tile to be used by the current player.
	do
		currentplayertile := TilePull.generatenexttile
	end

	get_tile_from_terrain(x : INTEGER y : INTEGER) : G10_TILE -- routine returns the tile located in (x,y) coordinates in the terrain.
	do
		Result:=Map.get_tile(x, y)
	end

	get_tile_id(tile : G10_TILE) : INTEGER -- routine returns the id of the tile.
	do
		Result:=TilePull.index_of (tile)
	end

	get_tile_rotation(tile : G10_TILE) : INTEGER -- routine returns the state of the tile.
	do
		Result:=tile.get_rotation()
	end

	get_tile_status(pos: G10_POSITION tile: G10_TILE) : INTEGER -- routine returns the status 0 - pos taken, 1 - we can put tile there, 2 - we cannot
	do
		if (Map.get_tile (pos.x, pos.y) /= void) then
			Result:=0
		elseif (Map.can_tile_be_placed(tile,pos) = true) then
			Result:=1
		else
			Result:=2
		end
	end

	get_tile_chip_position(tile : G10_TILE) : TUPLE[i:INTEGER; j:INTEGER]-- routine returns the potition of the chip located in tile(position could be (1-9 , we could discus about it).
	do
		Result:=Tile.findChip()
	end

	get_tile_chip_id(tile : G10_TILE) : INTEGER -- routine returns the chip id of the tile.
	local
		t:TUPLE[i:INTEGER j:INTEGER]
	do
		t:=get_tile_chip_position(tile)
		Result:=tile.getTilePart(t.i, t.j).getChip().get_chip_code()
	end

	get_map_position_status(ThePos:G10_POSITION) : INTEGER -- routine returns the status of the tile located in (x,y) coordinates of the terrain.
	-- status: 0 - occupied, 1 - we can put tile there, 2 - we cannot
	do
		if( Map.get_tile (ThePos.get_x(),ThePos.get_y()) /= void) then
			Result := 0
		elseif ( Map.can_tile_be_placed(CurrentPlayerTile, ThePos) = true ) then
			Result := 1
		else
			Result := 2
		end
	end

	get_players_list() : G10_PLAYERS -- routine returns a collection with the players of the game.
	do
		Result := Players
	end

	get_players_arrayed_list() : ARRAYED_LIST[G10_PLAYER] -- routine returns a collection with the players of the game.
	do
		Result := Players.get_players
	end

	get_players_list_names() : ARRAYED_LIST[STRING] -- routine returns a collection with the player names of the game.
	do
	end

	get_first_player_name : STRING -- this is a test routine that returns the first players name.
	require
		players_list_not_empty : players.get_players.is_empty = false
	do
		result := players.get_players.i_th (1).get_name
	ensure
		players_list_not_mutated : players.get_players.is_equal (old players.get_players)
	end

	get_players_name(p : G10_PLAYER) : STRING -- routine returns the name of player p
	do
		Result := p.get_name()
	end

	get_players_score(p : G10_PLAYER) : INTEGER -- routine returns the score of player p
	do
		Result:=p.get_score()
	end

	get_players_chips_number(p : G10_PLAYER) : INTEGER -- routine returns the score of player p
	do
		Result:=p.get_spareChipsAmount()
	end

	get_length_players_list() : INTEGER -- routine returns the length of the players list.
	do
		Result:=PLayers.get_players.count
	end

-- observer methods.
feature{ANY}
--in pool or on map?      Answer: this is a tile on the map...the method returns true if the state is 1(available to put a tile on)
										-- maybe u will need to add i,j integers to know the coordinates of the tile we are talking about

	is_tile_available(tile : G10_TILE) : BOOLEAN -- routine returns true if the tile status is available.
	do
	end


	is_map_position_empty(pos:G10_POSITION) : BOOLEAN -- routine returns true if the tile  with (x,y) coordinates status is empty
	do
		if(get_map_position_status(pos) /= 0)
			then Result:=TRUE
		else
			Result:=FALSE
		end
	end
--in pool or on map?     Answer: this is a tile on the map...the method returns true if the state is 0(already filled)
										-- maybe u will need to add i,j integers to know the coordinates of the tile we are talking about

	is_tile_filled(tile : G10_TILE) : BOOLEAN  -- routine returns true if the tile status is filled
	do
	end

	is_tile_pull_empty : BOOLEAN
	require
		tile_pull_not_void : tilepull /= void
	do
		result := tilepull.isempty
	end

	-- we also need here a is_tile_empty that is also boolean and does the same thing with the 2 methods above for state 3

	is_empty_players_list() : BOOLEAN -- routine returns true if players list is empty else false.
	do
		if (get_length_players_list() = 0) then
			Result:=True
		else
			Result:=false
		end
	end

	match_tile_to_terrain(pos:G10_POSITION tile : G10_TILE) : BOOLEAN -- routine returns true if tile matches to (x,y) coordinates of the tarrain and it can be places there.
	do
		if(get_map_position_status(pos) = 1) then
			Result:=TRUE
		else
			Result:=FALSE
		end
	end

	tile_has_chip(tile : G10_TILE) : BOOLEAN -- routine returns true if tile has any chips else false.
	LOCAL
		t:TUPLE[i:INTEGER j:INTEGER]
	do
		t := tile.findChip()
		if(t.i=-1) then
			Result:=true
		else
			Result:=false
		end
	end

end
