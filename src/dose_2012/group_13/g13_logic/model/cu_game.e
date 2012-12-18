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
			create constants
			current_status:=constants.game_states.initializing
			n_turns:=-1
			create players.make_empty
			create active_players.make_empty
			create solution.make_empty
		ensure
			make_constants: constants /= void
			make_players: active_players /= void and players/= void
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

	steps: LINKED_LIST[CU_SQUARE]
		--The list of squares visited in the current turn
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
		local
			l_i: INTEGER
			l_is_blocked: BOOLEAN
		do
			result:=true
			if current_status /= constants.game_states.suggesting then
				result:= false
			end

			if result and then not attached {CU_ROOM} game_board.find_square(current_player.position) then
				result:= false
			end

			if attached {CU_ROOM} game_board.find_square (current_player.position) as l_room then
				l_is_blocked:=true
				from
					l_i:=1
				until
					l_i>l_room.doors.count or not l_is_blocked
				loop
					if attached {CU_CORRIDOR} game_board.find_square (l_room.doors.item (l_i)) as l_temp then
						if l_temp.player_on = void then
							l_is_blocked:=false
						end
					end
				end
			end
			if result and then l_is_blocked  then
				result:=false
			end
		end

feature {CU_LOGIC,EQA_TEST_SET}--Procedures

	next_turn
		--goes to the next player
		require
			right_phase: current_status = constants.game_states.suggesting or current_status = constants.game_states.starting
		local
			l_pl_i:INTEGER
		do
			n_turns:=n_turns+1
			l_pl_i:=n_turns\\active_players.count+1
			current_player:=active_players.entry (l_pl_i)
			if current_player.room_unset=0 then
				current_player.set_suggestion_room(void)
			end
			current_player.decrease_room_count

			next_game_state (false)
			create steps.make
			notify_observers (create{CU_MESSAGE}.make("new_turn", <<>>))
		ensure
			--new_current_player: current_player /= old current_player
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
				i:=0
			until
				l_cards_deck.off
			loop
				l_cards_deck.start
				active_players.item ((i\\active_players.count)+1).add_card_to_hand (l_cards_deck.item)
				l_cards_deck.remove
				i:=i+1
			end
		end

	board_setup
		-- sets the gameboard	
		require
			right_phase: current_status = constants.game_states.starting
			board_void: game_board = void
		local
			l_i: INTEGER
			l_rand: INTEGER
			l_coord: CU_COORDINATE
			l_rooms: LINKED_LIST[CU_ROOM]
			l_r_list: LINKED_LIST[INTEGER]
			l_w_list: LINKED_LIST[INTEGER]
		do
			create game_board.make
			--Set initial player's position
			from
				l_i:=1
			until
				l_i>players.count
			loop
				inspect
					players.item (l_i).pawn
				when 0 then
					if attached {CU_CORRIDOR} game_board.board.item(25, 8) as scarlet then
						scarlet.player_moves_in (players.item (l_i))
						players.item (l_i).move_to_position (25,8)
					end
				when 1 then
					if attached {CU_CORRIDOR} game_board.board.item(18, 1) as mustard then
						mustard.player_moves_in (players.item (l_i))
						players.item (l_i).move_to_position (18,1)
					end
				when 2 then
					if attached {CU_CORRIDOR} game_board.board.item(1, 10) as white then
						white.player_moves_in (players.item (l_i))
						players.item (l_i).move_to_position (1,10)
					end
				when 3 then
					if attached {CU_CORRIDOR} game_board.board.item(1, 15) as green then
						green.player_moves_in (players.item (l_i))
						players.item (l_i).move_to_position (1,15)
					end
				when 4 then
					if attached {CU_CORRIDOR} game_board.board.item(7, 24) as peacock then
						peacock.player_moves_in (players.item (l_i))
						players.item (l_i).move_to_position (7,24)
					end
				when 5 then
					if attached {CU_CORRIDOR} game_board.board.item(20, 24) as plum then
						plum.player_moves_in (players.item (l_i))
						players.item (l_i).move_to_position (20,24)
					end
				end
				l_i:=l_i+1
			end
			--Sets weapons initial position randomly
			l_r_list:= constants.rooms.get_list
			l_w_list:= constants.weapons.get_list
			create l_rooms.make
			from
				l_i:= 1
			until
				l_i>l_r_list.count
			loop
				l_coord:= game_board.find_room (l_r_list.at (l_i))
				if attached {CU_ROOM} game_board.board.item(l_coord.x, l_coord.y) as l_room then
					l_rooms.extend (l_room)
				end
				l_i:= l_i+1
			end
			from
				l_i:= 1
				l_rooms.start
			until
				l_i>l_w_list.count
			loop
				l_rand:= rand (l_rooms.count)
				l_rooms.go_i_th (l_rand)
				l_rooms.item.weapon_in (l_w_list.at (l_i))
				l_rooms.remove
				l_i:= l_i+1
			end
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
			l_stop: BOOLEAN
			l_i: INTEGER
		do
			l_list:= constants.suspects.get_list
			create l_ordered_players.make_empty
			from
				l_list.start
			until
				l_list.off or else active_players.count=l_ordered_players.count
			loop
				from
					l_i:=1
					l_stop:=false
				until
					l_i>active_players.count or l_stop
				loop
					if l_list.item=active_players.item (l_i).pawn then
						l_ordered_players.force (active_players.item (l_i), l_ordered_players.count+1)
						l_stop:=true
					end
					l_i:=l_i+1
				end
				l_list.forth
			end
			active_players:=l_ordered_players
		end

	remove_player (a_pl: CU_PLAYER)
		--removes specific player from the game
		require
			--active_player_exists: active_players.has(a_pl)
			player_exists: players.has (a_pl)
		local
			l_temp: INTEGER
		do
			no_blocking_door(a_pl)
			redistribute_cards(a_pl)
			if attached {CU_CORRIDOR} a_pl.position as l_corridor then
				l_corridor.player_moves_out
				l_corridor.pawn_moves_in (a_pl.pawn)
			else if attached {CU_ROOM} a_pl.position as l_room then
				l_room.player_exits (a_pl)
				l_room.insert_pawns (a_pl.pawn)
			end
			end
			l_temp:=remove_players_from_array(a_pl, players)
			if active_players.has(a_pl) then
				n_turns:=remove_players_from_array(a_pl, active_players)-1
			end
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
			no_blocking_door(a_pl)
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

	move (a_dir: CHARACTER_8)
		--moves a specific player into an adiacent square following given direction
		require
			right_phase: current_status = constants.game_states.moving
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
						square_player_setting(current_player,current_player.position.x-1,current_player.position.y)
					end
				when 'd' then
					if l_current_corridor.s.is_equal ("door") or l_current_corridor.s.is_equal ("corridor") then
						square_player_setting(current_player,current_player.position.x+1,current_player.position.y)
					end
				when 'l' then
					if l_current_corridor.w.is_equal ("door") or l_current_corridor.w.is_equal ("corridor") then
						square_player_setting(current_player,current_player.position.x,current_player.position.y-1)
					end
				when 'r' then
					if l_current_corridor.e.is_equal ("door") or l_current_corridor.e.is_equal ("corridor") then
						square_player_setting(current_player,current_player.position.x,current_player.position.y+1)
					end
				end
			end
			notify_observers (create{CU_MESSAGE}.make("player_moved", <<current_player>>))
		ensure
			changed_square: current_player.position /= old current_player.position
		end

	exit_room(a_corr: CU_CORRIDOR)
		require
			valid_corr: a_corr/= void
		local
			l_coord: CU_COORDINATE
		do
			if attached {CU_ROOM} game_board.find_square (current_player.position) as l_room then
				l_coord:=game_board.find_coordinate(a_corr)
				if l_room.doors.has (l_coord) then
					current_player.move_to_coordinate (l_coord)
					notify_observers (create {CU_MESSAGE}.make("player_moved",<<current_player>>))
				end
			else
				--Error!
			end
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
				if not current_player.last_sugg_room.is_equal (l_room) then
					game_board.weapon_find_and_move (a_weapon.weapon, current_player.position)
					notify_observers (create {CU_MESSAGE}.make("moved_weapon",<<>>))--We don't know what info observers may want, yet

					player_teleport (a_suspect.suspect, l_room.room_id)
					current_player.set_suggestion_room (l_room)

					--Generate the first player who can reject a suggestion
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
	square_player_setting(a_pl: CU_PLAYER; a_x,a_y: INTEGER)
		require
			valid_coord: a_x>0 and a_y>0
			valid_pl: a_pl /= void
		local
			l_square: CU_SQUARE
		do
			l_square:=game_board.board.item (a_x,a_y)
			if not steps.has (l_square) then
				a_pl.move_to_position (a_x,a_y)
				if attached {CU_CORRIDOR} l_square as l_corridor then
					l_corridor.player_moves_in(current_player)
				else
					if attached {CU_ROOM} l_square as l_room then
						l_room.player_enters(current_player)
					end
				end
				steps.extend (l_square)
			else
				--Error
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
				if(a_cards_deck.count=0) then
					a_cards_deck.start
				else
					l_int:=rand(a_cards_deck.count)
					a_cards_deck.go_i_th (l_int)
				end
				inspect
					a_position
				when 1 then
					if attached {CU_SUSPECT_CARD} solution.item(a_position) as l_temp_sus then
						if l_temp_sus.suspect/=a_list.item then
							a_cards_deck.put_left (create {CU_SUSPECT_CARD}.make (a_list.item))
						end
					end
				when 2 then
					if attached {CU_WEAPON_CARD} solution.item(a_position) as l_temp_wea then
						if l_temp_wea.weapon/=a_list.item then
							a_cards_deck.put_left (create {CU_WEAPON_CARD}.make (a_list.item))
						end
					end
				when 3 then
					if attached {CU_ROOM_CARD} solution.item(a_position) as l_temp_roo then
						if l_temp_roo.room/=a_list.item then
							a_cards_deck.put_left (create {CU_ROOM_CARD}.make (a_list.item))
						end
					end
				end
				a_list.forth
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

	no_blocking_door(a_pl: CU_PLAYER)
		require
			valid_player: a_pl /= void
		do
			if attached {CU_CORRIDOR} game_board.find_square (a_pl.position) as l_pos then
				if l_pos.n="door" then
					square_player_setting (a_pl, a_pl.position.x-1,a_pl.position.y)
				else if	 l_pos.s="door" then
					square_player_setting (a_pl, a_pl.position.x+1,a_pl.position.y)
				else if l_pos.e="door" then
					square_player_setting (a_pl, a_pl.position.x,a_pl.position.y+1)
				else if l_pos.w="door" then
					square_player_setting (a_pl, a_pl.position.x,a_pl.position.y-1)
				end
				end
				end
				end
			end
		end

	remove_players_from_array(a_pl: CU_PLAYER; a_players: ARRAY[CU_PLAYER]): INTEGER
		local
			i: INTEGER
			l_j: INTEGER
			l_stop: BOOLEAN
		do
			from
				i:=1
				l_stop:=false
			until
				i>a_players.count or l_stop
			loop
				if a_pl=a_players.item (i) then
					result:=i;
					l_stop:=true
					from
						l_j:=i
					until
						l_j>a_players.count-1
					loop
						a_players.enter(a_players.item (l_j+1),l_j)
						l_j:=l_j+1
					end
				end
				i:=i+1
			end
			a_players.put (void, a_players.count)
			a_players.remove_tail (1)
		end

invariant
	valid_players_num: (current_status>=constants.game_states.starting and active_players.count >=2 and active_players.count<=6) or current_status<constants.game_states.starting
end
