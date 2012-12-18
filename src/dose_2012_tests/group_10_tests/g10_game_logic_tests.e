note
	description: "[
		Eiffel tests that can be executed by testing tool.
	]"
	author: "Eleytherios S. Benisis"
	date: "$Date$"
	revision: "$Revision$"
	testing: "type/manual"

class
	G10_GAME_LOGIC_TESTS

inherit
	EQA_TEST_SET

feature -- Test routines

	test_get_players_list -- test routine for get_player_list from g10_game class by creating a game and tries to retrieve a non void list
	note
		testing:  "user/G10"
	local
		game : G10_GAME
		list : G10_PLAYERS
	do
		create game.make()
		create list.make()
		list := game.get_players_list()
		assert ("Error player list not created during construction of the game", list /= void)
	end

	test_get_players_list_02 -- test routine for get_player_list from g10_game class by creating a game then adds a player to the games list and finally checks if list is empty
	note
		testing:  "user/G10"
	local
		game : G10_GAME
		list : G10_PLAYERS
		player : G10_PLAYER
	do
		create game.make()
		create player.make()
		create list.make()

		list := game.get_players_list()
		assert ("Error player list not created during construction of the game", list /= void)
		game.add_player_to_list (player)
		assert ("Error player list not created during construction of the game", game.is_empty_players_list = False)
	end

	test_get_players_list_03 -- test routine for get_player_list from g10_game class by creating a game and then checks if the list is non empty
	note
		testing:  "user/G10"
	local
		game : G10_GAME
		list : G10_PLAYERS
	do
		create game.make()
		create list.make()

		list := game.get_players_list()
		assert ("Error player list not created during construction of the game", list /= void)
		assert ("Error player list not created during construction of the game", game.is_empty_players_list = True)
	end

	test_add_players_to_list -- test routine for add_players_to_list from g10_game class by creating a game , a new player and by monitoring the starting size of the players list and the size after the insertion validates the insertion of the player.
	note
		testing:  "user/G10"
	local
		game : G10_GAME
		player : G10_PLAYER
		start_size : INTEGER
		after_size : INTEGER
	do
		create game.make()
		create player.make()

		start_size := game.get_length_players_list()
		game.add_player_to_list (player)
		after_size := game.get_length_players_list()

		assert ("insertion to list not happened", after_size > start_size)
	end

	test_add_players_to_list_02 -- test routine for the add_players_to_list from the g10_game class. creates a game and a player. then adds the player to the players list and then cekcs if the list is empty.
	note
		testing:  "user/G10"
	local
		game : G10_GAME
		player : G10_PLAYER
	do
		create game.make()
		create player.make()

		game.add_player_to_list (player)
		assert ("insertion to list not happened", game.is_empty_players_list = False)
	end

	test_get_player_score -- test routine for the get_player_score from g10_game class
	note
		testing:  "user/G10"
	local
		game : G10_GAME
		player : G10_PLAYER
	do
		create game.make()
		create player.make()

		game.update_player_score(player , 10)
		assert ("score mutation not happened", game.get_players_score (player) = 10)
	end

	test_get_player_score_02 -- test routine for the get_player_score from g10_game class
	note
		testing:  "user/G10"
	local
		game : G10_GAME
		player : G10_PLAYER
	do
		create game.make()
		create player.make()

		game.update_player_score(player , 100)-- negative value must be caught from precondition
		assert ("score mutation not happened", game.get_players_score (player) = 100)
	end

	test_get_player_chips_num -- test routine for the get_player_chips_num from g10_game class
	note
		testing:  "user/G10"
	local
		game : G10_GAME
		player : G10_PLAYER
	do
		create game.make()
		create player.make()

		game.update_players_chip_number (player, 10)

		assert ("players chip number not modified", game.get_players_chips_number (player) = 10)
	end

	test_get_player_chips_num_02 -- test routine for the get_player_chips_num from g10_game class
	note
		testing:  "user/G10"
	local
		game : G10_GAME
		player : G10_PLAYER
	do
		create game.make()
		create player.make()

		game.update_players_chip_number (player, 9)

		assert ("players chip number not modified", game.get_players_chips_number (player) = 9)
	end

	test_get_current_player -- test routine for the get_current_player from g10_game class
	note
		testing:  "user/G10"
	local
		game : G10_GAME
		player : G10_PLAYER
	do
		create game.make()
		create player.make()

		game.set_current_player (player)
		assert ("not_implemented", game.get_current_player() = player)
	end

	test_get_current_player_02 -- test routine for the get_current_player from g10_game class
	note
		testing:  "user/G10"
	local
		game : G10_GAME
		player : G10_PLAYER
	do
		create game.make()
		create player.make()


		game.set_current_player (player)
		assert ("not_implemented", game.get_current_player() = player)
	end

	test_update_player_score -- test for the update_player_score from g10_game class
	note
		testing:  "user/G10"
	local
		game : G10_GAME
		player : G10_PLAYER
		score : INTEGER
	do
		create game.make()
		create player.make()

		score := 5
		game.update_player_score (player, score)

		assert ("player's score mutation not happened", game.get_players_score (player) = 5)
	end


	test_update_player_score_02 -- test for the update_player_score from g10_game class
	note
		testing:  "user/G10"
	local
		game : G10_GAME
		player : G10_PLAYER
		score : INTEGER
	do
		create game.make()
		create player.make()

		score := 4
		game.update_player_score (player, score)

		assert ("player's score mutation not happened", game.get_players_score (player) = 4 )
	end

	test_update_player_score_03 -- test for the update_player_score from g10_game class
	note
		testing:  "user/G10"
	local
		game : G10_GAME
		player : G10_PLAYER
		score : INTEGER
	do
		create game.make()
		create player.make()
		score := 6

		game.update_player_score (player, score)

		assert ("player's score mutation not happened", game.get_players_score (player) = 6)
	end

	test_update_player_chip_num -- test for the update_player_chip_num from g10_game class
	note
		testing:  "user/G10"
	local
		game : G10_GAME
		player : G10_PLAYER
		chip_num : INTEGER
	do
		create game.make()
		create player.make()

		chip_num := 10
		game.update_players_chip_number (player, chip_num)

		assert ("player's chip number not mutated", game.get_players_chips_number (player) = 10)
	end

	test_update_player_chip_num_02 -- test for the update_player_chip_num from g10_game class
	note
		testing:  "user/G10"
	local
		game : G10_GAME
		player : G10_PLAYER
		chip_num : INTEGER
	do
		create game.make()
		create player.make()

		chip_num := 9
		game.update_players_chip_number (player, chip_num)

		assert ("player's chip number not mutated", game.get_players_chips_number (player) = 9)
	end

	test_update_player_chip_num_03 -- test for the update_player_chip_num from g10_game class
	note
		testing:  "user/G10"
	local
		game : G10_GAME
		player : G10_PLAYER
		chip_num : INTEGER
	do
		create game.make()
		create player.make()

		chip_num := 8
		game.update_players_chip_number (player, chip_num)

		assert ("player's chip number not mutated", game.get_players_chips_number (player) = 8)
	end

	test_get_current_player_tile -- test for the get_current_player_tile from g10_game class
	note
		testing:  "user/G10"

	do
		assert ("not_implemented", False)
	end

	test_set_current_player_tile -- test for the set_current_player_tile routine from g10_game class
	note
		testing:  "user/G10"
	local
		game : G10_GAME
		player : G10_PLAYER
		tile : G10_TILE
	do
		create game.make()
		create player.make()
		create tile.make()

		game.set_current_player_tile (tile)
		assert ("failed to set current players tile", game.get_current_player_tile() = tile)
	end

	test_set_current_player_tile_02 -- test for the set_current_player_tile routine from g10_game class
	note
		testing:  "user/G10"
	local
		game : G10_GAME
		player : G10_PLAYER
		tile : G10_TILE
	do
		create game.make()
		create player.make()
		create tile.make()


		game.set_current_player_tile (tile)
		assert ("failed to set current players tile", game.get_current_player_tile() = tile)
	end

	test_get_tile_from_terrain -- test for the get_tile_from_terrain routine from g10_game class
	note
		testing:  "user/G10"
	local
		game : G10_GAME
		player : G10_PLAYER
		tile : G10_TILE
		pos: G10_POSITION
	do
		create game.make()
		create player.make()
		create tile.make()
		create pos.make()
		pos.set_x (1)
		pos.set_y (1)

		game.set_tile_to_terrain (pos, tile,1)

		assert ("tile not inserted in the terrain properly", game.get_tile_from_terrain (1, 1) = tile)
	end


	test_get_tile_from_terrain_02 -- test for the get_tile_from_terrain routine from g10_game class
	note
		testing:  "user/G10"
	local
		game : G10_GAME
		player : G10_PLAYER
		tile : G10_TILE
		pos:G10_POSITION
	do
		create game.make()
		create player.make()
		create tile.make()
		create pos.make()
		pos.set_x (2)
		pos.set_y (1)

		game.set_tile_to_terrain (pos, tile,1)

		assert ("tile not inserted in the terrain properly", game.get_tile_from_terrain (2, 1) = tile)
	end

	test_set_tile_to_terrain -- test for the set_tile_to_terrain routine from g10_game class
	note
		testing:  "user/G10"
	local
		game : G10_GAME
		player : G10_PLAYER
		tile : G10_TILE
		pos:G10_POSITION
	do
		create game.make()
		create player.make()
		create tile.make()
		create pos.make()
		pos.set_x (1)
		pos.set_y (1)

		game.set_tile_to_terrain (pos, tile,1)

		assert ("tile not inserted in the terrain properly", game.get_tile_from_terrain (1, 1) = tile)
	end



	test_set_tile_to_terrain_02 -- test for the set_tile_to_terrain routine from g10_game class
	note
		testing:  "user/G10"
	local
		game : G10_GAME
		player : G10_PLAYER
		tile : G10_TILE
		pos:G10_POSITION
	do
		create game.make()
		create player.make()
		create tile.make()
		create pos.make()
		pos.set_x (1)
		pos.set_y (1)

		game.set_tile_to_terrain (pos, tile, 1)

		assert ("tile not inserted in the terrain properly", game.get_tile_from_terrain (2, 2) = tile)
	end

	test_get_tile_id -- test for the get_tile_id from g10_game class
	note
		testing:  "user/G10"
	local
		tile_id : INTEGER
		game : G10_GAME
		tile : G10_TILE
	do
		create game.make()
		create tile.make()
		tile_id := 10

		game.set_tile_id (tile, tile_id)

		assert ("tile id not mutated properly", game.get_tile_id (tile) = tile_id)
	end

	test_get_tile_id_02 -- test for the get_tile_id from g10_game class
	note
		testing:  "user/G10"
	local
		game : G10_GAME
		tile : G10_TILE
		tile_id : INTEGER
	do
		create game.make()
		create tile.make()
		tile_id := 15

		game.set_tile_id (tile, tile_id)

		assert ("tile id not mutated properly", game.get_tile_id (tile) = tile_id)
	end



--	test_get_tile_state -- test for the get_tile_state routine from g10_game class
--	note
--		testing:  "user/G10"
--	local
--		game : G10_GAME
--		tile : G10_TILE
--		tile_state : INTEGER
----	do
	--	create game.make()
	--	create tile.make()
	--	tile_state := 10
--
--		game.set_tile_state(tile , tile_state)
--		assert ("bad access in tile state", game.get_tile_state (tile) = tile_state)
--	end

--	test_get_tile_state_02 -- test for the get_tile_state routine from g10_game class
--	note
--		testing:  "user/G10"
--	local
--		game : G10_GAME
--		tile : G10_TILE
--		tile_state : INTEGER
--	do
--		create game.make()
--		create tile.make()
--		tile_state := 15
--
--
--		game.set_tile_state(tile , tile_state)
--		assert ("bad access in tile state", game.get_tile_state (tile) = tile_state)
--	end

--	test_get_tile_status -- test for the get_tile_status routine from g10_game class
--	note
--		testing:  "user/G10"
--	local
--		game : G10_GAME
--		tile : G10_TILE
--		tile_status : STRING
--	do
--		create game.make()
--		create tile.make()
--		tile_status := "test_status"
--
--		game.set_tile_status(tile , tile_status)
--		assert ("bad access in tile status", game.get_tile_status (tile) = tile_status)
--	end

--	test_get_tile_status_02 -- test for the get_tile_status routine from g10_game class
--	note
--		testing:  "user/G10"
--	local
--		game : G10_GAME
--		tile : G10_TILE
--		tile_status : STRING
--	do
--		create game.make()
--		create tile.make()
--		tile_status := "test test test"
--
--		game.set_tile_status(tile , tile_status) --precondition for empty string
--		assert ("bad access in tile status", game.get_tile_status (tile) = tile_status)
--	end



	test_tile_has_chip -- test for the tile_has_chip routine from g10_game class
	note
		testing:  "user/G10"
	local
		game : G10_GAME
		tile : G10_TILE
		chip_id : INTEGER
	do
		create game.make()
		create tile.make()
		chip_id := 1

		game.set_tile_chip_id (tile,chip_id)
		assert ("bad observation of chip possesion of tile", game.tile_has_chip (tile) = True)
	end

	test_tile_has_chip_02 -- test for the tile_has_chip routine from g10_game class
	note
		testing:  "user/G10"
	local
		game : G10_GAME
		tile : G10_TILE
		chip_id : INTEGER
	do
		create game.make()
		create tile.make()
		chip_id := 5

		game.set_tile_chip_id (tile,chip_id)
		assert ("bad observation of chip possesion of tile", game.tile_has_chip (tile) = True)
	end



	test_is_terrain_position_empty -- test for the is_terrain_position_empty routine of from g10_game class
	note
		testing:  "user/G10"
	local
		game : G10_GAME
		tile : G10_TILE
		pos:G10_POSITION
	do
		create game.make()
		create tile.make()
		create pos.make()
		pos.set_x (1)
		pos.set_y (1)

		game.set_tile_to_terrain (pos , tile,1)
		assert ("tile not inserted properly", game.is_map_position_empty (pos))
	end

	test_is_terrain_position_empty_02 -- test for the is_terrain_position_empty routine of from g10_game class
	note
		testing:  "user/G10"
	local
		game : G10_GAME
		tile : G10_TILE
		pos:G10_POSITION
	do
		create game.make()
		create tile.make()
		create pos.make()
		pos.set_x (1)
		pos.set_y (1)
		game.set_tile_to_terrain (pos , tile,1)
		assert ("tile not inserted properly", game.is_map_position_empty (pos))
	end



	test_get_terrain_position_status -- test for the get_terrain_position_status from g10_game class
	note
		testing:  "user/G10"
	local
		game : G10_GAME
		tile : G10_TILE
		tile_status : INTEGER
		pos:G10_POSITION
	do
		create game.make()
		create tile.make()
		create pos.make()
		pos.set_x (1)
		pos.set_y (1)
		tile_status := 1

		game.set_tile_status (tile, tile_status)
		game.set_tile_to_terrain (pos , tile,1)

		assert ("access of status in (x,y) coordinates of terrain incorrect" , game.get_map_position_status (pos) = tile_status)
	end

	test_get_terrain_position_status_02 -- test for the get_terrain_position_status from g10_game class
	note
		testing:  "user/G10"
	local
		game : G10_GAME
		tile : G10_TILE
		tile_status : INTEGER
		pos:G10_POSITION
	do
		create game.make()
		create tile.make()
		create pos.make()
		pos.set_x (15)
		pos.set_y (20)
		tile_status := 1

		game.set_tile_status (tile, tile_status)
		game.set_tile_to_terrain (pos , tile, 1)

		assert ("access of status in (x,y) coordinates of terrain incorrect" , game.get_map_position_status (pos) = tile_status)
	end

	test_get_terrain_position_status_03 -- test for the get_terrain_position_status from g10_game class
	note
		testing:  "user/G10"
	local
		game : G10_GAME
		tile : G10_TILE
		tile_status : INTEGER
		pos:G10_POSITION
	do
		create game.make()
		create tile.make()
		create pos.make()
		pos.set_x (10)
		pos.set_y (100)
		tile_status := 1

		game.set_tile_status (tile, tile_status)
		game.set_tile_to_terrain (pos, tile, 1)

		assert ("access of status in (x,y) coordinates of terrain incorrect" , game.get_map_position_status (pos) = tile_status)
	end



	test_match_tile_to_terrain -- test for the match_tile_t_terrain routine from g10_game class
	note
		testing:  "user/G10"

	do
		assert ("not_implemented", False)
	end

	test_update_terrain_status -- test for the update_terrain_status routine from g10_game class
	note
		testing:  "user/G10"

	do
		assert ("not_implemented", False)
	end

	test_get_tile_chip_id -- test for the get_tile_chip_id from g10_game class
	note
		testing:  "user/G10"
	local
		game : G10_GAME
		tile : G10_TILE
		tile_chip_id : INTEGER
	do
		create game.make()
		create tile.make()
		tile_chip_id := 1

		game.set_tile_chip_id (tile, tile_chip_id)
		assert ("access in tile chip's id incorrect", game.get_tile_chip_id (tile) = tile_chip_id)
	end

	test_get_tile_chip_id_02 -- test for the get_tile_chip_id from g10_game class
	note
		testing:  "user/G10"
	local
		game : G10_GAME
		tile : G10_TILE
		tile_chip_id : INTEGER
	do
		create game.make()
		create tile.make()
		tile_chip_id := 10

		game.set_tile_chip_id (tile, tile_chip_id)
		assert ("access in tile chip's id incorrect", game.get_tile_chip_id (tile) = tile_chip_id)
	end




end


