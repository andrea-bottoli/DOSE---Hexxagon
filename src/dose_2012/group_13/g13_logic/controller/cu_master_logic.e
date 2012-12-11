note
	description: "This class implements the behaviour of the game in Master Mode"
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	CU_MASTER_LOGIC

inherit
	CU_LOGIC

create
	make

feature -- Access
	incoming_clients: LINKED_LIST[STRING]
	net: CU_SERVER

feature {CU_INIT_CONTROLLER} --Constructor
	make--(a_gui: CU_OBSERVER)
		do
			create game.make
			--if attached a_gui then
			--	game.add_observer (a_gui)
			--end
			create net.make
			--game.add_observer (net) We need the net components to be observers, or they will ever get any update from the game!
			create incoming_clients.make
		ensure
			clients_setup: incoming_clients /= void
			ok_network: net /= void
		end

feature -- Procedures
	new_client(a_name: STRING)
		require
			name_not_void: a_name /= void
			name_not_empty: a_name /= ""
		do
			incoming_clients.extend(a_name)
		ensure
			new_client_in_list: incoming_clients.count = old incoming_clients.count +1
		end

	deny_client(a_name: STRING)
		require
			name_not_void: a_name /= void
			name_not_empty: a_name /= ""
			client_in_queue: incoming_clients.has(a_name)
		do
			if incoming_clients.has (a_name)then
				incoming_clients.start
				incoming_clients.search(a_name)
				incoming_clients.remove
			end
		ensure
			client_removed: not incoming_clients.has(a_name)
			accepted_not_change: game.active_players.count = old game.active_players.count
		end

	accept_player(a_name: STRING; a_pawn: INTEGER)
		require
			name_not_void: a_name/=void
			name_not_empty: a_name/=""
			valid_pawn: a_pawn>=0 and a_pawn<=5
			client_in_queue: incoming_clients.has(a_name)
		do
			if incoming_clients.has (a_name) then
				game.new_player (a_name, a_pawn)
				incoming_clients.start
				incoming_clients.search(a_name)
				incoming_clients.remove
			end
		ensure
			client_moved: not incoming_clients.has(a_name)
			one_more_player: game.active_players.count = old game.active_players.count +1
		end

	start_game()
		require
			game_created: game /= void
		do
			game.next_game_state (false)
			game.generate_solution
			game.sort_player_order
			game.board_setup
			game.distribute_cards
			game.next_game_state (false)
		ensure
			game_started: game.current_player= game.active_players[0]
		end

feature --inherited methods
	rcv_message(a_msg: CU_MESSAGE)
		do
		end

	move(a_direction: STRING)
		-- moves the player's pawn
		require else
			valid_dir: a_direction/=void
		do
			--We need to know the format of the string coming from other components
		end

	suggestion(a_accuse: BOOLEAN; a_room: CU_ROOM_CARD; a_suspect: CU_SUSPECT_CARD; a_weapon: CU_WEAPON_CARD)
		-- gives the chance to make a suggestion or an accusation
		do
			if a_accuse then
				game.accuse(a_room,a_suspect, a_weapon)
			else
				game.suggest(a_suspect,a_weapon)
			end

		end

	use_secret_passage()
		-- gives the chance of using a secret passage in a room
		do
			if attached{CU_ROOM} game.current_player.position as l_room then
				game.player_teleport (game.current_player.pawn, l_room.secret_passage.room_id)
			end
			game.next_game_state (false)
		end

	leave_room(a_corridor: CU_CORRIDOR)
		-- allows to exit from the door using the chosen door
		local
			l_i: INTEGER
			l_stop: BOOLEAN
		do
			if attached {CU_ROOM} game.current_player.position as l_room then
				from
					l_i:=1
					l_stop:= false
				until
					l_i>l_room.doors.count or l_stop=true
				loop
					if l_room.doors.item (l_i)=a_corridor then
						--game.current_player.move_to_position (a_x, a_y)
					end
				end
			else
				--Error!
			end
		end
end
