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
	cnt:INTEGER
	i:INTEGER
	j:INTEGER

	make(alogic:XX_HEXXAGON)
	require
		alogic/=void
	do
		logic:=alogic
		cnt:=0
		i:=0
		j:=3
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
		tmp:INTEGER
	do
		if is_active then
			--create ai.ensure_move (logic, board)
--			create move.make_possible_moves
--			if cnt=0 then
--				move.set_move (0, 1, 2)
--			elseif cnt =1 then
--				move.set_move (0, 2, 2)
--			elseif cnt = 2 then
--				move.set_move (0, 4, 2)
--			else
--				move.set_move (i, j, 2)
--				tmp:=i
--				i:=j
--				j:=tmp
--			end
--			cnt:=cnt+1
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
