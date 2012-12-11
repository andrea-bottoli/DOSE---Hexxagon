note
	description: "Summary description for {G10_GUI_SCOREBOARD_PANEL}."
	author: "Eleytherios S. Benisis"
	date: "$Date 9/12"
	revision: "$scoreboard panel is agroup class contating each players gui represantation in the game.$"

class
	G10_GUI_SCOREBOARD_PANEL
inherit
	G10_GAME_CONSTANTS

create
	make

--attributes
feature {NONE}
	players : ARRAY[G10_GUI_PLAYER_INFO]

-- constructors
feature {ANY}
	make(game : G10_GUI_GAME_MAIN)
	require
		game_not_null : game /= void
	local
		red : G10_GUI_PLAYER_INFO
		blue : G10_GUI_PLAYER_INFO
		yellow : G10_GUI_PLAYER_INFO
	do
		init_player_list

		create red.make(1)
		create blue.make(2)
		create yellow.make(3)
		add_player_to_list(red)
		add_player_to_list(blue)
		add_player_to_list(yellow)

		draw_player_list(game)
	end

-- mutator methods.
feature {G10_GUI_SCOREBOARD_PANEL}
	init_player_list -- routine inits the player list
	do
		create players.make_filled (void, 1, 6)
	end

	update_follower_number(num : INTEGER  n : STRING) -- routine updates the follower number of the player with name n to num.
	require
		valid_num : num >= 0
		valis_name : n /= void
		valid_list : players /= void and players.is_empty = false
	do
		ensure
			valid_mutate : players /= void
	end

	draw_player(background : EV_FIXED p : G10_GUI_PLAYER_INFO  x , y : INTEGER) -- routine draws the player p in the x,y coordinates of scoreboard panel
	require
		background_not_null : background /= void
		valid_player : p /= void
		not_contained_in_scoreboard : not background.has (p)
		valid_coordinates : x >= 0 and y >= 0
	do
		background.extend_with_position_and_size (p, x, y, p.minimum_width, p.minimum_height)
		ensure
			scoreboard_panel_not_void : current /= void
			player_contained_in_scoreboard_panel : background.has (p)
	end

	draw_player_list(game : G10_GUI_GAME_MAIN) -- routine draws the players vertically in the scoreboard panel
	require
		game_not_null : game /= void
		valid_player_list : players /= void
		players_list_not_empty : players.is_empty = false
	local
		iterator , x , y : INTEGER
	do
		x := scoreboard_start_width
		y := scoreboard_start_height
		from iterator := 1 until iterator > 3
		loop
			if(players.item (iterator) /= void )
			then draw_player(game.get_background, players.item (iterator), x , y)
			end
			iterator := iterator + 1
			x := x + player_info_width + distance_between_info
		end
	ensure
		valid_players_list : players /= void
		players_list_not_mutated : players = old players
	end

	update_score(num : INTEGER  n : STRING ) -- routine updates the score of the player with name n to num
	require
		valid_num : num >= 0
		valis_name : n /= void
		valid_list : players /= void and players.is_empty = false
	do
		ensure
			valid_mutate : players /= void
	end

	add_player_to_list(p : G10_GUI_PLAYER_INFO) -- routine adds a player to the players list of this object.
	require
		valid_player : p /= void
		valid_list : players /= void
		player_not_contained_in_list : not players.has (p)
		list_not_full : players.has (void) = true
	local
		i : INTEGER
	do
		from i := 1 until i = 6
		loop
			if(players.item (i) = void and not players.has (p))
			then players.put (p , i)
			end
			i := i + 1
		end
		ensure
			valid_mutate : players /= void
			list_contains_player : players.has (p)
			list_not_empty : players.is_empty = false
	end

--	update_background(a_pixmap : EV_PIXMAP) -- routine sets the background of this object to arg pixmap
--	require
--		arg_pixmap_not_void : a_pixmap /= void
--	do
--		current.set_background_pixmap (a_pixmap)
--		ensure
--			background_changed_to_arg_pixmap : background_pixmap.is_equal (a_pixmap)
--	end

--	get_width() : INTEGER -- routine returns the width of this object
--	do
--		result := width
--		ensure
--			attr_not_mutated : width = old width
--	end

--	get_height() : INTEGER -- routine returns the height of this object
--	do
--		result := height
--		ensure
--			attr_not_mutated : height = old height
--	end

-- accesor methods.
feature {G10_GUI_GAME_MAIN}
	get_follower_number(p : G10_GUI_PLAYER_INFO ) : INTEGER -- routine returns the number of followers of p player.
	require
		valid_player : p /= void
		valid_list : players /= void and players.is_empty = false and players.has (p)
	do
		ensure
			valid_player : p /= void
			valid_list : players /= void and players.is_empty = false and players.has (p)
	end

	get_players() : ARRAYED_LIST [G10_GUI_PLAYER_INFO] -- routine returns the list of players of this object.
	do
	end

	get_score(p : G10_GUI_PLAYER_INFO ) : INTEGER -- routine returns the score of the player p
	require
		valid_player : p /= void
		valid_list : players /= void and players.is_empty = false and players.has (p)
	do
		ensure
			valid_player : p /= void
			valid_list : players /= void and players.is_empty = false and players.has (p)
	end

	get_player_indexed(i : INTEGER): G10_GUI_PLAYER_INFO -- routine returns the player in the i index of players list.
	require
		valid_list : players /= void
		valid_index : i >=1
	do
		ensure
			valid_list : players /= void
			list_not_mutated : players = old players
	end

	get_player(n : STRING): G10_GUI_PLAYER_INFO -- routine returns the player with name n.
	require
		valid_list : players /= void
		valid_index : n /= void
	do
		ensure
			valid_list : players /= void
			list_not_mutated : players = old players
	end


--observer methods.
feature {G10_GUI_GAME_MAIN}
	contains_player(n : STRING) : BOOLEAN -- routine returns true if player with name n is contained in players array.
	require
		valid_list : players /= void
	do
		ensure
			list_unmutated : players = old players
	end

-- class invariants
invariant
	valid_list : players /= void
	-- size <= 6 and >= 1
	-- invalid_player_in _list : players.has (void)
end
