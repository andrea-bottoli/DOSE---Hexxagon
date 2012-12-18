note
	description: "Represents/Simulates the AI interface."
	author: "Nikolaos Sourligas, Theocharis Vavouris"
	date: "$Date$"
	revision: "$Revision$"

deferred class
	XX_IAI

feature

	set_board(board: XX_BOARD) deferred end   -- Set the board of the updated game

	set_game_status(player1,player2: XX_PLAYER; is_active: BOOLEAN) deferred end	-- Set the game status

	send_confirm(value: BOOLEAN) deferred end  -- Send confirmation signal

end
