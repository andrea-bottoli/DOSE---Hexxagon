note
	description: "represents the graphic interface of the carcassonne game window"
	author: "Eleytherios S. Benisis"
	date: "Date 9/12"
	revision: "game main class represents the whole gui of the carcassone game."

class
	G10_GUI_GAME_MAIN

inherit
	EV_TITLED_WINDOW
		redefine
			initialize
		end
	G10_GAME_CONSTANTS
		undefine
			default_create, copy
		end

create
	make , make_2

-- attributes
feature {NONE}
	--the components that interact with the game component
	player				: G10_LOBBY_USER

	--parts of the game graphic component
	background			: EV_FIXED
	player_action_panel : G10_GUI_PLAYER_ACTION_PANEL
	scoreboard_panel 	: G10_GUI_SCOREBOARD_PANEL
	terrain_panel 		: G10_GUI_TERRAIN_PANEL

-- constructors
feature {NONE}
	make (a_player: G10_LOBBY_USER) -- constructs a titled window
	require
		player_not_null: a_player /= void
		window_title_not_null: crsn_game_title /= void
	do
		player := a_player
			-- Create the Lobby window.			
		make_with_title (crsn_game_title)
		set_position ((screen_width // 2) - (game_window_width // 2), (screen_height // 2) - (game_window_height // 2))

		disable_user_resize()
	end

	make_2(a_player: G10_LOBBY_USER first_player_name : STRING players_num : INTEGER  ) -- Build the interface for this window i test here connection with logic things.
	require
		player_not_null: a_player /= void
		window_title_not_null: crsn_game_title /= void
	local
		drawed_tile_id : STRING -- na to balo orisma!
	do
		player := a_player
		drawed_tile_id := a_player.get_crsn_game_logic.get_tile_id (a_player.get_crsn_game_logic.get_terrain_item (20 ,20 )) -- get starting tile id
			-- Create the Lobby window.			
		make_with_title (crsn_game_title)
		set_position ((screen_width // 2) - (game_window_width // 2), (screen_height // 2) - (game_window_height // 2))
		init_background()
		init_terrain_panel()
		init_player_action_panel_tileid(drawed_tile_id)
		init_scoreboard_panel_name_num(first_player_name , players_num)

		disable_user_resize()
	end

-- mutator methods.
feature {NONE} -- Initialization
	initialize -- Build the interface for this window.
	do
		Precursor {EV_TITLED_WINDOW}
		close_request_actions.extend (agent request_close_window)

		init_background()
		init_terrain_panel()
		init_player_action_panel()
		--init_scoreboard_panel()
	end

	init_background() -- routine initializes the background.
	do
		create background
		put(background)
		background.set_background_pixmap (pix_game_background)
		background.set_minimum_size (game_window_width, game_window_height)
	ensure
		background_initialized : background /= void
		valid_background_size : background.width = game_window_width and background.height = game_window_height
	end

	init_player_action_panel() -- routine initializes the player action panel.
	do
		create player_action_panel.make(Current)
		background.extend_with_position_and_size (  player_action_panel,
														action_area_start_width, action_area_start_height,
														action_panel_width, action_panel_height)
		--player_action_panel.get_rotate_button.select_actions.extend (agent action_performed_rotate_button)
	ensure
		player_action_panel_initialized : player_action_panel /= void
	end

	init_player_action_panel_tileid(tile_id : STRING) -- routine initializes the player action panel.
	do
		create player_action_panel.make_with_id(Current , tile_id)

		background.extend_with_position_and_size (  player_action_panel,
														action_area_start_width, action_area_start_height,
														action_panel_width, action_panel_height)
		--player_action_panel.get_rotate_button.select_actions.extend (agent action_performed_rotate_button)
	ensure
		player_action_panel_initialized : player_action_panel /= void
	end

	init_scoreboard_panel() -- routine initializes the scoreboard panel.
	do
		create scoreboard_panel.make(current)
	ensure
		scoreboard_panel_initialized : scoreboard_panel /= void
	end

	init_scoreboard_panel_name_num(first_player_name : STRING players_num : INTEGER) -- routine initializes the scoreboard panel with the first player and the number of the players that will join
	do
		create scoreboard_panel.make_first_player (current, first_player_name, players_num)
	ensure
		scoreboard_panel_initialized : scoreboard_panel /= void
	end

	init_terrain_panel() -- routine initializes the terrain panel.
	do
		create terrain_panel.make(current)

		background.extend (terrain_panel)
	ensure
		terrain_panel_initialized : terrain_panel /= void
	end

	request_close_window -- Implementation, Close The user wants to close the window precondition  lobby not null
	require
		window_not_null: Current /= void
	local
		question_dialog: EV_CONFIRMATION_DIALOG
	do
		create question_dialog.make_with_text (quit_Message)
		question_dialog.show_modal_to_window (Current)

		if question_dialog.selected_button.is_equal ((create {EV_DIALOG_CONSTANTS}).ev_ok) then
				-- Restore the lobby ui which is currently minimized
			if attached player.get_crsn_lobby_ui then
				if (not player.get_crsn_lobby_ui.is_destroyed) then
					player.get_crsn_lobby_ui.restore
					player.get_crsn_lobby_ui.remove_reference_to_game_window
				end

			end
			destroy
		end
	end

feature {ANY} -- events
	remove_followers_from_tile(x , y : INTEGER) -- routine removes the follower from the tile of the terrain with (x,y) coordinates.
	require
		terrain_panel_not_void : terrain_panel /= void
	local
		a_tile : G10_GUI_TILE
		temp : EV_WIDGET
		i : INTEGER
	do
		from i := 1 until i >= terrain_panel.get_background.count
		loop
			if attached {G10_GUI_TILE} terrain_panel.get_background.i_th (i) as tile
			then
				 a_tile :=  tile
			end
			if(a_tile /= void ) then
				if(a_tile.get_follower /= void and (a_tile.get_column = y and a_tile.get_row = x)) then
					io.put_string ("brika kai to follower!<<<<<<<")
					io.put_new_line
					a_tile.destroy_follower
				end
			end
			i := i + 1
		end
	end

	set_followers_num(player_num , num : INTEGER) -- routine sets the followers num of player with player num id to num.
	do
		scoreboard_panel.set_follower_number (player_num, num)
	end

	draw_terrain_from_logic(logic : G10_LOGIC_GAME_MAIN) -- routine draws the terrain based to logic array
	local
		logic_terrain: ARRAY2[G10_LOGIC_TILE]
		a_tile : G10_LOGIC_TILE
		i , j : INTEGER
		id : STRING
		undescore_index : INTEGER
	do
		destroy_terrain_panel
		init_terrain_panel

		logic_terrain := logic.get_terrain

		from i := 1 until i > 40
		loop
			from j := 1 until j > 40
			loop
				a_tile := logic_terrain.item (i, j)
				if(a_tile /= void) then
					if(logic.is_available (a_tile) = false) then
						io.put_string ("tile id sti redraw :"+logic.get_tile_id (a_tile))
						io.put_new_line
						id := logic.get_tile_id (a_tile)
						undescore_index := id.index_of ('_', 1)

						current.draw_tile_to_terrain ( id.substring (1, undescore_index - 1) , logic.get_tile_state(a_tile) , i, j)
					end
				end
			j := j + 1
			end
			i := i + 1
		end
	end


	decrement_followers(i : INTEGER) -- routine decrements the players followers.
	do
		io.put_string ("player score : ")
		io.put_integer (scoreboard_panel.get_follower_number (i))
		scoreboard_panel.decrement_followers(i)
		io.put_new_line
	end

	set_score(player_num , score : INTEGER)	-- routine sets the score of player with player num id to score
	do
		scoreboard_panel.set_score_number(player_num , score)
	end

	update_scores(players_scores : ARRAY[INTEGER]) -- routine updates scores of players based to the array
	local
		i : INTEGER
	do
		from i := 1 until i > players_scores.count
		loop
			scoreboard_panel.set_score_number(i , players_scores.item (i))
			i := i + 1
		end
	end

	draw_tile_to_terrain( id : STRING rotation_state : STRING row : INTEGER col : INTEGER ) -- routine draws a tile with id and rotation_state to (row,col) position in terrain.
	local
		a_tile : G10_GUI_TILE
		follower_id : INTEGER
		player_id : INTEGER
	do
		create a_tile.make_certain_tile (row, col, id, rotation_state ,player.get_crsn_game_logic.get_followers_part (player.get_crsn_game_logic.get_terrain_item (row, col)),player.get_crsn_game_logic.get_followers_id (player.get_crsn_game_logic.get_terrain_item (row, col))  )

		a_tile.draw_tile_to_terrain (current, current.get_terrain_panel, row, col , player.get_crsn_game_logic.get_followers_part (player.get_crsn_game_logic.get_terrain_item (row, col)),player.get_crsn_game_logic.get_followers_id (player.get_crsn_game_logic.get_terrain_item (row, col))  )
		current.get_terrain_panel.add_empty_tiles_in_perimeter(current , current.get_terrain_panel, a_tile)
	end

	notify(an_event: STRING  row , col : INTEGER)
	do
		player.fire_event (an_event , row , col)
	end

-- Lefaaaaaaaaaaaaaaaaaaaaaa... ola ta parakatw 8a einai events pou 8a ulopoiountai sthn fire_event (auth vrisketai sthn lobby_user<practice>, host<create game>, joined_player<join game>)
	rotate_current_player_tile(degrees : STRING) -- routine rotates the current players tile
	require
		 valid_player_actions_panel : player_action_panel /= void
	do
		player_action_panel.rotate_current_player_tile(degrees)
	ensure
		valid_player_actions_panel : player_action_panel /= void
		--player_action_panel.get_current_player_tile /= old player_action_panel.get_current_player_tile
	end

	update_current_player_tile(id : STRING) -- routine updates the source of current players tile to src
	require
		valid_player_actions_panel : player_action_panel /= void
		id_not_void : id /= void
	local
		temp : STRING
	do
		create temp.make_empty
		temp.copy (id)
		player_action_panel.update_current_player_tile (current , temp)
	ensure
		valid_player_actions_panel : player_action_panel /= void
	end

	destroy_terrain_panel -- routine destroys terrain panel
	do
		terrain_panel.destroy
		terrain_panel := void
	end

	destroy_current_player_tile() -- routine updates the source of current players tile to src
	require
		valid_player_actions_panel : player_action_panel /= void
	do
		player_action_panel.destroy_current_player_tile
	ensure
		valid_player_actions_panel : player_action_panel /= void
	end

	update_follower_number(player_name : STRING num : INTEGER) -- routine updates the follower number of the player with name player_name to num
	require
		valid_args : player_name /= void and num >=0 and scoreboard_panel.contains_player(player_name) = true
	do
		ensure
			valid_scoreboard_panel : scoreboard_panel /= void
	end

	update_score(player_name : STRING num : INTEGER) -- routine updates the score of the player with name player_name
	require
		valid_args : player_name /= void and num >=0 and scoreboard_panel.contains_player(player_name) = true
	do
		ensure
			valid_scoreboard_panel : scoreboard_panel /= void
	end

	update_tile(x : INTEGER y : INTEGER src : STRING ) -- routine updates the tile of x ,y coordinates to src
	require
		valid_args : x >= 0 and y >= 0 and src /= void
	do
		ensure
			valid_terrain_panel : terrain_panel = old terrain_panel
	end

	add_player(player_name : STRING players_num : INTEGER) -- routine add player with player_name to the game.
	require
		player_name_void : player_name /= void
	local
	do
		scoreboard_panel.add_player_to_list_name (player_name, players_num , current)
	ensure
		scoreboard_panel.contains_player (player_name) = true
	end

-- accesor methods.
feature {ANY}
	get_drawed_tile_follower_id : INTEGER -- routine returns the follower position (1-9)
	do
		result := player_action_panel.get_current_player_tile.get_follower_id
	ensure
		valid_result : result > 0 and result <= 9
	end

	get_game_logic: G10_LOGIC_GAME_MAIN
	do
		Result := player.get_crsn_game_logic
	end

	get_background : EV_FIXED
	require
		valid_background :  background/= void
	do
		Result := background
	ensure
		background_unmutated : background = old background
	end

	get_terrain_panel : G10_GUI_TERRAIN_PANEL -- routine returns the terrain
	require
		terrain_panel_exists: terrain_panel /= void
	do
		Result := terrain_panel
	end

	get_scoreboard_panel 	: G10_GUI_SCOREBOARD_PANEL -- routine returns the scoreboard
	require
		scoreboard_panel_exists: scoreboard_panel /= void
	do
		Result := scoreboard_panel
	end

	get_score(n : STRING) : INTEGER -- routine returns the score of the player with n name.
	require
		valid_scoreboard : scoreboard_panel /= void
		player_contained : scoreboard_panel.contains_player (n) = true
	do
		--player.get_crsn_game_logic.get_players_score (n)
	ensure
		valid_scoreboard : scoreboard_panel /= void
		score_unmutated : scoreboard_panel.get_player (n).get_score = old scoreboard_panel.get_player (n).get_score
	end

	get_followers_number(n : STRING) : INTEGER -- routine returns the number of followers of the player with name n
	require
		valid_scoreboard : scoreboard_panel /= void
		player_contained : scoreboard_panel.contains_player (n) = true
	do
	ensure
		valid_scoreboard : scoreboard_panel /= void
		score_unmutated : scoreboard_panel.get_player(n).get_follower_number = old scoreboard_panel.get_player (n).get_follower_number
	end

	get_players() : ARRAYED_LIST [G10_GUI_PLAYER_INFO] -- routine returns the list of players in the game
	require
		valid_scoreboard : scoreboard_panel.get_players /= void and scoreboard_panel /= void
	do
	ensure
		attr_unmutated : scoreboard_panel = old scoreboard_panel
	end

	get_player(i : INTEGER ) : G10_GUI_PLAYER_INFO -- routine returns the player in i index of the players array list
	require
		scoreboard_panel /= void
	do
	ensure
		player_list_unmutated : scoreboard_panel.get_players = old scoreboard_panel.get_players
	end

	get_player_user : G10_LOBBY_USER
	do
		result := player
	end

-- observer methods
	has_drawed_tile_follower : BOOLEAN
	require
		drawed_tile_not_void : player_action_panel.get_current_player_tile /= void
	do
		result := player_action_panel.get_current_player_tile.has_follower
	ensure
		drawed_tile_unmutated : player_action_panel.get_current_player_tile = old player_action_panel.get_current_player_tile
	end

-- class invariants.
invariant
	valid_background_invariant : background /= void
	-- terrain_not_void : terrain_panel /= void
	-- scoreboard_panel_not_void : scoreboard_panel /= void
	-- player_action_panel_not_void : player_action_panel /= void

end
