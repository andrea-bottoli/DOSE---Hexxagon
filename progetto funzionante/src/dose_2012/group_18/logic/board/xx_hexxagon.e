note
	description: "Represents/Simulates the overall control of the game."
	author: "Nikolaos Sourligas, Theocharis Vavouris"
	date: "$Date$"
	revision: "$Revision$"

class
	XX_HEXXAGON  -- simulates the game and it controls everything about the game

inherit
	XX_ILOGIC

create make_hexxagon

feature {NONE}

	board: XX_BOARD  -- board of the game
	player1: XX_PLAYER  -- Server will be the player1
	player2: XX_PLAYER  -- Client will be the player2
	now_playing: INTEGER -- who's turn is now
	chat_enabled: BOOLEAN  --true if chat enabled
	timer: XX_TIMER  -- timer about a move
	has_winner: BOOLEAN  -- true if there is a winner
	single_player: BOOLEAN  -- true if it is in single player mode otherwise multi_player_mode
	server_mode: BOOLEAN  -- true if it is in server mode otherwise client mode
	end_game: BOOLEAN  -- true if the game ended


feature {ANY}

	make_hexxagon()  -- Cunstructor of object hexxagon
	do

	ensure
		valid_board: board /= Void
	end


feature {XX_LAUNCHER}

	new_game()	-- Create new game
	do

	ensure
		valid_player1: player1 /= Void
		valid_player2: player2 /= Void
		valid_timer: timer /= Void
	end


feature {XX_HEXXAGON}

	set_has_winner(value: BOOLEAN)	-- Set if true if a winner exists
	require
		check_value: value = True or value = False
	do

	ensure
		valid_winner: has_winner = value
	end


feature {NONE}  -- Methods visible only from XX_HEXXAGON class at initialization stage

	initialize_board()	-- Initialize the board of the game
	do

	ensure
		valid_board: board /= Void
	end

	initialize_players()	-- Initialize the players of the game
	do

	ensure
		valid_players: (player1 /= Void) and (player2 /= Void)
	end

	initialize_sigle_player_mode()	-- Initialize single player mode
	do

	ensure
		valid_single_player_mode: single_player = True
	end

	initialize_multi_player_mode()	-- Initialize multi player mode
	do

	ensure
		valid_multi_player_mode: single_player = False
	end

	initialize_server_mode()	-- Initialize server mode
	do

	ensure
		valid_server_mode: server_mode = True
	end

	initialize_client_mode()	-- Initialize client mode
	do

	ensure
		valid_client_mode: server_mode = False
	end


	establish_net_connection()	-- Establish a stable net connection
	do

	end




feature {ANY}		-- Implementation of interface methods

	associated_move(move: XX_POSSIBLE_MOVES)  -- Associated move of the player himself/herself
	require else
		check_move: move /= Void
	do

	ensure then
		valid_move: (board /= Void) and (player1 /= Void) and (player2 /= Void)
	end

	other_move(move: XX_POSSIBLE_MOVES)  -- Move of the other player of the game
	require else
		check_move: move /= Void
	do

	ensure then
		valid_move: (board /= Void) and (player1 /= Void) and (player2 /= Void)
	end

	receive_gui_board(a_board: XX_GUI_BOARD)  -- Receive the gui board that needed from GUI in order to draw
	require else
		check_board: a_board /= Void
	do

	ensure then
		valid_board: board.get_gui_board() /= Void
	end

	receive_game_status(a_player1,a_player2 : XX_PLAYER; is_active: BOOLEAN)   -- Receive the current game status
	require else
		check_args: (a_player1 /= Void and a_player2 /= Void)  and (is_active = True or is_active = False)
	do

	ensure then
		valid_result: (player1 /= Void and player2 /= Void)
	end

	abort_game()  -- Abort the game
	do

	ensure then
		valid_abort: end_game = True
	end

	exit_game()   -- Exit the game
	do

	ensure then
		valid_exit: end_game = True
	end

	victory()   -- A player has won the game and so the victory method is needed
	do

	ensure then
		valid_victory: end_game = True and has_winner = True
	end

	defeat()  -- A player has lost and so the defeat method is needed
	do

	ensure then
		valid_defeat: (end_game = True and has_winner = True)
	end

	set_single_player(name: STRING; colour: STRING)  -- Set the appropriate single player settings
	require else
		valid_name: (name /= Void) and (name.is_equal ("") = False)
		valid_colour: (colour /= Void) and (colour.is_equal ("") = False )
	do

	ensure then
		valid_single_player: (player1.get_player_id.is_equal(name) = True) and (player1.get_colour_piece.is_equal(colour) = True)
	end

	set_multi_player(server: BOOLEAN; name: STRING; colour: STRING; IP: STRING; port: INTEGER)   -- Set the appropriate multi player settings
	require else
		check_server: (server = True or server = False)
		check_name: (name /= Void) and (name.is_equal ("") = False)
		check_colour: (colour /= Void) and (colour.is_equal ("") = False )
		check_ip: (IP /= Void) and (IP.is_equal ("") = False )
		check_port: (port >0 and port <= 65535)
	do

	ensure then
		valid_server: (server_mode = server)
		valid_player_id: (player1.get_player_id.is_equal (name) = True)
		valid_player_colour: (player1.get_colour_piece.is_equal (colour))
		valid_ip: (player1.get_ip_net.is_equal (IP) = True)
		valid_port: (player1.get_port_number = port)
	end

	receive_chat_enable(value: BOOLEAN)   -- Receive a signal to enable the chat
	require else (value = True or value = False)
	do

	ensure then
		valid_chat: chat_enabled = value
	end

	receive_game_start()  -- Receive game start signal
	do

	end

	other_player(name: STRING; IP: STRING)  -- Receive other's player information
	require else
		check_name: (name /= Void and  name.is_equal("") = False)
		check_ip: (ip /= Void and ip.is_equal ("") = False)
	do

	end


end
