note
	description: "Represnts/Simulates the LOGIC interface."
	author: "Nikolaos SOurligas, Theocharis Vavouris"
	date: "$Date$"
	revision: "$Revision$"

deferred class
	XX_ILOGIC

feature

	associated_move(move: XX_POSSIBLE_MOVES) deferred end   -- Associated move of the player himself/herself

	other_move(move: XX_POSSIBLE_MOVES) deferred end  -- Move of the other player of the game

	receive_gui_board(a_board: XX_GUI_BOARD) deferred end  -- Receive the gui board that needed from GUI in order to draw

	receive_game_status(a_player1,a_player2 : XX_PLAYER; is_active: BOOLEAN) deferred end   -- Receive the current game status

	abort_game() deferred end  -- Abort game signal via method

	exit_game() deferred end	-- Exit game signal via method

	victory() deferred end	-- A player has won the game and so the victory method is needed

	defeat() deferred end   -- A player has lost and so the defeat method is needed

	set_single_player(name: STRING; colour: STRING) deferred end  -- Set the appropriate single player settings

	set_multi_player(server: BOOLEAN; name: STRING; colour: STRING; IP: STRING; port: INTEGER) deferred end   -- Set the appropriate multi player settings

	receive_chat_enable(value: BOOLEAN) deferred end   -- Receive a signal to enable the chat

	receive_game_start() deferred end  -- Receive game start signal

	other_player(name: STRING; IP: STRING) deferred end   -- Receive other's player information

end
