note
	description: "the logic component's main interface"
	author: "Eleftherios S Benisis, Anastasia, Angel Kyriako"
	date: "15/12/2012"
	revision: "3.0"

class
	G10_LOGIC_GAME_MAIN
	inherit
		G10_LOGIC_CONSTANTS
create
	make_player_name_max_players_num


feature{NONE}-- attributes
	terrain : G10_LOGIC_TERRAIN
	players : G10_LOGIC_PLAYERS
	draw_pile : G10_LOGIC_DRAWING_PILE
	current_player_tile : G10_LOGIC_TILE
	current_player : G10_LOGIC_PLAYER

feature {G10_LOBBY_USER, G10_HOST, G10_JOINED_PLAYER} -- constructor

	make_player_name_max_players_num(player_name: STRING max_players: INTEGER)
	do
		-- init the the players array and the current player (host)
		create Players.make_players(player_name, max_players)
		current_player := players.get_current_player
		-- init the tile pile
		create draw_pile.make_tile_pull
		-- init terrain with the first drawed tile
		create terrain.make_with_starting_tile(draw_pile.generate_next_tile)
		-- inite the current player tile
		current_player_tile := draw_pile.generate_next_tile
	end

	update_game_state(row , col : INTEGER) : ARRAY[INTEGER] -- routine updates the players score
	require
		recent_inserted_tile_not_void : get_terrain_item (row, col) /= void
	local
		a_tile , north_tile , south_tile , west_tile ,east_tile , north_east_tile, south_east_tile,south_west_tile, north_west_tile : G10_LOGIC_TILE
		sum_points , i : INTEGER
		player_points : ARRAY[INTEGER]
	do
		create player_points.make_filled (0, 1, players.get_players.count)
		a_tile := get_terrain_item (row, col)
		north_tile := get_terrain_item (row - 1, col)
		south_tile := get_terrain_item (row + 1, col)
		west_tile := get_terrain_item (row , col - 1)
		east_tile := get_terrain_item (row , col + 1)
		north_east_tile := get_terrain_item (row - 1, col + 1 )
		south_east_tile := get_terrain_item (row + 1, col + 1 )
		south_west_tile := get_terrain_item (row + 1, col - 1 )
		north_west_tile := get_terrain_item (row - 1, col - 1 )

		sum_points := current.get_current_player.get_score

		from i := 1 until i > players.get_players.count
		loop
			player_points.put ( players.get_players.i_th (i).get_score, i)
			i:= i + 1
		end

		if((north_tile /= void) and (east_tile /= void) and (north_east_tile /= void)) then
			if((north_tile.is_available_tile = false) and (east_tile.is_available_tile = false) and (north_east_tile.is_available_tile = false)) then
				player_points.put (current_player.get_score + 2, current_player.get_id)
				if(north_tile.get_followers_players_id /= -1) then
					player_points.put (players.get_players.i_th (north_tile.get_followers_players_id).get_score + 5, north_tile.get_followers_players_id)
				end
				if(east_tile.get_followers_players_id /= -1) then
					player_points.put (players.get_players.i_th (north_tile.get_followers_players_id).get_score + 5, east_tile.get_followers_players_id)
				end
				if(north_east_tile.get_followers_players_id /= -1) then
					player_points.put (players.get_players.i_th (north_tile.get_followers_players_id).get_score + 5, north_east_tile.get_followers_players_id)
				end
			end
		end
		if(south_tile /= void and east_tile /= void and south_east_tile /= void) then
			if((south_tile.is_available_tile = false) and (east_tile.is_available_tile = false) and (south_east_tile.is_available_tile = false)) then
				player_points.put (current_player.get_score + 2, current_player.get_id)
				if(south_tile.get_followers_players_id /= -1) then
					player_points.put (players.get_players.i_th (north_tile.get_followers_players_id).get_score + 5, south_tile.get_followers_players_id)
				end
				if(east_tile.get_followers_players_id /= -1) then
					player_points.put (players.get_players.i_th (north_tile.get_followers_players_id).get_score + 5, east_tile.get_followers_players_id)
				end
				if(south_east_tile.get_followers_players_id /= -1) then
					player_points.put (players.get_players.i_th (north_tile.get_followers_players_id).get_score + 5, south_east_tile.get_followers_players_id)
				end
			end
		end
		if(south_tile /= void and west_tile /= void and south_west_tile /= void) then
			if((south_tile.is_available_tile = false) and (west_tile.is_available_tile = false) and (south_west_tile.is_available_tile = false)) then
				player_points.put (current_player.get_score + 2, current_player.get_id)
				if(south_tile.get_followers_players_id /= -1) then
					player_points.put (players.get_players.i_th (north_tile.get_followers_players_id).get_score + 5, south_tile.get_followers_players_id)
				end
				if(west_tile.get_followers_players_id /= -1) then
					player_points.put (players.get_players.i_th (north_tile.get_followers_players_id).get_score + 5, west_tile.get_followers_players_id)
				end
				if(south_west_tile.get_followers_players_id /= -1) then
					player_points.put (players.get_players.i_th (north_tile.get_followers_players_id).get_score + 5, south_west_tile.get_followers_players_id)
				end
			end
		end
		if(north_tile /= void and west_tile /= void and north_west_tile /= void) then
			if((north_tile.is_available_tile = false) and (west_tile.is_available_tile = false) and (north_west_tile.is_available_tile = false)) then
				player_points.put (current_player.get_score + 2, current_player.get_id)
				if(north_tile.get_followers_players_id /= -1) then
					player_points.put (players.get_players.i_th (north_tile.get_followers_players_id).get_score + 5, north_tile.get_followers_players_id)
				end
				if(west_tile.get_followers_players_id /= -1) then
					player_points.put (players.get_players.i_th (north_tile.get_followers_players_id).get_score + 5, west_tile.get_followers_players_id)
				end
				if(north_west_tile.get_followers_players_id /= -1) then
					player_points.put (players.get_players.i_th (north_tile.get_followers_players_id).get_score + 5, north_west_tile.get_followers_players_id)
				end
			end
		end

		from i := 1 until i > players.get_players.count
		loop
			players.get_players.i_th (i).set_score (player_points.item (i))
			i:= i + 1
		end

		result := player_points
	end


feature{ANY}-- the public interface of the logic subcompoment of the carcassonne game

	-- Regarding Players
	end_turn() -- routine sets the next player in queue the new current player.
	do
		players.generate_next_player
		current_player := players.get_current_player
	end

	add_player_to_list(p : G10_LOGIC_PLAYER) -- routine adds player p in the players list
	do
		players.add_player (p)
	end

	add_player_to_list_name(player_name : STRING an_id: INTEGER) -- routine adds player in the players list with name player_name and default the other attributes
	local
		new_player : G10_LOGIC_PLAYER
	do
		create new_player.make_with_name (player_name, an_id)
		players.add_player (new_player)
	end

	set_current_player(a_player : G10_LOGIC_PLAYER) -- routine sets p player the current player of the game.
	do
		current_player := a_player
	end

	set_player_score(p : G10_LOGIC_PLAYER score : INTEGER) -- routine sets the player's p score to score.
	do
		p.set_score (score)
	end

	decrement_current_player_followers -- routine decrements current players followers.
	local
		p : G10_LOGIC_PLAYER
	do
		p := current.get_current_player
		p.decrease_followers_left
	end

	get_tile_state(a_tile : G10_LOGIC_TILE) : STRING -- routine returns tile's status
	do
		result := a_tile.get_degrees_rotated
	end

	get_terrain : ARRAY2[G10_LOGIC_TILE]
	do
		result := terrain.get_array
	end

	get_players_arrayed_list() : ARRAYED_LIST[G10_LOGIC_PLAYER] -- routine returns a collection with the players of the game.
	do
		Result := Players.get_players
	end

	get_current_player():G10_LOGIC_PLAYER
	do
		Result:=current_player
	end

	get_current_player_id:INTEGER
	do
		Result:=Players.get_current_player_id()
	end

	get_current_player_followers_num : INTEGER -- routine returns the current players follower number.
	do
		result := current_player.followers_left
	end

	get_players_id(a_player : G10_LOGIC_PLAYER) : INTEGER
	do
		Result := a_player.get_id
	end

	get_players_name(a_player : G10_LOGIC_PLAYER) : STRING -- routine returns the name of player
	do
		Result := a_player.get_name
	end

	get_players_score(a_player: G10_LOGIC_PLAYER) : INTEGER -- routine returns the score of player
	do
		Result:=a_player.get_score
	end

	get_players_followers_number(a_player : G10_LOGIC_PLAYER) : INTEGER -- routine returns the score of player
	do
		Result:=a_player.get_followers_left
	end

	get_number_of_player : INTEGER -- routine returns the length of the players list.
	do
		Result:=PLayers.get_players.count
	end

	get_first_player_name : STRING -- this is a test routine that returns the first players name.
	require
		players_list_not_empty : players.get_players.is_empty = false
	do
		result := players.get_players.i_th (1).get_name
	ensure
		players_list_not_mutated : players.get_players.is_equal (old players.get_players)
	end
---------------------------------------------------------------------------------------------

	-- regarding Tiles
	set_current_player_tile(tile : G10_LOGIC_TILE) -- routine sets the current player tile to tile.
	do
		current_player_tile:=tile
	end

	rotate_current_players_tile() -- routine rotates the current players tile to 90 degrees at time.
	do
		current_player_tile.rotate()
	end

	get_current_player_tile_id() : STRING -- routine returns the current players tile id.
	do
		Result := current_player_tile.get_tile_id
	end

	get_current_player_tile_state() : STRING -- routine returns the state (degrees rotated ) of the current players tile.
	do
		Result := current_player_tile.get_degrees_rotated
	end

	get_current_player_tile() : G10_LOGIC_TILE -- routine returns the current players tile.
	do
		Result:=current_player_tile
	end

	get_tile_id(a_tile : G10_LOGIC_TILE) : STRING -- routine returns the id of the tile.
	do
		Result := a_tile.get_tile_id
	end

	is_empty(a_tile : G10_LOGIC_TILE): BOOLEAN -- returns true if the tile is void
	do
		Result := a_tile = void
	end

	is_available(a_tile : G10_LOGIC_TILE): BOOLEAN -- returns true if the tile is available, (available /= matching tile)
	do
		Result := a_tile.is_available_tile
	end

---------------------------------------------------------------------------------------------

	-- regarding followers
	insert_follower_to_tile(tile : G10_LOGIC_TILE  tile_part : INTEGER) -- routine inserts a follower to a tile
	do
		tile.insert_follower (tile_part, current_player.get_id)
	end

	remove_follower_from_tile(tile : G10_LOGIC_TILE  tile_part : INTEGER) -- routine removes a follower from a tile
	do
		tile.remove_follower (tile_part)
	end

	get_followers_part(tile : G10_LOGIC_TILE) : INTEGER -- routine returns the id of the player that inserted it on a tile (-1 if it fails)
	do
		Result := tile.get_followers_part
	end

	get_followers_id(tile : G10_LOGIC_TILE) : INTEGER -- routine returns the id of the player that inserted it on a tile (-1 if it fails)
	do
		Result := tile.get_followers_players_id
	end

---------------------------------------------------------------------------------------------

	-- regarding terrain
	insert_tile_to_terrain(a_tile : G10_LOGIC_TILE row, col: INTEGER) -- routine sets the tile to the terrain in (x,y) position.
	do
		terrain.insert_tile_to_terrain (a_tile, row, col)
	end

	insert_tile_to_terrain_random(a_tile : G10_LOGIC_TILE ) -- routine sets the tile to the terrain in random position.
	local
		t : ARRAY2[G10_LOGIC_TILE]
		i , j , tries: INTEGER
		putted : BOOLEAN
	do
		from tries := 1 until tries >= 3
		loop
			from i := 2 until i >= 39 or putted = true
			loop
				from j := 2 until j >=39 or putted = true
				loop
					if(terrain.tile_matches_terrain_item (a_tile, i, j) = true) then
						terrain.insert_tile_to_terrain (a_tile, i, j)
						putted := true
						tries := 5
					end
					j := j + 1
				end
				i := i + 1
			end
			a_tile.rotate
			tries := tries + 1
		end



	end

	get_terrain_item(row : INTEGER col : INTEGER) : G10_LOGIC_TILE -- routine returns the tile located in (x,y) coordinates in the terrain.
	do
		Result := terrain.get_field_tile (row, col)
	end

	get_terrain_attr : G10_LOGIC_TERRAIN -- routine returns the tile located in (x,y) coordinates in the terrain.
	do
		Result := terrain
	end

	terrain_item_is_empty(row, col: INTEGER) : BOOLEAN -- routine returns true if tile is empty (void)
	do
		if terrain.terrain_item_is_empty(row, col) then
			Result := true
		else
			Result := false
		end
	end

	terrain_item_is_available(row, col: INTEGER) : BOOLEAN -- routine returns true if tile is available (a tile of the perimeter)
	do
		if terrain.terrain_item_is_empty(row, col) then
			Result := true
		else
			Result := false
		end
	end

	terrain_item_is_filled(row, col: INTEGER) : BOOLEAN -- routine returns true if tile is filled (already has a game tile on it)
	do
		if terrain.terrain_item_is_empty(row, col) then
			Result := true
		else
			Result := false
		end
	end

	tile_matches_terrain_item(a_tile : G10_LOGIC_TILE row, col: INTEGER): BOOLEAN -- routine returns true if tile matches the row,col item of the terrain
	do
		Result := terrain.tile_matches_terrain_item(a_tile, row, col)
	end

---------------------------------------------------------------------------------------------
	-- regarding tile pile

	generate_current_player_tile()  -- routine generates and stores a new tile from tile pull to current player tile to be used by the current player.
	do
		current_player_tile := draw_pile.generate_next_tile
	ensure
		generated_successfully: draw_pile.get_drawed_tile_count /= old draw_pile.get_drawed_tile_count
	end

	is_tile_pull_empty : BOOLEAN
	require
		tile_pull_not_void : draw_pile /= void
	do
		result := draw_pile.is_empty
	end

end
