note
	description: "Represents/Simulates the overall control of the game."
	author: "Nikolaos Sourligas, Theocharis Vavouris"
	date: "$Date$"
	revision: "$Revision$"

class
	XX_HEXXAGON  -- simulates the game and it controls everything about the game

inherit
	XX_ILOGIC
	EXECUTION_ENVIRONMENT

create
	make_hexxagon

feature {NONE}

	board: XX_BOARD			-- board of the game
	player1: XX_PLAYER		-- Server will be the player1
	player2: XX_PLAYER		-- Client will be the player2
	now_playing: INTEGER	-- who's turn is now
	chat_enabled: BOOLEAN	--true if chat enabled
	timer: XX_TIMER			-- timer about a move
	has_winner: BOOLEAN		-- true if there is a winner
	single_player: BOOLEAN	-- true if it is in single player mode otherwise multi_player_mode
	server_mode: BOOLEAN	-- true if it is in server mode otherwise client mode
	end_game: BOOLEAN		-- true if the game ended
	game_gui: XX_GUI		-- The game gui that logic manipulates
	game_net: XX_NET		-- The game net about multiplatyer games that logic manipulates
	game_rules: XX_RULES	-- The rules of the game
	game_ai: XX_AI_BOX	-- About the game player vs computer

--########################################################	
	state:INTEGER				--fsm state for enforce
	gui_move:XX_POSSIBLE_MOVES	--global for enforce
	fired:BOOLEAN				--for main_game


feature {ANY}


	make_hexxagon  -- Cunstructor of object hexxagon
	local
		p_move: XX_POSSIBLE_MOVES
		i: INTEGER
	do
		-- Initialize board,rules and timer
		initialize_board()
		create game_rules.make_rules
		create timer.make_timer


		-- Initial state of some attributes
		set_has_winner(False)
		chat_enabled := False
		end_game := False
		server_mode := False
		state:=0

	ensure
		valid_board: board /= Void
		state: state = 0
	end



feature {XX_LAUNCHER}  -- Gui create method visible only from XX_LAUNCHER

	create_gui(a_logic: XX_ILOGIC; main_ui_window: MAIN_WINDOW)
	do
		create game_gui.make_with_logic(a_logic,main_ui_window)
		game_gui.show
	end


feature {NONE}


feature {NONE}

	new_game()	-- Create new game
	do
		-- Initialized states

		board.get_cell(10).set_contents(1)
		board.get_cell(14).set_contents(1)
		board.get_cell(57).set_contents(1)
		board.get_cell(0).set_contents(2)
		board.get_cell(43).set_contents(2)
		board.get_cell(47).set_contents(2)
		game_rules.update_gui_board (board)

		if(single_player = True) then

			-- AI proper instructions after AI finished changes
			-- Work a lot but not correclt and calid_indexes exceptios is displayed....for now at comments

			--game_ai.set_board(board)
			--game_ai.set_game_status(player1,player2,True)

			-- Gui related instructions
			game_gui.clean_game_window
			print("player1 colour:")
			print(player1.get_colour_piece)
			print("%N")
			print("player2 colour:")
			print(player2.get_colour_piece)
			print("%N")
			game_gui.set_game_status(player1,player2,True)
			game_gui.set_board(board.get_gui_board)
--			game_gui.set_timer(timer)
			game_gui.chat_enable (False)
			game_gui.switch_panel_menu_to_game
		else
			if (server_mode = True)then

				game_gui.clean_game_window
				game_net.send_command_clean_game_window

				game_gui.set_game_status(player1,player2,True)
				game_net.send_game_status(player1,player2,True)

				game_gui.set_board(board.get_gui_board)
				game_net.send_board(board)

				game_gui.chat_enable(True)
				game_net.send_chat_enable(True)--couldn't also be true?

				game_gui.switch_panel_menu_to_game
				game_net.send_command_switch_panel_menu_to_game
			else

				print("Client new_game method...i came here and i continuee%N")
				-- Client operation while initializing game
				-- Maybe not used these instructions...because the methods are called inside receive_soc

			end
		end

		-- The game now is really ready to begin
		now_playing := 1
		player1.set_is_enabled(True)
		Current.main_game

	ensure
		valid_player1: player1 /= Void
		valid_player2: player2 /= Void
		valid_timer: timer /= Void
	end



feature {XX_HEXXAGON}
--@@@@@@@@@@@@@@@@@@@@@ W O R K I N G  @@@@@@@@@@@@@@@@@@@@@@@@@@@@@
	main_game()
	require
		has_winner = False
	do
	fired:=True

		if now_playing = 1 and fired then
			game_gui.set_game_status (player1, player2, True)
			game_gui.set_board (board.get_gui_board)
			fired:=False
			print("%NPlayer1%N")
		elseif now_playing = 2 and fired then
			print("%NTRY UPDATE%N")
			game_rules.update_gui_board (board)
			game_gui.set_board (board.get_gui_board)
			print("%NSHOULD UPDATE%N")
			print("%NPlayer2%N")
			if single_player then
				game_ai.set_board (board)
				game_ai.set_game_status (player1, player2,True)
			else
				game_net.send_game_status (player1, player2, True)
				game_net.send_board (board)
			end
			fired:=False
		end
	end
--####################### F I N I S H E D ######################
	set_has_winner(value: BOOLEAN)	-- Set if true if a winner exists
	require
		check_value: value = True or value = False
	do
		has_winner := value
	ensure
		valid_winner: has_winner = value
	end
--####################### F I N I S H E D ######################
	change_order():INTEGER		--changes the game order and returns who played last
	require
		now_playing =1 or now_playing=2

	do
		if now_playing =1 then
			now_playing:=2
			player1.set_is_enabled (False)
			player2.set_is_enabled (True)
			Result:=1
		else
			now_playing:=1
			player2.set_is_enabled (False)
			player1.set_is_enabled (True)
			Result:=2
		end
	ensure now_playing = 1 or now_playing = 2
	end


feature {NONE}  -- Methods visible only from XX_HEXXAGON class at initialization stage

--####################### F I N I S H E D ######################
	initialize_board()	-- Initialize the board of the game
	do
		create board.make_board
	ensure
		valid_board: board /= Void
	end
--####################### F I N I S H E D ######################
	enforce(move: XX_POSSIBLE_MOVES):BOOLEAN  -- It will implemented soon possibly from Haris
	require
		check_move: move /= Void
	local
		flag:BOOLEAN
		moveres:INTEGER
		captres:INTEGER
		move_type:INTEGER
		move_piece:INTEGER
		move_position:INTEGER
	do
		flag:=False
		move_type:=move.get_type
		move_piece:=move.get_piece
		move_position:=move.get_position

		if move_type = 2 then -- if move object is complete
			state:=2 --final state of fsm
			moveres:=game_rules.do_move (board, now_playing, move)--execute the move
			if moveres > 0 then --if move was clone we have to add 1 to the player who did it
				if moveres =1 then
					if now_playing =1 then
						player1.set_total_pieces (player1.get_total_pieces + 1)
					else
						player2.set_total_pieces (player2.get_total_pieces + 1)
					end
				end
				captres:=game_rules.do_capture (board, now_playing, move_position) --capture
				if now_playing =1 then --adding captured to player who did it and subtract from other
					player1.set_total_pieces (player1.get_total_pieces + captres)
					player2.set_total_pieces (player2.get_total_pieces - captres)
				else
					player2.set_total_pieces (player2.get_total_pieces + captres)
					player1.set_total_pieces (player1.get_total_pieces - captres)
				end

				flag:=True --move successful
			else
				flag:=False --move unsuccessful
			end
			game_rules.update_gui_board (board)	--update gui
			state:=0
		elseif state=0 then --if gui send something initial state
			if (board.get_cell (move_piece).get_contents = now_playing) then
				game_rules.update_gui_board (board)				--update gui with possible jumps and clones
				game_rules.update_gui_move (board, move_piece)	--update gui with possible jumps and clones
				create gui_move.make_possible_moves
				gui_move.set_piece (move_piece)--put piece in a move object
				state:=1--change state
			end
		elseif state=1 then --if gui has send a valid piece and sends something else state 1
			if (game_rules.is_legal (board, now_playing, gui_move.get_piece, move_piece)) then--something else was a correct position
				gui_move.set_position (move_piece)
				gui_move.set_type (2)
				flag:=enforce(gui_move)
			elseif (board.get_cell (move_piece).get_contents = now_playing) then--something else was a new players piece
				state:=0
				flag:=enforce(move)
			end
		end
		Result:=flag
	end

feature {ANY}		-- Implementation of interface methods

--####################### F I N I S H E D ######################
	associated_move(move: XX_POSSIBLE_MOVES)  -- Associated move of the player himself/herself
	require else
		check_move: move /= Void
	local
		flag: BOOLEAN
		last:INTEGER
	do
		if (Server_mode or single_player )then	--server mode so this is called for the player that sits on server pc
			flag:=False
			if(single_player and player1.get_priority = now_playing and player1.get_is_enabled = True) then
				game_ai.set_board (board)
				game_ai.set_game_status (player1, player2,True)

			else
				flag:=enforce(move)	--enforces his move
				if flag then		--if move was successfull change order
					last:=change_order
					fired:=True
					if not(game_rules.more_moves (board, now_playing)) then
						game_rules.capture_all (board, last)
					end
				end
			end
			game_gui.set_game_status (player1,player2,(not flag))	--UPDATE GUI
			game_gui.set_board (board.get_gui_board)				--UPDATE GUI
		else
			game_net.send_possible_move (move)								--client mode send move to server
		end
		--Current.main_game
	ensure then
		valid_move: (board /= Void) and (player1 /= Void) and (player2 /= Void)
	end

--####################### F I N I S H E D ######################
	other_move(move: XX_POSSIBLE_MOVES)  -- Move of the other player of the game
	require else
		check_move: move /= Void and Server_mode
	local
		flag: BOOLEAN
		last:INTEGER
	do
		flag:=False
		flag:=enforce(move)	--enforces his move
		if flag then		--if move was successfull change order
			last:=change_order
			fired:=True
			if not(game_rules.more_moves (board, now_playing)) then
				game_rules.capture_all (board, last)
			end
		end
		if(single_player) then
			game_ai.set_board (board)								--update ai if single player
			game_ai.set_game_status (player1, player2,(not flag))	--update ai if single player
		else
			game_net.send_game_status (player1, player2,(not flag))	--update client if multiplayer
			game_net.send_board (board)								--update client if multiplayer
		end
		--Current.main_game
	ensure then
		valid_move: (board /= Void) and (player1 /= Void) and (player2 /= Void)
	end
--####################### F I N I S H E D ######################
	receive_board(a_board: XX_BOARD)  -- Receive the board that needed from GUI in order to draw
	require else
		check_board: a_board /= Void and Server_mode=False
	do
		board := a_board
		game_gui.set_board (board.get_gui_board)
	ensure then
		valid_board: board.get_gui_board() /= Void
	end

--####################### F I N I S H E D ######################
	receive_game_status(a_player1,a_player2 : XX_PLAYER; is_active: BOOLEAN)   -- Receive the current game status
	require else
		check_args: (a_player1 /= Void and a_player2 /= Void)  and (is_active = True or is_active = False) and Server_mode=False
	do
		player1:=a_player1
		player2:=a_player2
		game_gui.set_game_status (a_player1, a_player2 , is_active)

	ensure then
		valid_result: (player1 /= Void and player2 /= Void)
	end

--****************N O T   S U R E*****************************
	abort_game()  -- Abort the game
	do
		set_has_winner(True)
		end_game := True

		if(single_player = True) then
			-- maybe needed --> capture all cells of the opponent, refresh gui_board ,then draw them at gui, display message and close game
			game_gui.clean_main_window
			game_gui.switch_panel_game_to_menu
		else

			if((now_playing = player1.get_priority) and (player1.get_is_enabled = True)) then

				player1.set_total_pieces(0)
				player2.set_total_pieces(58)

				-- maybe needed --> capture all cells of the opponent, refresh gui_board ,then draw them at gui, display message and close game
				game_net.send_victory
				game_net.close_connection
				game_gui.clean_main_window
				game_gui.switch_panel_game_to_menu
			elseif ((now_playing = player2.get_priority) and (player2.get_is_enabled = True)) then

				player2.set_total_pieces(0)
				player1.set_total_pieces(58)

				-- maybe needed --> capture all cells of the opponent, refresh gui_board ,then draw them at gui, display message and close game
				game_net.send_victory
				game_net.close_connection
				game_gui.clean_main_window
				game_gui.switch_panel_game_to_menu
			end
		end
	ensure then
		valid_abort: end_game = True and has_winner = True
	end

--****************N O T   S U R E*****************************
	exit_game()   -- Exit the game
	do
		end_game :=  True
		game_net.send_victory
		game_net.close_connection
		game_gui.clean_main_window
		game_gui.switch_panel_game_to_menu
	ensure then
		valid_exit: end_game = True
	end

--****************N O T   S U R E*****************************
	victory()   -- A player has won the game and so the victory method is needed
	do
		game_gui.victory
		sleep(1000000000)
		game_gui.clean_game_window
		game_gui.switch_panel_game_to_menu


	ensure then
		valid_victory: end_game = True and has_winner = True
	end

--****************N O T   S U R E*****************************
	defeat()  -- A player has lost and so the defeat method is needed
	do
		game_gui.defeat
		sleep(1000000000)
		game_gui.clean_game_window
		game_gui.switch_panel_game_to_menu

	ensure then
		valid_defeat: (end_game = True and has_winner = True)
	end

	set_single_player(name: STRING; colour: STRING)  -- Set the appropriate single player settings
	require else
		valid_name: (name /= Void) and (name.is_equal ("") = False)
		valid_colour: (colour /= Void) and (colour.is_equal ("") = False )
	do

	-- AI first player scenario
		single_player := True
		create game_ai.make (Current)
		create player2.make_player(name,colour)
		player2.set_priority(2)
		if(player2.get_colour_piece.is_equal("Pearls") = True) then    -- maybe useless later...on AI the first player has rubies
			create player1.make_player("AI player","Rubies")
		else
			create player1.make_player("AI player","Pearls")
		end
		player1.set_priority(1)

		-- AI second player scenario
--		single_player := True
--		create game_ai.make (Current)
--		create player1.make_player(name,colour)
--		player1.set_priority(1)
--		if(player1.get_colour_piece.is_equal("Pearls") = True) then    -- maybe useless later...on AI the first player has rubies
--			create player2.make_player("AI player","Rubies")
--		else
--			create player2.make_player("AI player","Pearls")
--		end
--		player2.set_priority(2)

		-- Time to launch the game and see it via GUI with new_game method
		-- From GUI call the receive_game_start() method

	ensure then
	--	valid_single_player: (player1.get_player_id.is_equal(name) = True) and (player1.get_colour_piece.is_equal(colour) = True)
	end



	set_multi_player(server: BOOLEAN; name: STRING; colour: STRING; IP: STRING; port: INTEGER)   -- Set the appropriate multi player settings at server
	do

	end


	other_player(name: STRING; IP: STRING)  -- Receive other's player information
	do

	end


	set_server_setup(name: STRING; ip: STRING; port: INTEGER)   -- Set the appropriate multi player settings at server
	require else
		check_name: (name /= Void) and (name.is_equal ("") = False)
		check_port: (port >0 and port <= 65535)
	local
		a_logic: XX_ILOGIC
	do
		single_player := False
		server_mode := True
		a_logic := Current
		create game_net.make_logic(a_logic)
		create player1.make_player(name,"Rubies")
		player1.set_priority(1)
		player1.set_ip_net(ip)
		player1.set_port_number(port)

		-- Launch Server Net to "hear" at a specific port
		game_gui.set_net_to_chat (game_net)
		game_net.init_listener(port)
		print("Listener hear something an the server is ok...move on%N")

		-- Wait also to create player2 by other_move method
		-- Then call receive_game_start() and then new_game() method
		-- The connection will be established and everything is ok

	ensure then
		valid_server: (server_mode = True)
		valid_player_id: (player1.get_player_id.is_equal (name) = True)
		valid_ip: (player1.check_valid_ipv4(player1.get_ip_net) = True)
		valid_port: (player1.get_port_number = port)
		valid_single_player: (single_player = False)
	end


	set_client_setup(name: STRING; IP: STRING; port: INTEGER)   -- Set the appropriate multi player settings at client
	require else
		check_name: (name /= Void and  name.is_equal("") = False)
		check_ip: (IP /= Void and IP.is_equal ("") = False)
		check_port: (port >0 and port <= 65535)
	local
		a_logic: XX_ILOGIC
	do
		single_player := False
		server_mode := False
		a_logic := Current
		create game_net.make_logic(a_logic)
		create player2.make_player(name,"Pearls")
		player2.set_priority(2)
		-- player1.set_ip_net(IP) 	for now not implemeted taking the internal IP but it will be fixed soon

		player2.set_ip_net(IP)  -- put your ip manually for now in order to test
		player2.set_port_number(port)

		-- Init connection with server
		game_gui.set_net_to_chat (game_net)
		game_net.init_connection(name,IP,port)
		--game_net.init_connection(IP,port)

		-- Wait also to create player2 by other_move method
		-- Then call receive_game_start() and then new_game() method
		-- The connection will be established and everything is ok
	end


	client_connected(name: STRING; ip: STRING)  -- server receives message about the client that connected
	require else
		check_name: (name /= Void and  name.is_equal("") = False)
		check_ip: (ip /= Void and ip.is_equal ("") = False)
	do
		create player2.make_player(name,"Pearls")
		player2.set_ip_net (ip)
		player2.set_port_number(player1.get_port_number)
		player2.set_priority(2)


		-- Data came to server from client
		print("Client Player:")
		print(player2.get_player_id)
		print("%N")
		print("Ip of Client Player:")
		print(player2.get_ip_net)
		print("%N")

		new_game
	end


	receive_chat_enable(value: BOOLEAN)   -- Receive a signal to enable the chat
	require else (value = True or value = False)
	do
		chat_enabled := value
		if(single_player = True) then
			game_gui.chat_enable(value)
		else
			if(server_mode = True) then
				game_gui.chat_enable(value)
				game_net.send_chat_enable(value)
			else
				game_gui.chat_enable(value)
--				game_net.send_chat_enable(value)
			end
		end
	ensure then
		valid_chat: chat_enabled = value
	end


	receive_game_start()  -- Receive game start signal
	do
		new_game()
	end


	receive_command_clean_game_window()
	do
		game_gui.clean_game_window
	end


	receive_command_switch_panel_game_to_menu()
	do
		game_gui.switch_panel_game_to_menu
	end


	receive_command_switch_panel_menu_to_game()
	do
		game_gui.switch_panel_menu_to_game
	end

--&&&&&&&&&&&&&&&& G A R B A G E &&&&&&&&&&&&&&&&&&&&
	receive_cell(a_cell: XX_CELL)
	do
		game_gui.set_board(board.get_gui_board)
		game_gui.set_game_status(player1,player2,True)
	end


	receive_timer(a_timer: XX_TIMER)
	do
		timer := a_timer
	end


	receive_draw_status()
	do
		game_gui.draw_status
	end

--####################### F I N I S H E D ######################
	receive_victory()  -- Receive victory from net...the other player surrenders
	do
		Current.victory

	end

--####################### F I N I S H E D ######################
	receive_defeat()
	do
		Current.defeat

	end

--####################### F I N I S H E D ######################
	receive_draw()
	do
		Current.draw
	end

	draw()

	do

	end

end
