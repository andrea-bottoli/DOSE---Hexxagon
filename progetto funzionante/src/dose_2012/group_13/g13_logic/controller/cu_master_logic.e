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
	incoming_clients: ARRAY[STRING]

feature {CU_INIT_CONTROLLER} --Constructor
	make
		do
		ensure
			clients_setup: incoming_clients /= void
		end

feature -- Procedures
	new_client(a_name: STRING)
		require
			name_not_void: a_name /= void
			name_not_empty: a_name /= ""
		do
		ensure
			new_client_in_list: incoming_clients.count = old incoming_clients.count +1
		end

	deny_client(a_name: STRING)
		require
			name_not_void: a_name /= void
			name_not_empty: a_name /= ""
			client_in_queue: incoming_clients.has(a_name)
		do
		ensure
			client_removed: not incoming_clients.has(a_name)
			accepted_not_change: game.players.count = old game.players.count
		end

	accept_player(a_name: STRING; a_pawn: INTEGER; a_connection: SOCKET)
		require
			name_not_void: a_name/=void
			name_not_empty: a_name/=""
			valid_pawn: a_pawn>=0 and a_pawn<=5
			conn_not_void: a_connection /= void
			client_in_queue: incoming_clients.has(a_name)
		do
		ensure
			client_moved: not incoming_clients.has(a_name)
			one_more_player: game.players.count = old game.players.count +1
		end

	start_game()
		require
			game_created: game /= void
		do
		ensure
			game_started: game.current_player= game.players[0]
		end

feature --inherited methods

	move(a_direction: STRING)
		-- moves the player's pawn
		do
		end

	suggestion(a_accuse: BOOLEAN; a_room: INTEGER; a_suspect: INTEGER; a_weapon: INTEGER)
		-- gives the chance to make a suggestion or an accusation
		do
		end
	use_secret_passage()
		-- gives the chanche of using a secret passage in a room
		do
		end
	leave_room(a_corridor: CU_CORRIDOR)
		-- allows to exit from the door using the chosen door
		do
		end

feature {CU_OBSERVABLE}
	update(a_subject: CU_OBSERVABLE; a_mess: CU_MESSAGE)
		--this is for receiving updates from Network (and gui?)
		do

		end
end
