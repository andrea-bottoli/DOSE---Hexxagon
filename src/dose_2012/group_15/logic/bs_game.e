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

	make_with_server_parameters( port: INTEGER;  maximum_clients: INTEGER; key: INTEGER)
	do
		create players.make
		has_started := false
		create server.make (Current, port, maximum_clients, create {BS_NET_AGENT_SET}.make (agent machine_connected_event, agent machine_disconnected_event, agent add_player_event, agent remove_player_event))
		thread_make
	end

	make
		--initialize instance with default values
	do
		make_with_server_parameters (3333, 4, 11111)
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
	do
		--find first occurence of player
		index := players.index_of ( new_player, 1 )
		--if found then remove it
		if index /= 0 then
			players.go_i_th (index)
			players.remove
			Result := true
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
				players.forth
			end
		end
		players.start
	end

feature --score features

	calculate_players_score: ARRAY[TUPLE[INTEGER,INTEGER]]
	local
		scores_array : ARRAY[TUPLE[id:INTEGER;score:INTEGER]]
		score: INTEGER
		player_id: INTEGER
		tuple: TUPLE[id:INTEGER;score:INTEGER]
		i: INTEGER
	do
		scores_array.make_empty

		--add scores for each color
		from
			players.start
		until
			players.after
		loop
			score := calculate_score( players.item )
			player_id := players.item.get_number

			create tuple.default_create
			tuple.id := player_id
			tuple.score := score

			--add tuple to the list or just update score
			from
				i := 0
			until
				i > scores_array.count
			loop
				--if this id already exist then just update score else create a new
				if scores_array.item (i).id = tuple.id then
					scores_array.item (i).score := scores_array.item (i).score + tuple.score
				else
					--new entry
					scores_array.conservative_resize_with_default (Void, 1, scores_array.count + 1)
					scores_array.put (tuple, scores_array.count + 1)
				end

				i := i + 1
			end

			players.forth
		end

		Result := scores_array
	end

	calculate_score( player: BS_PLAYER ): INTEGER
	local
		count, score: INTEGER
		tile: BS_TILE
		remaining_tiles: LINKED_LIST[BS_TILE]
	do
		score := 0
		remaining_tiles := player.get_remaining_tiles

		--Calculate scores of individual inserted squares of each tile
		from
			remaining_tiles.start
		until
			remaining_tiles.after
		loop
			tile := remaining_tiles.item

			score := count - tile.squares_count
			remaining_tiles.forth
		end

		--Bonus if inserted all
		if player.get_remaining_tiles.count = 0 then
			score := score + 15
			--more bonus if last tile inserted is the one square piece
			tile := board.get_player_moves (player.get_number).item (21).get_tile
			if tile.get_original_state.height = 1 and tile.get_original_state.width = 1 then
				score := score + 5
			end
		end
		remaining_tiles.start

		Result := score
	end

	start
		--start game loop
	require
		correct_number_of_players: players.count = 2 or players.count = 4
	do
		--start loop in a thread
		launch
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
			machines.item.remove_tile_from_player( player_id, player_color, move.get_tile )
			machines.forth
		end
	end

	send_bad_move_to_machines(player_id: INTEGER; player_color: INTEGER)
	local
		machines: LIST [BS_NET_REMOTE_MACHINE]
	do
		machines := server.get_machines
		from
			machines.start
		until
			machines.after
		loop
			machines.item.warn_bad_move (player_id, player_color)
			machines.forth
		end
	end

	send_update_scores_to_machines(new_scores: ARRAY[TUPLE[INTEGER,INTEGER]])
	local
		machines: LIST [BS_NET_REMOTE_MACHINE]
	do
		machines := server.get_machines
		from
			machines.start
		until
			machines.after
		loop
			-- by Paolo: can you please update this call and add the players' name to the scores?
			-- machines.item.update_scores (new_scores)
			machines.forth
		end
	end

feature --procedures for server events

	machine_connected_event(machine: BS_NET_MACHINE)
	do

	end

	machine_disconnected_event(machine: BS_NET_MACHINE)
	do

	end

	add_player_event(machine: BS_NET_MACHINE; name: STRING; type: INTEGER)
	local
		new_player: BS_PLAYER
		add_response : BOOLEAN
	do
		new_player := create_new_player (type, name)

		add_response := add_player ( new_player )

		--if was not possible to insert return error?
	end

	remove_player_event(machine: BS_NET_MACHINE; id: INTEGER)
	local
		remove_response : BOOLEAN
	do
		remove_response := remove_player_by_id (id)
	end

feature {NONE}
	loop_game
	local
		ai_player: BS_AI_PLAYER --using this to force ai_player compilation
		move: BS_MOVE
		move_validity: INTEGER
		new_scores: ARRAY[TUPLE[INTEGER,INTEGER]]
	do
		ai_player := Void

		has_started := true
		--loop players for move
		from
			players.start
		until
			players.after
		loop
			if players.item.is_still_playing then
				move := players.item.do_move (board)

				board.insert_player_tile (players.item.get_color, move)
				move_validity := board.last_insertion_result

				--if is a valid move then remove tile played, else warn player
				if move_validity = 0 then
					players.item.remove_tile ( move.get_tile )
					send_move_to_machines( players.item.get_number, move.get_tile.get_color, move )
				else
					send_bad_move_to_machines( players.item.get_number, move.get_tile.get_color )
				end
			end
			players.forth
		end

		--after finished calculate score and send to all
		new_scores := calculate_players_score
		send_update_scores_to_machines ( new_scores )

		has_started := false
	end

feature {NONE}

	create_new_player(type: INTEGER; name: STRING ): BS_PLAYER
	local
		new_player: BS_PLAYER
	do
		new_player := Void
		if type = player_type_human then
			create new_player.make_with_name (players.count+1, players.count+1, name)
		elseif type = player_type_ai_easy then

		elseif type = player_type_ai_medium then

		elseif type = player_type_ai_difficult then

		else
			new_player := Void
		end

		Result := new_player
	end

feature {NONE}

	server: BS_NET_SERVER
	board : BS_BOARD
	has_started : BOOLEAN
	players: LINKED_LIST[BS_PLAYER]

end
