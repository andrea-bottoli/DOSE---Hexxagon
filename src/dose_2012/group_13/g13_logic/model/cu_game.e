note
	description: "This is the interface between the controller and the logic. To access the model you need to pass from here"
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	CU_GAME
inherit
	CU_OBSERVABLE
		--Net and GUI observe the model with this

create
	make

feature {CU_LOGIC}
	make
		do
		ensure
			make_constants: constants /= void
			make_players: active_players /= void
		end

feature  -- Access
	constants: CU_CONSTANTS --contains all the constants of the game

	current_status: INTEGER --refers to the constants in CU_ENUM_GAME_STATES

	solution: ARRAY [CU_CARD]
			-- Returns the solution of the case, represented by three cards,
			--where, the first is a pawn card, the second is a weapon card and the third is a room card
		attribute
		ensure
			result_not_void: Result /= void
		end

	game_board: CU_BOARD
			-- the gameboard containing rooms and corridors
		attribute
		ensure
			result_not_void: Result /= void
		end

	current_player: CU_PLAYER
			--returns the player who's playing the current turn
		attribute
		ensure
			result_not_void: Result /= void
		end

	who_i_am: CU_PLAYER
			--returns the owner of this game instance

	n_turns: INTEGER
		--represents the number of turns happened in the game
		attribute
		ensure
			result_valid: result>=0
		end

	active_players: ARRAY[CU_PLAYER]
		--get the list of active players
		attribute
		ensure
			result_not_void: Result /= void
		end

	players: ARRAY[CU_PLAYER]
		--get the complete list of players
		attribute
		ensure
			result_not_void: Result /= void
		end
feature -- Status

	get_available_pawns: LINKED_LIST[INTEGER]
		-- get the list of available pawns
		local
			l_list: LINKED_LIST[INTEGER]
			l_i: INTEGER
		do
			l_list:=constants.suspects.get_list

			from
				l_i:=1
			until
				l_i>6
			loop
				l_list.start
				l_list.search (active_players.item (l_i).pawn)
				l_list.remove
			end

			result:=l_list
		ensure
				valid_result: result /= void
		end

	player_can_suggest: BOOLEAN
		--Checks if the current player can make a suggestion
		do
			result:=true
			if current_status /= constants.game_states.suggesting then
				result:= false
			end

			if result and then not attached {CU_ROOM} game_board.find_square(current_player.position) then
				result:= false
			end
		end

feature {CU_LOGIC,EQA_TEST_SET}--Procedures

	next_turn
		--goes to the next player
		require
			right_phase: current_status = constants.game_states.suggesting
		do
			n_turns:=n_turns+1
			current_player:=active_players[n_turns\\active_players.count]
			next_game_state (false)
			notify_observers (create{CU_MESSAGE}.make("new_turn", <<>>))
		ensure
			new_current_player: current_player /= old current_player
			next_one: current_player = active_players[n_turns\\active_players.count]
			next_num: n_turns = old n_turns + 1
			new_turn: current_status=constants.game_states.dices
		end


	new_player (a_name: STRING; a_pawn: INTEGER)
		--adds a player to the game
		require
			right_phase: current_status = constants.game_states.initializing
			name_not_void: a_name /= void
			name_not_empty: not a_name.is_equal ("")
			valid_pawn: a_pawn>=0 and a_pawn<=5
			players_not_full: active_players.count<6
		local
			l_player: CU_PLAYER
		do
			create l_player.make (a_name, a_pawn)
			active_players.force (l_player, active_players.count+1)
			players.force (l_player, players.count+1)
			--we assume that the first player is the owner of the game instance
			if who_i_am = void then
				who_i_am := l_player

			end
			notify_observers (create{CU_MESSAGE}.make("new_player",<<l_player>>))
		ensure
			one_more_active_player: active_players.count=old active_players.count+1
			one_more_player: players.count=old players.count+1
		end

	generate_solution
		-- generates the solution of the case at the beginning
		require
			right_phase: current_status = constants.game_states.starting
			solution_void: solution=void
		local
      l_list: LINKED_LIST[INTEGER]
      l_int: INTEGER
      l_card_sus: CU_SUSPECT_CARD
      l_card_wea: CU_WEAPON_CARD
      l_card_roo: CU_ROOM_CARD
    do
    	l_list:=constants.suspects.get_list
			l_int:=rand(l_list.count)
			l_list.move(l_int)
			create l_card_sus.make (l_list.item)
			solution.force (l_card_sus, 1)

			l_list:=constants.weapons.get_list
			l_int:=rand(l_list.count)
			l_list.move(l_int)
			create l_card_wea.make (l_list.item)
			solution.force (l_card_wea, 2)

			l_list:=constants.rooms.get_list
			l_int:=rand(l_list.count)
			l_list.move(l_int)
			create l_card_roo.make (l_list.item)
			solution.force (l_card_roo, 3)
		ensure
			correct_solution: solution /=void and solution.count=3
		end

	distribute_cards
		-- distributes cards among players
		require
			right_phase: current_status = constants.game_states.starting
		local
			i: INTEGER
			l_cards_deck: LINKED_LIST [CU_CARD]
		do
			create l_cards_deck.make
			deck_init(l_cards_deck)
			from
				i:=1
			until
				l_cards_deck.off
			loop
				l_cards_deck.start
				active_players.item (i\\active_players.count).add_card_to_hand (l_cards_deck.item)
				l_cards_deck.remove
				i:=i+1
			end
		end

	board_setup
		-- sets the gameboard
		require
			right_phase: current_status = constants.game_states.starting
			board_void: game_board = void
			--Set initial player's position
		do
			create game_board.make
		ensure
			board_not_empty: game_board /= void
		end

	sort_player_order
		-- sorts the order in which players turns will take place
		require
			right_phase: current_status = constants.game_states.starting
		local
			l_list: LINKED_LIST[INTEGER]
			l_ordered_players: ARRAY[CU_PLAYER]
			i: INTEGER
		do
			l_list:= constants.suspects.get_list
			from
				l_list.start
			until
				l_list.off or else active_players.count=l_ordered_players.count
			loop
				from
					i:=0
				until
					i>active_players.count
				loop
					if l_list.item=active_players.item (i).pawn then
						l_ordered_players.force (active_players.item (i), l_ordered_players.count+1)
					end
				end
			end
			active_players:=l_ordered_players
		end

	remove_player (a_pl: CU_PLAYER)
		--removes specific player from the game
		require
			active_player_exists: active_players.has(a_pl)
			player_exists: players.has (a_pl)
		local
			new_current_turn: INTEGER
		do
			redistribute_cards(a_pl)
			if attached {CU_CORRIDOR} a_pl.position as l_corridor then
				l_corridor.player_moves_out
				l_corridor.pawn_moves_in (a_pl.pawn)
			else if attached {CU_ROOM} a_pl.position as l_room then
				l_room.player_exits (a_pl)
				l_room.insert_pawns (a_pl.pawn)
			end
			end
			n_turns:=remove_players_from_array(a_pl, players)
			n_turns:=remove_players_from_array(a_pl, active_players)
			notify_observers (create{CU_MESSAGE}.make("player_removed", <<a_pl>>))
		ensure
			active_player_does_not_exist: not active_players.has(a_pl)
			player_does_not_exists: not players.has (a_pl)
		end

	player_loses(a_pl: CU_PLAYER)
		require
			active_player_exists: active_players.has (a_pl)
			players_exists: players.has (a_pl)
		local
			l_i: INTEGER
		do
			l_i:=remove_players_from_array (a_pl, active_players)
			notify_observers (create{CU_MESSAGE}.make("player_loses", <<a_pl>>))
		ensure
			player_does_not_exists: not active_players.has (a_pl)
		end

	throw_dices(): INTEGER
		--current_player throws the dices
		require
			right_phase: current_status = constants.game_states.dices
		do
			result:=rand(12)
		end

	move (a_pl: CU_PLAYER; a_dir: CHARACTER_8)
		--moves a specific player into an adiacent square following given direction
		require
			right_phase: current_status = constants.game_states.moving
			player_not_void: a_pl /= void
			player_exists: active_players.has(a_pl)
			valid_dir: a_dir.is_equal ('u') or a_dir.is_equal ('d') or a_dir.is_equal ('r') or a_dir.is_equal ('l')
		local
			l_current_sq: CU_SQUARE
		do
			l_current_sq:=game_board.board.item (current_player.position.x, current_player.position.y)
			if attached {CU_CORRIDOR} l_current_sq as l_current_corridor then
				inspect
					a_dir
				when 'u' then
					if l_current_corridor.n.is_equal ("door") or l_current_corridor.n.is_equal ("corridor") then
						square_player_setting(current_player.position.x-1,current_player.position.y)
					end
				when 'd' then
					if l_current_corridor.s.is_equal ("door") or l_current_corridor.s.is_equal ("corridor") then
						square_player_setting(current_player.position.x+1,current_player.position.y)
					end
				when 'l' then
					if l_current_corridor.w.is_equal ("door") or l_current_corridor.w.is_equal ("corridor") then
						square_player_setting(current_player.position.x,current_player.position.y-1)
					end
				when 'r' then
					if l_current_corridor.e.is_equal ("door") or l_current_corridor.e.is_equal ("corridor") then
						square_player_setting(current_player.position.x,current_player.position.y+1)
					end
				end
			end
			notify_observers (create{CU_MESSAGE}.make("player_moved", <<current_player>>))
		ensure
			player_exists: active_players.has(a_pl)
			changed_square: a_pl.position /= old a_pl.position
		end

	player_teleport(a_suspect: INTEGER; a_room: INTEGER)
		--Moves a player directly in a room, effect of a suggestion
		require
			right_phase: current_status = constants.game_states.suggesting
			valid_pawn: a_suspect>=0 and a_suspect<=5
			valid_room: a_room>=0 and a_room<=5
		local
			l_room_coord: CU_COORDINATE
			l_pl: CU_PLAYER
		do
			l_room_coord:=game_board.find_room (a_room)
			if attached {CU_ROOM} game_board.board.item (l_room_coord.x, l_room_coord.y) as l_room then
				l_pl:=find_player_from_pawn(a_suspect)
				if l_pl /= void then
					l_pl.move_to_position (l_room_coord.x, l_room_coord.y)
					l_room.player_enters (l_pl)
				else
					l_room.insert_pawns(a_suspect)
				end
			end
			notify_observers (create {CU_MESSAGE}.make("moved_pawn",<<>>))--We don't know what info observers may want, yet
		end

	suggest(a_suspect: CU_SUSPECT_CARD; a_weapon: CU_WEAPON_CARD)
		require
			can_suggest: player_can_suggest
			valid_susp: a_suspect /= void
			valid_weap: a_weapon /= void
			right_phase: current_status=constants.game_states.suggesting
		local
			l_i: INTEGER
			l_pl: CU_PLAYER
			l_rejecter: CU_PLAYER
			l_result: BOOLEAN
			l_exit: BOOLEAN
		do
			if attached {CU_ROOM} game_board.find_square (current_player.position) as l_room then
				game_board.weapon_find_and_move (a_weapon.weapon, current_player.position)
				notify_observers (create {CU_MESSAGE}.make("moved_weapon",<<>>))--We don't know what info observers may want, yet

				player_teleport (a_suspect.suspect, l_room.room_id)

				--Generate a list of players who can reject a suggestion
				from
					l_i:=0
				until
					l_i>players.count or l_exit
				loop
					if players.item(l_i)=l_pl then
						l_exit:=true
					else
						l_i:=l_i+1
					end
				end
				from
				until
					players.item (l_i+1\\players.count)=current_player
				loop
					l_result:=false
					l_pl:=players.item (l_i)
					if l_pl.is_in_hand(l_room.room_id,1) or else l_pl.is_in_hand(a_suspect.suspect,2) or else l_pl.is_in_hand(a_weapon.weapon,3) then
						l_rejecter:=players.item(l_i)
					end
					l_i:=l_i+1
				end
				if l_rejecter=void then
					notify_observers (create {CU_MESSAGE}.make("suggestion_is_correct'",<<>>))
				else
					notify_observers (create {CU_MESSAGE}.make("suggestion_can_be_rejected",<<l_rejecter, a_suspect, a_weapon,create{CU_ROOM_CARD}.make(l_room.room_id) >>))
				end
			end
		end

	accuse(a_room: CU_ROOM_CARD; a_suspect: CU_SUSPECT_CARD; a_weapon: CU_WEAPON_CARD)
		require
			can_suggest: player_can_suggest
			valid_room: a_room /= void
			valid_susp: a_suspect /= void
			valid_weap: a_weapon /= void
			right_phase: current_status=constants.game_states.suggesting
		local
			l_result: BOOLEAN
			l_pl: CU_PLAYER
		do
			game_board.weapon_find_and_move (a_weapon.weapon, current_player.position)
			notify_observers (create {CU_MESSAGE}.make("moved_weapon",<<>>))--We don't know what info observers may want, yet

			player_teleport (a_suspect.suspect, a_room.room)

			l_result:=true
			if attached {CU_SUSPECT_CARD} solution.item (1) as l_sus then
				if l_sus.suspect /=a_suspect.suspect then
					l_result:=false
				end
			end
			if l_result and then attached {CU_WEAPON_CARD} solution.item (2) as l_wea then
				if l_wea.weapon /=a_weapon.weapon then
					l_result:=false
				end
			end
			if l_result and then attached {CU_ROOM_CARD} solution.item (3) as l_roo then
				if l_roo.room /=a_room.room then
					l_result:=false
				end
			end

			if l_result then
				notify_observers (create {CU_MESSAGE}.make("accusation_ok",<<>>))
				next_game_state (true)
			else
				notify_observers (create {CU_MESSAGE}.make("accusation_wrong",<<>>))
				player_loses (current_player)
			end
		end

	next_game_state(a_end:BOOLEAN)
		--puts the game to the next state, based on the CU_ENUM_GAME_STATES class
		require
			not_finished_game: current_status /= constants.game_states.ending
			end_only_if_suggesting: a_end=true implies (current_status = constants.game_states.suggesting)
		do
			if current_status=constants.game_states.suggesting and not a_end then
				current_status:=constants.game_states.dices
			else
				current_status:=current_status+1
			end
			notify_observers (create{CU_MESSAGE}.make("new_game_state",<<current_status>>))
		ensure
			start_goes_on: ((old current_status = constants.game_states.suggesting) and not (current_status>old current_status) and not a_end)  or ((current_status>old current_status) and a_end) or (not (old current_status = constants.game_states.suggesting) and (current_status>old current_status))
			requested_end: (a_end and then current_status=constants.game_states.ending) or not a_end
		end

feature {NONE}
	square_player_setting(a_x,a_y: INTEGER)
		require
			valid_coord: a_x>0 and a_y>0
		local
			l_square: CU_SQUARE
		do
			current_player.move_to_position (a_x,a_y)
			l_square:=game_board.board.item (a_x,a_y)
			if attached {CU_CORRIDOR} l_square as l_corridor then
				l_corridor.player_moves_in(current_player)
			else
				if attached {CU_ROOM} l_square as l_room then
					l_room.player_enters(current_player)
				end
			end
	end

	deck_init(a_cards_deck: LINKED_LIST[CU_CARD])
		do
			deck_shuffle_insert (a_cards_deck,constants.suspects.get_list, 1)
			deck_shuffle_insert (a_cards_deck,constants.weapons.get_list, 2)
			deck_shuffle_insert (a_cards_deck,constants.rooms.get_list, 3)
		end

	deck_shuffle_insert(a_cards_deck: LINKED_LIST [CU_CARD];a_list: LINKED_LIST[INTEGER]; a_position: INTEGER)
		require
			valid_list: a_list /= void
			valid_deck: a_cards_deck /= void
		local
			l_int: INTEGER
		do
			from
				a_list.start
			until
				a_list.off
			loop
				l_int:=rand(a_cards_deck.count)
				a_cards_deck.move (l_int)
				inspect
					a_position
				when 1 then
					if attached {CU_SUSPECT_CARD} solution.item(a_position) as l_temp_sus then
						if l_temp_sus.suspect=a_list.item then
							a_cards_deck.put_left (create {CU_SUSPECT_CARD}.make (a_list.item))
						end
					end
				when 2 then
					if attached {CU_WEAPON_CARD} solution.item(a_position) as l_temp_wea then
						if l_temp_wea.weapon=a_list.item then
							a_cards_deck.put_left (create {CU_WEAPON_CARD}.make (a_list.item))
						end
					end
				when 3 then
					if attached {CU_ROOM_CARD} solution.item(a_position) as l_temp_roo then
						if l_temp_roo.room=a_list.item then
							a_cards_deck.put_left (create {CU_ROOM_CARD}.make (a_list.item))
						end
					end
				end
			end
		end

	rand(a_module: INTEGER): INTEGER
		local
			l_time: TIME
			l_seed: INTEGER
			l_rand: RANDOM
		do
			create l_time.make_now
      l_seed := l_time.hour
     	l_seed := l_seed * 60 + l_time.minute
      l_seed := l_seed * 60 + l_time.second
      l_seed := l_seed * 1000 + l_time.milli_second
      create l_rand.set_seed (l_seed)
			l_rand.forth
			result:=l_rand.item\\a_module+1
		end

	redistribute_cards(a_pl: CU_PLAYER)
		local
			i: INTEGER
		do
			from
				i:=1
				a_pl.hand.start
			until
				a_pl.hand.off
			loop
				active_players.item (i\\active_players.count).add_card_to_hand(a_pl.hand.item)
				i:=i+1
			end
		end

	find_player_from_pawn(a_pawn: INTEGER): CU_PLAYER
		local
			l_i: INTEGER
			l_stop: BOOLEAN
		do
			result:=void
			l_stop:=false
			from
				l_i:=0
			until
				l_i>active_players.count or l_stop=true
			loop
				if active_players.item (l_i).pawn=a_pawn then
					result:=active_players.item (l_i)
					l_stop:=true
				end
			end
		end

	remove_players_from_array(a_pl: CU_PLAYER; a_players: ARRAY[CU_PLAYER]): INTEGER
		local
			i: INTEGER
		do
			from
				i:=1
			until
				i>a_players.count
			loop
				if a_pl=a_players.item (i) then
				result:=i;
					from
					until
						i>a_players.count
					loop
						a_players.item (i):=a_players.item (i+1)
						i:=i+1
					end
				end
				i:=i+1
			end
			a_players.put (void, i-2)
			a_players.trim--This is the correct way to eliminate holes in the array
		end

invariant
	valid_players_num: (current_status>=constants.game_states.starting and active_players.count >=2 and active_players.count<=6) or current_status<constants.game_states.starting
end
