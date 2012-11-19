note
	description: "Represents/Simulates the AI interface."
	author: "Nikolaos Sourligas, Theocharis Vavouris"
	date: "$Date$"
	revision: "$Revision$"

deferred class
	XX_IAI

feature

	set_board(board: XX_BOARD) deferred end

	set_game_status(player1,player2: XX_PLAYER; is_active: BOOLEAN) deferred end

	send_confirm(value: BOOLEAN) deferred end

end
