note
	description: "Summary description for {BS_GAME}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	BS_GAME

inherit
	BS_CONSTANTS;
	THREAD
		rename
			make as thread_make
		export
			{NONE} thread_make
		end

create
	make,
	make_with_server_parameters

feature --create methods

	make_with_server_parameters( port: INTEGER;  maximum_clients: INTEGER; master_key: INTEGER)
	do
		create players.make
		create event_mutex.make()
		create shutdown_mutex.make()
		has_started := false
		create server.make (Current, port, maximum_clients, create {BS_NET_AGENT_SET}.make (agent machine_connected_event, agent machine_disconnected_event, agent add_player_event, agent remove_player_event, agent start_game_event, agent rematch_event), master_key)
		thread_make
		listening_successful := (server.start_listening() ~ "OK")
		two_players_mode := false
		total_scores := Void
	end

	listening_successful : BOOLEAN

	make
		--initialize instance with default values
	do
		make_with_server_parameters (3333, 4, 11111)
	end

	shutdown() -- This should be invoked when the game must terminate
	local
		must_unlock: BOOLEAN
		machine_list: LIST[BS_NET_MACHINE]
	do
		shutdown_mutex.lock()
		must_unlock := true

		if not shutdown_completed then
			server.stop_listening()

			machine_list := server.get_machines()

			from machine_list.start
			until machine_list.after
			loop
				machine_list.item.disconnect()
				machine_list.forth
			end

		end

		shutdown_mutex.unlock()
		must_unlock := false
	rescue
		if must_unlock then
			shutdown_mutex.unlock()
		end
		-- Then fail.
	end

feature --thread stuff
	execute
	do
		loop_game
	end

feature

	add_player( new_player: BS_PLAYER ) : BOOLEAN
		--add a player to the game
		--returns false if game is full	
	require
		game_not_started: not has_started
	do
		if players.count > 3 then
			Result := false
		else
			Result := true
			players.extend (new_player)
		end
	end

	remove_player( new_player: BS_PLAYER ) : BOOLEAN
		--remove a player from the game
		--returns false if game is full	
	require
		game_not_started: not has_started
	local
		index: INTEGER
		deleted_id: INTEGER
	do
		--find first occurence of player
		index := players.index_of ( new_player, 1 )
		--if found then remove it
		if index /= 0 then
			players.go_i_th (index)
			deleted_id := players.item.get_number
			players.remove
			Result := true
			-- Paolo: now we also need to decrease the IDs of all having a higher ID!
			-- This ensures that when you have, say, 2 players in the game, the next
			-- free available ID is 3.
			from
				players.start
			until
				players.after
			loop
				if players.item.get_number > deleted_id then
					players.item.set_number (players.item.get_number - 1)
				end
				players.forth
			end
		else
			Result := false
		end
	end

	remove_player_by_id( id: INTEGER) : BOOLEAN
	do
		Result := false
		from
			players.start
		until
			players.after
		loop
			if players.item.get_number = id then
				players.remove
				Result := true
			else
				-- Paolo: See comment above.
				if players.item.get_number > id then
					players.item.set_number (players.item.get_number - 1)
				end
				players.forth
			end
		end
		players.start
	end

feature --score features

	return_winner( scores: ARRAY[TUPLE[id: INTEGER;name: attached STRING;score: INTEGER]] ): INTEGER
	local
		i, winner, best_score: INTEGER
	do
		best_score := -2000000
		from
			i := 1
		until
			i > scores.count
		loop
			if best_score < scores.item(i).score then
				best_score := scores.item (i).score
				winner := scores.item (i).id
			end
			i := i + 1
		end

		Result := winner
	end

	start_match_scores
	local
		i: INTEGER
	do
		from
			i := 1
		until
			i > total_scores.count
		loop
			--summ down all the squares
			if two_players_mode then
				total_scores.item (i).score := total_scores.item (i).score - 89*2
			else
				total_scores.item (i).score := total_scores.item (i).score - 89
			end
			i := i + 1
		end
	end

	start() : BOOLEAN
		--start game loop
	require
		correct_number_of_players: players.count = 2 or players.count = 4
	local
		player: BS_PLAYER
		add_return : BOOLEAN
	do
		--two players mode replicate players instances
		if players.count = 2 then
			players.start
			player := copy_from_player( players.item, players.count + 1 )
			add_return := add_player (player)

			players.forth
			player := copy_from_player( players.item, players.count + 1 )
			add_return := add_player (player)
			players.start

			two_players_mode := true
		else --this may be the second time that game is started, reset tile sets
			from
				players.start
			until
				players.after
			loop
				players.item.reset
				players.forth
			end
		end

		if total_scores = Void then
			start_total_scores_array
		end

		--start loop in a thread
		terminated := false -- Very, very dirty!
		launch
		result := false
	end

	start_total_scores_array
	local
		tuple: TUPLE[id:INTEGER;name:attached STRING; score:INTEGER]
	do
		if two_players_mode then
			create total_scores.make_filled (Void, 1, 2)

			players.start

			--first player score
			create tuple.default_create
			tuple.id := players.item.get_number
			tuple.name := players.item.get_name
			tuple.score := 0
			total_scores.put (tuple, players.item.get_number)

			players.forth

			--second player score
			create tuple.default_create
			tuple.id := players.item.get_number
			tuple.name := players.item.get_name
			tuple.score := 0
			total_scores.put (tuple, players.item.get_number)

			players.start
		else
			create total_scores.make_filled (Void, 1, 4)

			from
				players.start
			until
				players.after
			loop
				create tuple.default_create
				tuple.id := players.item.get_number
				tuple.name := players.item.get_name
				tuple.score := 0

				total_scores.put (tuple, players.item.get_number)

				players.forth
			end
		end
	end

feature --
	send_move_to_machines(player_id: INTEGER; player_color: INTEGER; move: BS_MOVE)
	local
		machines: LIST [BS_NET_REMOTE_MACHINE]
	do
		machines := server.get_machines
		from
			machines.start
		until
			machines.after
		loop
			machines.item.player_makes_move( player_id, player_color, move)
			if move.get_action = move.action_move then
				machines.item.remove_tile_from_player( player_id, player_color, move.get_tile )
			end
			machines.forth
		end
	end

	send_update_scores_to_machines(new_scores: ARRAY[TUPLE[INTEGER,attached STRING,INTEGER]])
	local
		machines: LIST [BS_NET_REMOTE_MACHINE]
	do
		machines := server.get_machines
		from
			machines.start
		until
			machines.after
		loop
			machines.item.update_scores (new_scores)
			machines.forth
		end
	end

	send_player_list_to_machines()
	local
		machines: LIST [BS_NET_REMOTE_MACHINE]
		player_list: ARRAY[TUPLE[id: INTEGER; name: STRING; type: INTEGER]]
		i: INTEGER
	do
		create player_list.make_filled (void, 1, players.count)
		from
			players.start
			i := 1
		until players.after
		loop
			player_list.at(i) := [players.item.get_number, players.item.get_name, players.item.get_type]
			i := i + 1
			players.forth
		end

		machines := server.get_machines
		from
			machines.start
		until
			machines.after
		loop
			machines.item.update_player_list (player_list)
			machines.forth
		end
	end

	send_start_game_to_machines()
	local
		machines: LIST [BS_NET_REMOTE_MACHINE]
	do
		machines := server.get_machines
		from
			machines.start
		until
			machines.after
		loop
			machines.item.start_game
			machines.forth
		end
	end

	send_set_turn_to_machines(player_id: INTEGER; color_id: INTEGER)
	local
		machines: LIST [BS_NET_REMOTE_MACHINE]
	do
		machines := server.get_machines
		from
			machines.start
		until
			machines.after
		loop
			machines.item.set_turn (player_id, color_id)
			machines.forth
		end
	end

	send_message_to_machines(message: STRING)
	local
		machines: LIST [BS_NET_REMOTE_MACHINE]
	do
		machines := server.get_machines
		from
			machines.start
		until
			machines.after
		loop
			machines.item.print_log_message (message)
			machines.forth
		end
	end

	send_announce_victory_to_machines(player_id: INTEGER)
	local
		machines: LIST [BS_NET_REMOTE_MACHINE]
	do
		machines := server.get_machines
		from
			machines.start
		until
			machines.after
		loop
			machines.item.announce_victory (player_id, total_scores)
			machines.forth
		end
	end
feature --procedures for server events

	machine_connected_event(machine: BS_NET_MACHINE)
	local
		must_unlock: BOOLEAN
	do
		event_mutex.lock()
		must_unlock := true

		send_player_list_to_machines()

		event_mutex.unlock()
		must_unlock := false
	rescue
		if must_unlock then
			event_mutex.unlock()
		end
	end

	machine_disconnected_event(machine: BS_NET_MACHINE)
	local
		must_unlock: BOOLEAN
	do
		event_mutex.lock()
		must_unlock := true

		if machine.is_game_master() then
			shutdown()
		end

		event_mutex.unlock()
		must_unlock := false
	rescue
		if must_unlock then
			event_mutex.unlock()
		end
	end

	add_player_event(machine: BS_NET_REMOTE_MACHINE; name: STRING; type: INTEGER)
	local
		new_player: BS_PLAYER
		add_response : BOOLEAN
		must_unlock: BOOLEAN
		authorized: BOOLEAN
	do
		event_mutex.lock()
		must_unlock := true

		authorized := (type = player_type_human or machine.is_game_master) -- Only the game master can add AI players

		if authorized and players.count < max_players then
			new_player := create_new_player (type, name, machine)

			add_response := add_player ( new_player )

			--if was not possible to insert return error?
			-- Paolo: uhm... I would say for now do nothing.

			if add_response = true then
				send_player_list_to_machines ()
			end
		end

		event_mutex.unlock()
		must_unlock := false
	rescue
		if must_unlock then
			event_mutex.unlock()
		end
	end

	remove_player_event(machine: BS_NET_MACHINE; id: INTEGER)
	local
		remove_response : BOOLEAN
		must_unlock: BOOLEAN
		authorized: BOOLEAN
	do
		event_mutex.lock()
		must_unlock := true

		authorized := false

		from
			players.start
		until
			players.after or else players.item.get_number = id
		loop
			players.forth
		end

		if not players.after then
			authorized := authorized or machine.is_game_master
			if attached {BS_NET_PLAYER} players.item as x then
				authorized := authorized or machine = x.get_machine
			end
		end

		if authorized then
			remove_response := remove_player_by_id (id)
			if remove_response = true then
				send_player_list_to_machines ()
			end
		end

		event_mutex.unlock()
		must_unlock := false
	rescue
		if must_unlock then
			event_mutex.unlock()
		end
	end

	start_game_event(machine: BS_NET_MACHINE)
	local
		succeeded: BOOLEAN
	do
		if machine.is_game_master then -- Otherwise it is not allowed
			succeeded := start()
		end
	end

	rematch_event(machine: BS_NET_MACHINE)
	local
		wedontcare: BOOLEAN
	do
		if machine.is_game_master then
			wedontcare := start()
		else
			-- Let's find the players residing on that machine.
			from
				players.start
			until
				players.after
			loop
				if attached {BS_NET_PLAYER} players.item as x then
					if machine = x.get_machine then
						send_message_to_machines(x.get_name + " is requesting a rematch!")
					end
				end
				players.forth
			end

		end
	end

feature {NONE}
	loop_game
	local
		board : BS_BOARD
		move: BS_MOVE
		move_validity, winner: INTEGER
		new_scores: ARRAY[TUPLE[INTEGER,attached STRING,INTEGER]]
		move_ok: BOOLEAN
		stop_playing: BOOLEAN
	do
		create board.make

		send_start_game_to_machines
		has_started := true

		start_match_scores
		send_update_scores_to_machines ( total_scores )

		create pass_control.make_filled (0, 1, 4)

		--loop players for move
		from
			stop_playing := false
		until
			stop_playing
		loop
			from
				players.start
			until
				players.after
			loop
				if players.item.is_still_playing then

					move_ok := false

					from
					until
						move_ok
					loop
						send_set_turn_to_machines (players.item.get_number, players.item.get_color)
						move := players.item.do_move (board)

						if move.get_action = move.action_move then
							board.insert_player_tile (players.item.get_color, move)
							move_validity := board.last_insertion_result

							if move_validity = 0 then
								players.item.remove_tile ( move.get_tile )
							end
							pass_control.put ( 0, players.item.get_color)
						elseif move.get_action = move.action_pass then
							move_validity := 0

							pass_control.put ( pass_control.item (players.item.get_color) + 1, players.item.get_color)
							if pass_control.item (players.item.get_color) >= max_passes then
								players.item.player_surrend
								create move.make_with_action (move.action_surrender, Void, Void)
							end

						elseif move.get_action = move.action_surrender then
							players.item.player_surrend()
							move_validity := 0
						end

						--if is a valid move then remove tile played, else warn player
						if move_validity = 0 then
							move_ok := true

							send_move_to_machines( players.item.get_number, players.item.get_color, move )

							if move.get_action = move.action_move then
								--update score for player based on last move
								total_scores.item (players.item.get_number).score := total_scores.item (players.item.get_number).score + move.get_tile.squares_count
								if players.item.get_remaining_tiles.count = 0 then
									total_scores.item (players.item.get_number).score := total_scores.item (players.item.get_number).score + 15
									if move.get_tile.get_state.width = 1 and move.get_tile.get_state.height = 1 then
										total_scores.item (players.item.get_number).score := total_scores.item (players.item.get_number).score + 5
									end
								end
								send_update_scores_to_machines ( total_scores )
							end
						else
							players.item.warn_bad_move
						end
					end

				end

				if players.item.get_remaining_tiles.count = 0 then
					--player stop playing
					players.item.player_surrend
				end

				players.forth
			end

			if not is_anyone_playing then
				stop_playing := true
			end

		end

		--search the winner
		winner :=  return_winner (total_scores)
		send_announce_victory_to_machines(winner)

		has_started := false
	end

	is_anyone_playing: BOOLEAN
	local
		response : BOOLEAN
	do
		response:= false
		from
			players.start
		until
			players.after
		loop
			if players.item.is_still_playing then
				response := true
			end

			players.forth
		end

		Result := response
	end

feature {NONE}

	copy_from_player( player: BS_PLAYER; new_color: INTEGER ) : BS_PLAYER
	local
		new_player: BS_PLAYER
	do
		if player.get_type = player_type_human then
			new_player := create_net_player_from_player(player, new_color)
		elseif player.get_type = player_type_ai_easy or player.get_type = player_type_ai_medium or player.get_type = player_type_ai_difficult then
			new_player := create_ai_player_from_player( player, new_color)
		else
			new_player := Void
		end
		new_player.reset_set
		Result := new_player
	end

	create_net_player_from_player( player: BS_PLAYER; new_color: INTEGER ): BS_NET_PLAYER
	local
		new_net_player: BS_NET_PLAYER
	do
		if attached {BS_NET_PLAYER} player as player_net then
			create new_net_player.make (player_net.get_number, new_color, player.get_name, player_net.get_machine)
		end
		Result := new_net_player
	end

	create_ai_player_from_player( player: BS_PLAYER; new_color: INTEGER) : BS_AI_PLAYER
	local
		new_ai_player: BS_AI_PLAYER
	do
		if player.get_type = player_type_ai_easy then
			create new_ai_player.make_ai_with_name (player.get_number, new_color, player.get_name, player.get_type)
			new_ai_player := new_ai_player
		elseif player.get_type = player_type_ai_medium then
			create new_ai_player.make_ai_with_name (player.get_number, new_color, player.get_name, player.get_type)
			new_ai_player := new_ai_player
		elseif player.get_type = player_type_ai_difficult then
			create new_ai_player.make_ai_with_name (player.get_number, new_color, player.get_name, player.get_type)
			new_ai_player := new_ai_player
		else
			new_ai_player := Void
		end
		Result := new_ai_player
	end

	create_new_player(type: INTEGER; name: STRING; requesting_machine: BS_NET_REMOTE_MACHINE ): BS_PLAYER
	local
		new_player: BS_PLAYER
		new_net_player: BS_NET_PLAYER
		new_ai_player: BS_AI_PLAYER
	do
		new_player := Void
		if type = player_type_human then
			create new_net_player.make (players.count+1, players.count+1, name, requesting_machine)
			new_player := new_net_player
		elseif type = player_type_ai_easy then
			create new_ai_player.make_ai_with_name (players.count+1, players.count+1, name, player_type_ai_easy)
			new_player := new_ai_player
		elseif type = player_type_ai_medium then
			create new_ai_player.make_ai_with_name (players.count+1, players.count+1, name, player_type_ai_medium)
			new_player := new_ai_player
		elseif type = player_type_ai_difficult then
			create new_ai_player.make_ai_with_name (players.count+1, players.count+1, name, player_type_ai_difficult)
			new_player := new_ai_player
		else
			new_player := Void
		end
		Result := new_player
	end

feature {NONE}

	server: BS_NET_SERVER
	has_started : BOOLEAN
	players: LINKED_LIST[BS_PLAYER]
	total_scores: ARRAY [TUPLE [id: INTEGER_32; name: STRING_8; score: INTEGER_32]]
	pass_control: ARRAY [INTEGER]
	two_players_mode: BOOLEAN

-- Paolo: Added this for preventing events from overlapping.
	event_mutex: MUTEX

	shutdown_mutex: MUTEX
	shutdown_completed: BOOLEAN

end
