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
			make_players: players /= void
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
			--three_cards_in_the_solution: Result.count=3
			indexes_from_one_to_three: Result.index_set.lower=1 and Result.index_set.upper=3
		end

	cards_deck: LINKED_LIST [CU_CARD]
			-- represents the deck containing all the cards at the beginning of a game
		attribute
		ensure
			result_not_void: Result /= void
			right_number_of_cards_or_empty: Result.count=21 or Result.count=0
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

	n_turns: INTEGER
		--represents the number of turns happened in the game

	players: ARRAY[CU_PLAYER]
		--get the list of players
		attribute
		ensure
			result_not_void: Result /= void
			correct_number_of_players: Result.count>=3 and Result.count<=6
		end

feature {CU_LOGIC} -- Status

	get_available_pawns: LINKED_LIST[INTEGER]
		-- get the list of available pawns
		do
			ensure
				valid_result: result /= void
		end

feature {CU_LOGIC,EQA_TEST_SET}--Procedures

	next_turn
		--goes to the next player
		require
			right_phase: current_status = constants.game_states.suggesting
		do
		ensure
			new_current_player: current_player /= old current_player
			next_one: current_player = players[n_turns\\players.count]
			next_num: n_turns = old n_turns + 1
		end


	new_player (a_name: STRING; a_connection: SOCKET; a_pawn: INTEGER)
		--adds a player to the game
		require
			right_phase: current_status = constants.game_states.initializing
			name_not_void: a_name /= void
			name_not_empty: a_name/=""
			connection_not_void: a_connection/=void
			valid_pawn: a_pawn>=0 and a_pawn<=5
			players_not_full: players.count<6
		do

		ensure
			one_more_player: players.count=old players.count+1

		end

	generate_solution
		-- generates the solution of the case at the beginning
		require
			right_phase: current_status = constants.game_states.starting
			solution_void: solution=void
		do

		ensure
			correct_solution: solution /=void and solution.count=3
			three_less_cards: cards_deck.count=old cards_deck.count-3

		end

	distribute_cards
		-- distributes cards among players
		require
			right_phase: current_status = constants.game_states.starting
			deck_full: cards_deck /= void and cards_deck.count=18
		do
		ensure
			deck_empty: cards_deck /= void and cards_deck.count=0
		end

	board_setup
		-- sets the gameboard
		require
			right_phase: current_status = constants.game_states.starting
			board_void: game_board = void
		do
		ensure
			board_not_empty: game_board /= void
		end

	sort_player_order
		-- sorts the order in which players turns will take place
		require
			right_phase: current_status = constants.game_states.starting
		do

		end

	remove_player (a_pl: CU_PLAYER)
		--removes specific player from the game
		require
			player_exists: players.has(a_pl)
		do
		ensure
			player_doesnt_exist: not players.has(a_pl)
		end

	throw_dices(): INTEGER
		--current_player throws the dices
		require
			right_phase: current_status = constants.game_states.dices
		do
		ensure
			set_player_moves: result=current_player.available_moves
			right_phase: current_status = constants.game_states.moving
		end

	move (a_pl: CU_PLAYER; a_dir: CHARACTER_8)
		--moves a specific player into an adiacent square following given direction
		require
			right_phase: current_status = constants.game_states.moving
			player_not_void: a_pl /= void
			player_exists: players.has(a_pl)
			valid_dir: a_dir= 'u' or a_dir= 'd' or a_dir= 'r' or a_dir= 'l'
		do
		ensure
			player_exists: players.has(a_pl)
			changed_square: a_pl.position /= old a_pl.position
		end

	player_teleport(a_suspect: INTEGER; a_room: INTEGER)
		--Moves a player directly in a room, effect of a suggestion
		require
			right_phase: current_status = constants.game_states.suggesting
			valid_pawn: a_suspect>=0 and a_suspect<=5
			valid_room: a_room>=0 and a_room<=5
		do
		end

	next_game_state(a_end:BOOLEAN)
		--puts the game to the next state, based on the CU_ENUM_GAME_STATES class
		require
			not_finished_game: current_status = constants.game_states.ending
			end_only_if_suggesting: a_end=true implies (current_status = constants.game_states.suggesting)
		do
		ensure
			start_goes_on: (old current_status /= constants.game_states.suggesting) and (current_status>old current_status)
			requested_end: a_end=true and current_status=constants.game_states.ending
		end

invariant
	valid_players_num: players.count >=3
end
