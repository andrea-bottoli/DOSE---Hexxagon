note
	description : "This class implements  a machine player"
	author	    : "Jorge E. Gonzalez, Hugo H. Avalos"
	date        : "$Date$"
	revision    : "$Revision$"

class
	G20_AIPLAYER

inherit
	G20_PLAYER
	redefine move, invalid_move end

create
	make
feature
	AI: G20_AICORE
	idPlayer: INTEGER

feature{ANY}
	make
		do
			create AI.make
			idPlayer:=0
		end

feature -- next movement
	move(currentPlayer: INTEGER) :G20_MOVEMENT
		--require
		--		(1<=currentPlayer) and (currentPlayer<=4)
		local
			hand: G20_SATCHEL
			board: G20_MAINBOARD
		do
			idPlayer:= currentPlayer
			hand:= core.get_satchel(idPlayer)
			board:= get_board
			result:= AI.choose_movement(board, hand)
		end

	--invalid_move(currentPlayer: INTEGER) :G20_MOVEMENT
	invalid_move
		do
			--handles when a movement that this player mad is invalid.
			--result:= move(currentPlayer)
		end

end
