note
	description: "Represnts/Simulates the LOGIC interface."
	author: "Nikolaos SOurligas, Theocharis Vavouris"
	date: "$Date$"
	revision: "$Revision$"

deferred class
	XX_ILOGIC

feature

	associated_move(move: XX_POSSIBLE_MOVES) deferred end

	other_move(move: XX_POSSIBLE_MOVES) deferred end

	receive_gui_board(a_board: XX_GUI_BOARD) deferred end

	receive_game_status(a_player1,a_player2 : XX_PLAYER; is_active: BOOLEAN) deferred end

	abort_game() deferred end

	exit_game() deferred end

	victory() deferred end

	defeat() deferred end

	set_single_player(name: STRING; colour: STRING) deferred end

	set_multi_player(server: BOOLEAN; name: STRING; colour: STRING; IP: STRING; port: INTEGER) deferred end

	receive_chat_enable(value: BOOLEAN) deferred end

	receive_game_start() deferred end

	other_player(name: STRING; IP: STRING) deferred end

end
