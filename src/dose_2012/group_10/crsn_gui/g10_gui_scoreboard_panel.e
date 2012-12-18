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
	make , make_first_player

--attributes
feature {NONE}
	players : ARRAY[G10_GUI_PLAYER_INFO]

-- constructors
feature {ANY}
	make(game : G10_GUI_GAME_MAIN)
	require
		game_not_null : game /= void
	local
		player : G10_GUI_PLAYER_INFO
		players_num , iterator : INTEGER -- elpizo na dothei san orisma.
		players_names : ARRAY[STRING] -- elpizo na dothei san orisma.

	do
		players_num := 6
		create players_names.make_filled (void, 1, players_num)
		players_names.put ("lefas", 1)
		players_names.put ("antonistis", 2)
		players_names.put ("kirios mpantourakis", 3)
		players_names.put ("tzo", 4)
		players_names.put ("sbob", 5)
		players_names.put ("imidralio", 6)

		init_player_list(players_num)
		from iterator := 1 until iterator > players_num
		loop
			create player.make (iterator , players_names.item (iterator))
			add_player_to_list(player , players_num)
			iterator := iterator + 1
		end
		-- print players array info
		from iterator := 1 until iterator > players_num
		loop
			io.put_string ("player_name : " + players.item (iterator).get_player_name + " ,iterator : ")
			io.put_integer (iterator)
			io.put_new_line
			iterator := iterator + 1
		end
		draw_player_list(game , players_num)
	end

	make_first_player(game : G10_GUI_GAME_MAIN player_name : STRING players_num : INTEGER) -- i idea me ayton ton constructor einai oi epomenes ekxoriseis paixton na ginontai me mia update
	require
		game_not_null : game /= void
	local
		player  : G10_GUI_PLAYER_INFO
	do
		create player.make (1 ,player_name)
		init_player_list(players_num)

		add_player_to_list(player , 1)

		io.put_string ("player_name : " + player_name + " ,iterator : ")
		io.put_integer (1)
		io.put_new_line

		draw_player_list(game , players_num)
	end

-- mutator methods.
feature {G10_GUI_SCOREBOARD_PANEL , G10_GUI_GAME_MAIN}
	init_player_list(players_num : INTEGER) -- routine inits the player list indeced 1 to 6.
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
		--not_contained_in_scoreboard : not background.has (p)
		valid_coordinates : x >= 0 and y >= 0
	do
		if(background.has (p) = false) then
			background.extend_with_position_and_size (p, x, y, p.minimum_width, p.minimum_height)
		end
	ensure
		scoreboard_panel_not_void : current /= void
		player_contained_in_scoreboard_panel : background.has (p)
	end

	draw_player_list(game : G10_GUI_GAME_MAIN players_num : INTEGER) -- routine draws the players vertically in the scoreboard panel
	require
		game_not_null : game /= void
		valid_player_list : players /= void
		players_list_not_empty : players.is_empty = false
	local
		iterator , x , y : INTEGER
	do
		x := scoreboard_start_width
		y := scoreboard_start_height
		from iterator := 1 until iterator > players_num
		loop
			if(players.item (iterator) /= void ) then
				draw_player(game.get_background, players.item (iterator), x , y)
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

	add_player_to_list(p : G10_GUI_PLAYER_INFO players_num : INTEGER) -- routine adds a player to the players list of this object.
	require
		valid_player : p /= void
		valid_list : players /= void
		list_not_full : players.has (void) = true
	local
		i : INTEGER
	do
		from i := 1 until i > 6
		loop
			if( players.item (i) = void) then
				players.put (p , i)
				i := 7
			end
			i := i + 1
		end
		ensure
			valid_mutate : players /= void
			list_contains_player : players.has (p)
			list_not_empty : players.is_empty = false
	end
	add_player_to_list_name(player_name : STRING players_num : INTEGER game : G10_GUI_GAME_MAIN) -- routine adds a player to the players list of this object.
	require
		valid_player : player_name /= void
		valid_list : players /= void
		list_not_full : players.has (void) = true
	local
		i : INTEGER
		player : G10_GUI_PLAYER_INFO
	do
		from i := 1 until i > players_num
		loop
			if( players.item (i) = void) then
				create player.make (i, player_name)
				players.put (player , i)
				io.put_string ("mesa stin add player to list name : ebala ton player sto list")
				io.put_new_line
				i := 7
			end
			i := i + 1
		end
		draw_player_list(game , players_num)
	ensure
		valid_mutate : players /= void
		--list_contains_player : players.has (p)
		list_not_empty : players.is_empty = false
	end

	set_follower_number(player_id , num : INTEGER) -- routine sets follower number to num
	local
		p : G10_GUI_PLAYER_INFO
	do
		p := players.item (player_id)

		p.get_followers.set_follower_number (num.out)
	end

	set_score_number(player_id , num : INTEGER) -- routine sets score number to num
	local
		p : G10_GUI_PLAYER_INFO
	do
		p := players.item (player_id)

		p.get_score.update_score(num.out)
	end

	decrement_followers(player_num : INTEGER) -- routine decrements the followers of the player i
	local
		p : G10_GUI_PLAYER_INFO
		num : INTEGER
	do
		p := players.item (player_num)

		num := p.get_follower_number
		num := num - 1
		p.get_followers.set_follower_number (num.out)
	end
-- accesor methods.
feature {G10_GUI_GAME_MAIN}
	get_follower_number(player_num : INTEGER ) : INTEGER -- routine returns the number of followers of p player.
	local
		p : G10_GUI_PLAYER_INFO
	do
		p := players.item (player_num)
		result := p.get_follower_number
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
	local
		found : BOOLEAN
		i : INTEGER
		p : G10_GUI_PLAYER_INFO
	do
		found := false
		from i := 1 until i >= players.index_set.upper
		loop
			p := players.item (i)
			if(p /= void) then
				if(p.get_player_name.is_equal (n) = true) then
					found := true
				end
			end
			i := i + 1
		end
		result := found
	ensure
		list_unmutated : players = old players
	end

-- class invariants
invariant
	valid_list : players /= void
	-- size <= 6 and >= 1
	-- invalid_player_in _list : players.has (void)
end
