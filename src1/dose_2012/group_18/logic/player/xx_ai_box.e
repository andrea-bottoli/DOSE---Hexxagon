note
	description: "Summary description for {XX_AI_BOX}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	XX_AI_BOX

create
	make

feature {NONE} -- Initialization
	ai:XX_AI_PLAYER
	board:XX_BOARD
	logic:XX_HEXXAGON

	make(alogic:XX_HEXXAGON)
	require
		alogic/=void
	do
		logic:=alogic
	ensure logic=alogic
	end

feature {XX_HEXXAGON}
	set_board(aboard: XX_BOARD)   -- Set the board of the updated game
	require
		aboard /= void
	do
		board:=aboard.copy_board
	ensure
		board /=Void
	end

	set_game_status(player1,player2: XX_PLAYER; is_active: BOOLEAN)	-- Set the game status
	local
		move:XX_POSSIBLE_MOVES
	do
		if is_active then
			--create ai.ensure_move (logic, board)
			create move.make_possible_moves
			print("%NWhich%N")
			io.read_integer
			move.set_piece (io.last_integer)
			print("%NWhere to%N")
			io.read_integer
			move.set_position (io.last_integer)
			move.set_type (2)
			logic.other_move (move)
		end
	end


end
