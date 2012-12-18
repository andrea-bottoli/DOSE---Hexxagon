note
	description: "Interface of logic component"
	author: "Stefano Di Palma"
	date: "08/12/2012"
	revision: "1.0"

class
	B8_LOGIC

create
	make

feature {NONE} -- Initialization

	make
			-- Initialization for `Current'.
		do
			game_is_started:=False
			create board.make
		ensure
			logic_initialization: game_is_started=False
		end

feature {NONE} -- Attributes

	current_turn:INTEGER
			-- contains the active player id

	current_color:INTEGER
			-- contains the active color id

	my_id:INTEGER
			-- the player id of this logic component

	players:ARRAYED_LIST[B8_PLAYER]
			-- the list of players

	board:B8_BOARD
			-- the board of the game

	game_mode:B8_MODE
			-- the object responsable of the game mode

	move_done:BOOLEAN
			-- says if the move has been done in the current turn

feature -- State

	get_turn:INTEGER
			-- returns the current turn
		do
			Result:=current_turn
		ensure
			correct_result: Result=current_turn
		end

	get_color:INTEGER
			-- returns the current color
		do
			Result:=current_color
		ensure
			correct_result: Result=current_color
		end

	get_players:ARRAYED_LIST[B8_PLAYER]
			-- returns the players
		do
			 Result:=players
		ensure
			correct_result: Result=players
		end

	get_board:B8_BOARD
			-- returns the game board
		do
			Result:=board
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
			game_is_started:=True
			current_color:=0
			current_turn:=0
			move_done:=False
		ensure
			game_is_started: game_is_started=True
		end

	abort_game
			-- the current game is aborted
		require
			game_is_started: game_is_started=True
		do
			game_is_started:=False
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
			id_is_valid: 0<=id and id<=3 --and id=current_turn
			--check_position: 0<=x and x<board.get_width and 0<=y and y<board.get_height
			--check_game_tile_belonging: players.item(id).has_a_game_tile(game_tile)
		do
			if(game_tile/=Void and 0<=x and x<board.get_width and 0<=y and y<board.get_height)then
				if(id=current_turn and game_tile.get_color=current_color and game_mode.the_player_has_this_color (id, current_color)) then
					if(players[current_color+1].has_a_game_tile (game_tile)) then
						game_tile.place (x, y,1)
						if(board.can_be_placed (game_tile)) then
							players[current_color+1].remove_tile(game_tile)
							board.add_game_tile (game_tile)
							players[current_color+1].set_last_placed (game_tile)
							move_done:=True
							Result:=True
						else
							game_tile.reset_position(1)
							Result:=False
						end
					else
						if(not board.get_placed_tiles.has (game_tile))then
							game_tile.reset_position(1)
						end
						Result:=False
					end
				else
					if(not board.get_placed_tiles.has (game_tile))then
						game_tile.reset_position(1)
					end
					Result:=False
				end
			else
				Result:=False
			end
		ensure
			player_has_a_tile_less: Result implies (old players[current_color+1].get_tiles.count=players[current_color+1].get_tiles.count+1)
			board_has_a_tile_more: Result implies (old board.get_placed_tiles.count+1=board.get_placed_tiles.count)
		end

	set_game_mode(mode:INTEGER)
			-- sets the game mode
			-- mode: specifies which mode is used for the next game
		require
			mode_is_present: mode={B8_MODE}.four_player or mode={B8_MODE}.two_player
			game_is_not_started: game_is_started=False
		do
			game_mode:= create {B8_MULTI_MODE}.make(Current,mode)
		ensure
			game_mode_is_setted: game_mode /= Void
		end

	get_game_mode:B8_MODE
			-- returns the game mode
		do
			Result:=game_mode
		ensure
			correct_result: Result=game_mode
		end

	get_game_tile(a_color,a_type:INTEGER):B8_GAME_TILE
			-- returns the game mode
		require
			check_type: 0<=a_type and a_type<=20
			check_color: 0<=a_color and a_color<=3
		do
			Result:=players[a_color+1].get_tile(a_type)
		end

	set_player_id(id: like my_id)
			-- sets the player id of the specific logic unit
			-- id: the player id
		require
			game_is_not_started: game_is_started=False
		do
			my_id:=id
		end

	get_player_id:INTEGER
			-- returns the player id
		do
			Result:=my_id
		ensure
			correct_result: Result=my_id
		end

	undo_last_move()
			-- undo the last move
		require
			game_is_started: game_is_started=True
		local
			tile:B8_GAME_TILE
		do
			move_done:=False
			tile:=players[current_color+1].get_last_placed
			tile.reset_position (1)
			board.remove_game_tile (tile)
			players[current_color+1].add_tile (tile)
			players[current_color+1].set_last_placed (Void)
		end

	confirm_last_move():STRING
			-- confirm the last move
			-- return "player_id x y rotation color tile_type" if the player has done a move before
			-- return Void if the player has not done a move before
		require
			game_is_started: game_is_started=True
		local
			last_placed:B8_GAME_TILE
		do
			Result:=Void
			if(move_done)then
				last_placed:=players[current_color+1].get_last_placed
				Result:=current_turn.out+" "+last_placed.get_monomini[1].get_x.out+" "+last_placed.get_monomini[1].get_y.out+" "+
					last_placed.get_rotation.out+" "+last_placed.get_color.out+" "+last_placed.get_type.out
				next_turn
			end
		end

	next_turn()
			-- abort current turn and skip to the next turn
		require
			game_is_started: game_is_started=True
		do
			move_done:=False
			game_mode.next_turn
		end

	game_is_started:BOOLEAN
			-- says if the game is started or not

feature -- Game mode

	set_turn(turn: like current_turn)
			-- sets the current turn
			-- turn: the setted turn
		do
			current_turn:=turn
		ensure
			turn_set: current_turn = turn
		end

	set_color(color: like current_color)
			-- sets the current color
			-- color: the setted color
		do
			current_color:=color
		ensure
			color_set: current_color = color
		end

	set_players(a_players: like players)
			-- sets the players
		do
			players:=a_players
		ensure
			players_set: players=a_players
		end
	get_scores:ARRAYED_LIST[INTEGER]
	require
		game_is_over: game_mode.is_game_over
	local
		i:INTEGER
	do
		create Result.make (0)
		from i:=1
		until i>game_mode.get_num_players
		loop
			Result.force(game_mode.get_score(i))
			i:=i+1
		end
	end

invariant
	check_turn: 0<=current_turn and current_turn<=3
	check_color: 0<=current_color and current_color<=3
	check_my_id: 0<=my_id and my_id<=3
end
