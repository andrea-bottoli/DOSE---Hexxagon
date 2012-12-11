note
	description: "Summary description for {IG_LOGIC_SETTINGS}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	IG_LOGIC

inherit
	IG_CONSTANTS

create
	make_with_host_settings,
	make_with_join_settings

feature -- Status Setting

	make_with_host_settings (a_game_settings: IG_GAME_SETTINGS; a_callback: PROCEDURE[ANY, TUPLE[]]; a_abort_callback: PROCEDURE[ANY, TUPLE[]]; a_game_over: PROCEDURE[ANY, TUPLE[IG_PLAYER]])
			-- sends to IG_NET a message to host at this address
		require
			--Fbesser
			a_game_settings_not_void: a_game_settings /= Void
		local
			l_network_players: INTEGER
			l_ai_players: INTEGER
			i: INTEGER
			l_gui_player: IG_USER_PLAYER
			l_network_player: IG_NETWORK_PLAYER
			l_port_listener: IG_PORT_LISTENER
			l_ai_player: IG_AI_PLAYER
			l_scoreboard: IG_SCOREBOARD
		do

			host_join_callback := a_callback
			abort_callback := a_abort_callback
			game_over_callback := a_game_over

				-- Initialize the 120 tiles of the game.
			create tiles.make (120)
			initialize_tiles

				-- Initialize the updat action sequence.
			create game_update_actions

			is_master := True

			create players.make
			create l_gui_player.make_with_name (a_game_settings.user_name)
			swap_tiles(l_gui_player)
			players.extend (l_gui_player)

			current_player := l_gui_player

			io.put_string ("GUI player created%N")

			l_network_players := a_game_settings.total_players - a_game_settings.computer_players - 1
			l_ai_players := a_game_settings.computer_players

			if l_network_players > 0 then
				create l_port_listener.make
			end

			from
				i := 0
			until
				i >= l_network_players
			loop
				create l_network_player.my_make
				swap_tiles(l_network_player)
				l_network_player.set_logic(Current)
				l_network_player.set_port_listener(l_port_listener)
				l_network_player.launch

				players.extend (l_network_player)

				if next_player = Void then
					next_player := l_network_player
				end
				i := i+1
			end

			io.put_string ("Network Players created%N")

			from
				i := 0
			until
				i >= l_ai_players
			loop
				create l_ai_player.make_ai_player (current, a_game_settings.computer_level)
				l_ai_player.set_name ("AI Player " + i.out)
				swap_tiles(l_ai_player)
				players.extend (l_ai_player)

				if next_player = Void then
					next_player := l_ai_player
				end

				i := i+1
			end

			io.put_string ("AI Players created%N")

			create gameboard.make (a_game_settings.total_players)
			across players as l_cursor loop
				create l_scoreboard.make
				l_cursor.item.set_scoreboard (l_scoreboard)
			end

		ensure
			--Fbesser
			game_board_not_void: gameboard /= Void
			score_board_not_void: scoreboards /= Void
			tiles_rack_not_void: tiles /= Void
			current_player /= Void
			next_player /= Void
		end

	make_with_join_settings (a_game_settings: IG_GAME_SETTINGS; a_callback: PROCEDURE[ANY, TUPLE[]]; a_abort_callback: PROCEDURE[ANY, TUPLE[]]; a_game_over: PROCEDURE[ANY, TUPLE[IG_PLAYER]])
			-- sends to IG_NET a message to join in the player's address
		require
			--Fbesser
			a_game_settings_not_void: a_game_settings /= Void
		local
			l_network_player: IG_NETWORK_PLAYER
			l_gui_player: IG_USER_PLAYER
		do

			host_join_callback := a_callback
			abort_callback := a_abort_callback
			game_over_callback := a_game_over

			--Fbesser
			create players.make

			create l_network_player.my_make
			l_network_player.set_logic(Current)
			l_network_player.set_host_adress (a_game_settings.host_address)
			l_network_player.launch

			current_player := l_network_player

			--The Network player for the host has been created and connected.
			l_network_player.request_starting_game_state (a_game_settings.user_name)
			--Now we have to query the host about all the game settings (i.e. how many players, etc.

			players.extend (l_network_player)

			create l_gui_player.make_with_name (a_game_settings.user_name)
			players.extend (l_gui_player)

			create game_update_actions.default_create
		ensure
			current_player /= Void
		end

	abort_host
		require
			TODO: false
		do
			--TODO: The user has decided to host, and then changed his mind and aborted the hosting (i.e. before a game was created)

			abort_callback.call ([])
		end

	abort_game
		require
			TODO: false
		do
			--TODO: The user has decided to play a game, and then changed his mind and aborted the game (i.e. after a game was created)

			abort_callback.call ([])
		end

--	is_initialized: BOOLEAN

	check_if_full_house
		local
			b: BOOLEAN
		do
			from
				players.start
				b := True
			until
				players.after
			loop
				if players.item.name = Void or else players.item.name.is_empty then
					b := False
				end
				players.forth
			end

			if b then
				--Full house
				from
					players.start
				until
					players.after
				loop
					if attached {IG_NETWORK_PLAYER} players.item as l_network_player then
						l_network_player.send_all_names
					end
					players.forth
				end

--				is_initialized := True
				host_join_callback.call ([])

			end
		end


feature --During game

--	--Fbesser
--	request_move (a_network_player: IG_NETWORK_PLAYER)
--		--Request move from a_network_player
--		do
--			a_network_player.request_move
--		end
--		
--	move_was_requested (a_network_player: IG_NETWORK_PLAYER)
--		--Move was requested from a_network_player. Inform GUI and wait for answer
--		require
--			not is_master
--		do
--			
--		end

	process_move (a_move: IG_MOVE)
			-- The current player has sent a move, process it.
		require
			move_not_void: a_move /= Void
		local
			l_points: like gameboard.points_for_move

			max_points: INTEGER
			max_player: IG_PLAYER
		do

			io.put_string ("Processing move of " + current_player.name + ".%N")

			if is_game_over then
				print ("Game Over!%N")


				from
					players.start
				until
					players.after
				loop
					if players.item.scoreboard.total_points > max_points then
						max_points := players.item.scoreboard.total_points
						max_player := players.item
					end
				end

				game_over_callback.call ([max_player])

			elseif gameboard.is_move_valid (a_move) then
				l_points := gameboard.points_for_move (a_move)

				gameboard.set_tile_on_board (a_move, current_player)
				current_player.scoreboard.add_color_score (a_move.tile.first_hex.color, l_points.first_color)
				current_player.scoreboard.add_color_score (a_move.tile.second_hex.color, l_points.second_color)

				if is_master then
					--Send move to every Network player

					across players as l_cursor loop
						if l_cursor.item /= current_player and attached {IG_NETWORK_PLAYER} l_cursor.item as l_net_player then
							io.put_string ("Sending move to " + l_net_player.name + "%N")
							l_net_player.send_move (a_move)
						elseif attached {IG_NETWORK_PLAYER} l_cursor.item as l_net_player then
							io.put_string ("Sending tile to " + l_net_player.name + "%N")
							l_net_player.send_tile (tiles[1])
						end
					end

					current_player.add_tile (tiles[1])
					tiles.prune (tiles[1])

				else
					--Send move to master...
					if user_player = current_player and attached {IG_NETWORK_PLAYER} players.first as l_net_player then
						l_net_player.send_move (a_move)
					end
				end
				game_update_actions.call ([])

				enable_move
				-- After move has been done, e.v. notify the next player that it's his turn.
			else
				io.put_string ("Move NOT valid!%N")
			end
		end

	enable_move
		do
			--The current player has made a move, now make sure the next player can make one
			io.put_string ("In IG_LOGIC.enable_move. Iterating over the players list... %N")

			current_player := next_player

			if players.index_of (next_player, 1) < players.count then
				next_player := players[players.index_of (next_player, 1) + 1]
			else
				next_player := players.first
			end

			io.put_string ("Current player: " + current_player.name + ".%N")
			io.put_string ("Next up: " + next_player.name + ".%N")

			if attached {IG_USER_PLAYER} current_player as l_player then
				--l_player.enable_move
			elseif attached {IG_AI_PLAYER} current_player as l_player then
				process_move(l_player.next_move)
			end

		end

	receive_game_over (a_name: STRING)
		require
			a_name /= Void
		local
			done: BOOLEAN
		do
			from
				players.start
			until
				players.after or done
			loop
				if players.item.name.is_equal (a_name) then
					game_over_callback.call ([players.item])
					done := True
				end
			end

			if not done then
					game_over_callback.call ([Void])	--Game was won, but not by any known player!?
			end
		end

	receive_abort
		do
			abort_callback.call ([])
		end

	add_tile (a_player: IG_PLAYER; a_tile: IG_TILE)
		do
			a_player.add_tile (a_tile)
		end

	--Fbesser
	send_starting_game_state (a_network_player: IG_NETWORK_PLAYER; a_name: STRING)
		require
			is_master
		do
			--A slave client has requested the entire game state. Gather the information, and send it back to him
			a_network_player.set_name (a_name)
			a_network_player.send_starting_game_state

			check_if_full_house
		end

	receive_starting_game_state (num_players: INTEGER; a_tiles_list: LINKED_LIST[IG_TILE])
		require
			not is_master
		do
			io.put_string ("In IG_LOGIC.receive_starting_game_state. Replacing all " + a_tiles_list.count.out + " tiles of " + players.at (2).name + ".%N")

			players.at (2).replace_tiles (a_tiles_list)

			--Received the answer to request entire game state, now set things right
			create gameboard.make (num_players)
		ensure
			--Fbesser
			game_board_not_void: gameboard /= Void
			score_board_not_void: scoreboards /= Void
--			tiles_rack_not_void: tiles /= Void
		end

	receive_all_names (args: LIST[STRING])
		local
			i: INTEGER
			l_user_player : IG_USER_PLAYER
			l_generic_player: IG_PLAYER
			l_scoreboard: IG_SCOREBOARD
		do

			l_user_player ?= players.at (2)	--This must always succeed
			io.put_string ("In IG_LOGIC.receive_all_names. Name of second player: " + l_user_player.name + ".%N")

			--Remove user player
			players.go_i_th (2)
			players.remove

			from
				players.start
				args.start
				i := 1
			until
				i > gameboard.num_players
			loop
				if i = 1 then
					--Master, never move
					io.put_string ("Setting name of master to " + args.item + ".%N")
					players.item.set_name (args.item)
				elseif args.item.is_equal (l_user_player.name) then
					io.put_string ("Extending players by user player " + l_user_player.name + ".%N")
					players.extend (l_user_player)
				else
					create l_generic_player.make_with_name (args.item)
					io.put_string ("Extending players by generic player " + l_generic_player.name + ".%N")
					players.extend (l_generic_player)
				end

				if next_player = Void and i > 1 then
					next_player := players.last
				end

				i := i + 1
				args.forth
--				players.forth
			end

			across players as l_cursor loop
				create l_scoreboard.make
				l_cursor.item.set_scoreboard (l_scoreboard)
			end

--			is_initialized := True
			host_join_callback.call ([])
		ensure
			next_player /= Void
		end

	swap_tiles(a_player: IG_PLAYER)
		require
			a_player /= Void
		do
			from
				a_player.tiles.start
			until
				a_player.tiles.after
			loop
				tiles.extend (a_player.tiles.item)	--TODO: Insert randomly...
				a_player.tiles.remove
			end
			from
				tiles.start
			until
				a_player.tiles.count = 6
			loop
				a_player.tiles.extend (tiles.item)
				tiles.remove
			end
		end

feature -- Game Status

	is_game_over: BOOLEAN
			-- Is the game over?
		do
				-- Has any player scored 18 points for all colors?
			Result := across players as l_cursor some should_instantly_win (l_cursor.item) end
			Result := Result or not gameboard.can_add_tile
		end

	can_swap_tiles (a_player: IG_PLAYER): BOOLEAN
			-- Can the given player swap the tiles?
			-- True if the tiles rack does not contain any of the colors
			-- currently in lowest position of the scoreboard.
		require
			valid_player: a_player /= Void and then a_player.scoreboard /= Void
		local
			l_min: INTEGER
			l_lowest_colors: LINKED_LIST[STRING]
		do
				-- Find the lowest score for the given player
			l_min := 1000
			across hex_colors as l_cursor loop
				l_min := l_min.min (a_player.scoreboard.points_for_color (l_cursor.item))
			end
				-- Find the colors with the lowest score (there could be more than one)
			create l_lowest_colors.make
				-- We want to compare strings as objects, not references
			l_lowest_colors.compare_objects
			across hex_colors as l_cursor loop
				if a_player.scoreboard.points_for_color (l_cursor.item) = l_min then
					l_lowest_colors.extend (l_cursor.item)
				end
			end
				-- If no tile contains any of the lowest colors,
				-- then the player may swap tiles
			Result := across a_player.tiles as l_cursor all
				not (l_lowest_colors.has (l_cursor.item.first_hex.color) or l_lowest_colors.has (l_cursor.item.second_hex.color))
			end
		end

feature -- Access
	is_master: BOOLEAN
		--If a player is a master or slave (true == master)

	gameboard: IG_GAMEBOARD
		-- Returns the state of Game Board

	scoreboards: LINKED_LIST[IG_SCOREBOARD]
			-- The scoreboard of each player
		do
			create Result.make
			across players as l_cursor loop
				Result.extend (l_cursor.item.scoreboard)
			end
		end

	user_player: IG_USER_PLAYER
			-- The user player. For each instance of the application,
			-- there should be exactly one user player.
		do
			across players as l_curosor loop
				if attached {IG_USER_PLAYER} l_curosor.item as l_player then
					Result := l_player
				end
			end
		ensure
			result_not_void: Result /= Void
		end

	current_player: IG_PLAYER
		-- Returns the current player
	next_player: IG_PLAYER
		-- Returns a player and does not produce any side effects

	players: LINKED_LIST[IG_PLAYER]

	game_update_actions: ACTION_SEQUENCE[TUPLE[]]
		-- The list of subscribers notified when the logic updated the game state.

feature {NONE} -- Implementation

	tiles: ARRAYED_LIST[IG_TILE]
		-- The list of all available tiles.

	host_join_callback: PROCEDURE[ANY, TUPLE[]]

 	abort_callback: PROCEDURE[ANY, TUPLE[]]

	game_over_callback: PROCEDURE[ANY, TUPLE[IG_PLAYER]]

	initialize_tiles
		local
			i: INTEGER
			l_tile: IG_TILE
			l_first_hex, l_second_hex: IG_HEX
			l_added_colors: ARRAYED_SET[STRING]
			l_random: RANDOM
			l_time: DATE_TIME
		do
				-- Add hexes with double colors (e.g. blue/blue)
			across hex_colors as l_cursor loop
				from i := 1	until i > 5 loop
					create l_first_hex.make (l_cursor.item)
					create l_second_hex.make (l_cursor.item)
					create l_tile.make_with_hexes (l_first_hex, l_second_hex)
					tiles.extend (l_tile)
					i := i + 1
				end
			end
			check tiles.count = 30 end
				-- Add hexes with two-colours combination
				-- Red/Blue and Blue/Red represent the same color,
				-- so we store the first combination in the set and ignore
				-- the second combination.
			create l_added_colors.make (15)
			l_added_colors.compare_objects
			across hex_colors as l_first_cursor loop
				across hex_colors as l_second_cursor loop
						-- Do not add hexes with double colors, because it is already done above.
					if not l_first_cursor.item.is_equal (l_second_cursor.item) then
						if not l_added_colors.has (l_first_cursor.item + l_second_cursor.item) then
							l_added_colors.extend (l_second_cursor.item + l_first_cursor.item)
								-- Each combination has six tiles
							from i := 1	until i > 6 loop
								create l_first_hex.make (l_first_cursor.item)
								create l_second_hex.make (l_second_cursor.item)
								create l_tile.make_with_hexes (l_first_hex, l_second_hex)
								tiles.extend (l_tile)
								i := i + 1
							end
						end
					end
				end
			end
				-- Randomize the tiles order
			create l_time.make_now
			create l_random.set_seed (l_time.seconds)
			from l_random.start; tiles.start
			until tiles.after
			loop
				tiles.swap ((l_random.item \\ tiles.count) + 1)
				l_random.forth
				tiles.forth
			end
		ensure
			all_tiles_added: tiles.count = 120
		end

	should_instantly_win (a_player: IG_PLAYER): BOOLEAN
			-- Should the player win instantly? True if scored at least 18 points for each color.
		require
			player_not_void: a_player /= Void and then a_player.scoreboard /= Void
		do
			Result := across hex_colors as l_cursor all a_player.scoreboard.points_for_color (l_cursor.item) >= 18 end
		end

end
