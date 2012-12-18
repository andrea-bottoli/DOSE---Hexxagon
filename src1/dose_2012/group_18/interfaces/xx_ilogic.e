note
	description: "Represnts/Simulates the LOGIC interface."
	author: "Nikolaos SOurligas, Theocharis Vavouris"
	date: "$Date$"
	revision: "$Revision$"

deferred class
	XX_ILOGIC

feature

	associated_move(move: XX_POSSIBLE_MOVES) deferred end   -- gets the move of the player who is sitting on this pc (gui) server/client

	other_move(move: XX_POSSIBLE_MOVES) deferred end  -- Move of the other player who is on the other pc or the ai (ai,net) server only

	receive_board(a_board: XX_BOARD) deferred end  -- Receive the  board over net that needed from GUI in order to draw client mode only

	receive_game_status(a_player1,a_player2 : XX_PLAYER; is_active: BOOLEAN) deferred end   -- Receive the current game status from net client mode only

	receive_victory() deferred end	--Receive victory signal over net client mode only

	receive_defeat() deferred end	--Receive defeat signal over net client mode only

	receive_draw() deferred end	--Receive draw signal over net client mode only

	abort_game() deferred end  -- Abort game signal via method server/client

	exit_game() deferred end	-- Exit game signal via method server/client

	victory() deferred end	-- A player has won the game and so the victory method is needed server/client

	defeat() deferred end   -- A player has lost and so the defeat method is needed server/client

	draw() deferred end		---- there is draw and we have to print draw on screen server/client

	-- It will be deleted as soon as test cases will be removed in order no compilation errors exist

	set_single_player(name: STRING; colour: STRING) deferred end  -- Set the appropriate single player settings (gui)

	set_multi_player(server: BOOLEAN; name: STRING; colour: STRING; IP: STRING; port: INTEGER) deferred end   -- Set the appropriate multi player settings (gui)

	-- New methods about init seetings of multiplayer game

	set_server_setup(name: STRING; ip: STRING; port: INTEGER) deferred end   -- Set the appropriate multi player settings at server

	set_client_setup(name: STRING; IP: STRING; port: INTEGER) deferred end   -- Set the appropriate multi player settings at client

	receive_chat_enable(value: BOOLEAN) deferred end   -- Receive a signal to enable the chat

	receive_game_start() deferred end  -- Receive game start signal client mode only

	other_player(name: STRING; IP: STRING) deferred end   -- Receive other's player information server only

	client_connected(name: STRING; ip: STRING) deferred end

	receive_command_clean_game_window() deferred end --receive a command to clear the game window from net client mode only

	receive_command_switch_panel_game_to_menu() deferred end --receive a command to switch to menu from net client mode only

	receive_command_switch_panel_menu_to_game() deferred end --equals receive game start (simone)

	receive_draw_status() deferred end	--simone

	receive_cell(a_cell: XX_CELL) deferred end	--simone

	receive_timer(a_timer: XX_TIMER) deferred end -- receive timer from net client mode only

end
