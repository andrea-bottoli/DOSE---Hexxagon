note
	description: "Interface of logic component"
	author: "Stefano Di Palma"
	date: "8/11/2012"
	revision: "0.4"

class
	B8_LOGIC

create
	make

feature {NONE} -- Initialization

	make
			-- Initialization for `Current'.
		do

		ensure
			my_id_initalization: my_id=-1
		end

feature -- Attributes

	current_turn:INTEGER
			-- contains the active player id

	current_color:INTEGER
			-- contains the active color id

	my_id:INTEGER
			-- the player id of this logic component

	players:ARRAY[B8_PLAYER]
			-- the list of players

	board:B8_BOARD
			-- the board of the game

	game_mode:B8_MODE
			-- the object responsable of the game mode

feature -- State

	get_turn:INTEGER
			-- returns the current turn
		do

		ensure
			correct_result: Result=current_turn
		end

	get_color:INTEGER
			-- returns the current color
		do

		ensure
			correct_result: Result=current_color
		end

	get_players:ARRAY[B8_PLAYER]
			-- returns the players
		do

		ensure
			correct_result: Result=players
		end

	get_board:B8_BOARD
			-- returns the game board
		do

		ensure
			correct_result: Result=board
		end

feature -- Access

	start_game
			-- sets the initial game state and start a new game
		require
			game_is_not_still_started: game_is_started=False
			player_id_is_setted: my_id /= -1
			game_mode_is_setted: game_mode /= Void
		do

		ensure
			game_is_started: game_is_started=True
		end

	abort_game
			-- the current game is aborted
		require
			game_is_started: game_is_started=True
		do

		ensure
			game_is_aborted: game_is_started=False
		end

	make_a_move(id:INTEGER; x,y:INTEGER; game_tile:B8_GAME_TILE):BOOLEAN
			-- makes a move of the player identified by the player id
			-- id: player id
			-- game_tile: the game tile which will be moved
			-- x,y: the position at which the game tile will be moved
			-- return: true: if the move has been performed
			--         false: if the move does not respect the rules
		require
			game_is_started: game_is_started=True
			id_is_valid: 0<=id and id<=3 and id=current_turn
			check_position: 0<=x and x<board.get_width and 0<=y and y<board.get_height
			check_game_tile_belonging: players.item(id).has_a_game_tile(game_tile)
		do

		end

	set_game_mode(mode:INTEGER)
			-- sets the game mode
			-- mode: specifies which mode is used for the next game
		require
			mode_is_present: mode=game_mode.four_player or mode=game_mode.two_player
		do

		ensure
			game_mode_is_setted: game_mode /= Void
		end

	set_player_id(id: like my_id)
			-- sets the player id of the specific logic unit
			-- id: the player id
		do

		end

	undo_last_move(id:INTEGER)
			-- undo the last move
		require
			id_is_valid: 0<=id and id<=3 and id=current_turn
		do

		end

	confirm_last_move(id:INTEGER)
			-- confirm the last move
		require
			id_is_valid: 0<=id and id<=3 and id=current_turn
		do

		end

	next_turn
			-- abort current turn and skip to the next turn
		do

		end

	game_is_started:BOOLEAN
			-- says if the game is started or not

feature -- Game mode

	set_turn(turn: like current_turn)
			-- sets the current turn
			-- turn: the setted turn
		do

		ensure
			turn_set: current_turn = turn
		end

	set_color(color: like current_color)
			-- sets the current color
			-- color: the setted color
		do

		ensure
			color_set: current_color = color
		end

invariant
	check_turn: 0<=current_turn and current_turn<=3
	check_color: 0<=current_color and current_color<=3
	check_my_id: 0<=my_id and my_id<=3
end
