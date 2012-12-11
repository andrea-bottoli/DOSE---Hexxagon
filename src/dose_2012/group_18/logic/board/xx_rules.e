note
	description: "This is a collection of methods descibing and implementing the rules of game hexxagon."
	author: "Nikolaos Sourligas, Theocharis Vavouris"
	date: "$Date$"
	revision: "$Revision$"

class
	XX_RULES

create
	make_rules

feature {NONE} -- Initialization
--###############################################################
	make_rules	-- Initialization for `Current'.
	do

	end

feature {XX_HEXXAGON,XX_AI_PLAYER}
--###############################################################
	is_legal(board:XX_BOARD;player:INTEGER;which:INTEGER;where_to:INTEGER):BOOLEAN	--checks if a move is possible on the board
																			--returns 1 if is clone 2 if is jump if not valid returns 0
	require
		valid_indexes: (board/=Void) and (which >=0 and which <58)and (where_to >=0 and where_to <58) and (player = 1 or player = 2)
	local
		flag:BOOLEAN
		clonelist:TUPLE
		jumplist:TUPLE
		clonesize:INTEGER
		jumpsize:INTEGER
		k:INTEGER
	do
		flag:=False
		if (which /= where_to) and (board.get_cell(which).get_contents = player) and (board.get_cell (where_to).get_contents = 0)then
			clonelist:= board.get_cell_clonep (which)
			jumplist:= board.get_cell_jump (which)
			clonesize:=clonelist.count.as_integer_32
			jumpsize:=jumplist.count.as_integer_32
			from k:=1 until k> clonesize
			loop
				if clonelist.integer_item (k) = where_to then
					flag:= TRUE
					k:=clonesize
				end
				k:= k + 1
			end
			if flag/=True then
				from k:=1 until k >jumpsize
				loop
					if jumplist.integer_item (k) = where_to then
						flag:=TRUE
						k:=jumpsize
					end
					k:= k + 1
				end
			end
		end
		Result:= flag
	ensure
		((Result = True) or (Result = False))
	end
--###############################################################
	try_move(board:XX_BOARD;player:INTEGER;move:XX_POSSIBLE_MOVES):INTEGER	--checks if a move is possible on the board
																			--returns 1 if is clone 2 if is jump if not valid returns 0
	require
		valid_indexes: (board/=Void) and (move/=Void) and (player = 1 or player = 2)
	local
		flag:INTEGER
		which:INTEGER
		where_to:INTEGER
		clonelist:TUPLE
		jumplist:TUPLE
		clonesize:INTEGER
		jumpsize:INTEGER
		k:INTEGER
	do
		flag:=0
		which:=move.get_piece
		where_to:=move.get_position
		if (which /= where_to) and (board.get_cell(which).get_contents = player) and (board.get_cell (where_to).get_contents = 0)then
			clonelist:= board.get_cell_clonep (which)
			jumplist:= board.get_cell_jump (which)
			clonesize:=clonelist.count.as_integer_32
			jumpsize:=jumplist.count.as_integer_32
			from k:=1 until k> clonesize
			loop
				if clonelist.integer_item (k) = where_to then
					flag:= 1
					k:=clonesize
				end
				k:= k + 1
			end
			if flag/=1 then
				from k:=1 until k >jumpsize
				loop
					if jumplist.integer_item (k) = where_to then
						flag:=2
						k:=jumpsize
					end
					k:= k + 1
				end
			end
		end
		Result:= flag
	ensure
		((Result >=0) or (Result <=2))
	end
--###############################################################
	try_capture(board:XX_BOARD;player:INTEGER;which:INTEGER):INTEGER	--returns how many captures a players piece that was moved does
																		--if -1 the piece wasnt blank.used only on empty positions

	require
		valid_indexes: (board/=Void) and (which>=0)and (which>=58) and (player = 1 or player = 2)
	local
		flag:INTEGER
		clonelist:TUPLE
		clonesize:INTEGER
		k:INTEGER
		cell:INTEGER

	do
		flag:=0
		if board.get_cell (which).get_is_blank then
			clonelist:= board.get_cell_clonep (which)
			clonesize:=clonelist.count.as_integer_32
			from k:=1
			until k> clonesize
			loop
				cell:=clonelist.integer_item (k)
				if (board.get_cell (cell).get_contents /= player ) and (board.get_cell (cell).get_contents /= 0 ) then
					flag:= flag +1
				end
				k:= k + 1
			end
		else
			flag := -1
		end
		Result:= flag
	ensure
		((Result >=-1) and (Result <=6))
	end

feature{XX_HEXXAGON}
--###############################################################
	do_move(board:XX_BOARD;player:INTEGER;move:XX_POSSIBLE_MOVES):INTEGER	--makes a move on the board
																			----returns 1 if is clone 2 if is jump if not valid returns 0
	require
		valid_indexes: (board/=Void) and (move/=Void) and (player = 1 or player = 2)
	local
		flag:INTEGER
		which:INTEGER
		where_to:INTEGER
	do
		flag := try_move(board,player,move)
		which := move.get_piece
		where_to := move.get_position
		if ( flag = 1) then
			board.get_cell (where_to).set_contents (player)
		elseif flag = 2 then
			board.get_cell (where_to).set_contents (player)
			board.get_cell (which).set_contents (0)
		end
		Result:=flag
	ensure
		((Result >=0) or (Result <= 2))
	end

--###############################################################
	do_capture(board:XX_BOARD;player:INTEGER;which:INTEGER):INTEGER --makes capturing of pieces, returs how many it captured
																	--if -1 the piece wasnt the players. called only after do move

	require
		valid_indexes: (board/=Void) and (which>=0)and (which>=58) and (player = 1 or player = 2)
	local
		flag:INTEGER
		clonelist:TUPLE
		clonesize:INTEGER
		k:INTEGER
		cell:INTEGER

	do
		flag:=0
		if board.get_cell (which).get_contents = player then
			clonelist:= board.get_cell_clonep (which)
			clonesize:=clonelist.count.as_integer_32
			from k:=1
			until k> clonesize
			loop
				cell:=clonelist.integer_item (k)
				if (board.get_cell (cell).get_contents /= player ) and (board.get_cell (cell).get_contents /= 0 ) then
					board.get_cell(cell).set_contents(player)
					flag:= flag +1
				end
				k:= k + 1
			end
		else
			flag := -1
		end
		Result:= flag
	ensure
		((Result >=-1) and (Result <=6))
	end

--###############################################################
	update_gui_board(board:XX_BOARD)		--updates the gui representation of the board
	require
		board/=Void
	local
		gui_board:XX_GUI_BOARD
		cells:ARRAY[XX_CELL]
		k:INTEGER
	do
		gui_board := board.get_gui_board
		cells := board.get_cell_board
		from k:=0 until k>=58
		loop
			if cells.at (k).get_contents /= gui_board.get_array.at(k) then
				gui_board.set_cell (k, cells.at (k).get_contents)
			end
			k:=k+1
		end

	end

--###############################################################
	update_gui_move(board:XX_BOARD;which:INTEGER)	--updates a pieces possible moves on the gui representation of the board
	require
		valid_indexes: (board/=Void) and (which>=0)and (which>=58)
	local
		cell:INTEGER
		gui_board:XX_GUI_BOARD
		cells:ARRAY[XX_CELL]
		clonelist:TUPLE
		clonesize:INTEGER
		jumplist:TUPLE
		jumpsize:INTEGER
		k:INTEGER
	do
		gui_board:=board.get_gui_board
		cells:=board.get_cell_board
		clonelist:= board.get_cell_clonep (which)
		clonesize:=clonelist.count.as_integer_32
		jumplist:= board.get_cell_jump (which)
		jumpsize:=jumplist.count.as_integer_32
		from k:=1 until k> clonesize
		loop
			cell:=clonelist.integer_item (k)
			if (cells.at (cell).get_is_blank ) then
				gui_board.set_cell (cell, 3)
			end
			k:= k + 1
		end

		from k:=1 until k> jumpsize
		loop
			cell:=jumplist.integer_item (k)
			if (cells.at (cell).get_is_blank) then
				gui_board.set_cell (cell, 4)
			end
			k:= k + 1
		end

	end

--###############################################################
	capture_all(board: XX_BOARD; player: INTEGER)--captures all remaining empty on the board (used in no_moves)
	require
		check_board: (board /= Void)
		check_player: (player = 1 xor player = 2)
	local
		i: INTEGER
		cells:ARRAY[XX_CELL]
	do
		cells:=board.get_cell_board
		from i := 0 until i >= 58
		loop
			if (cells[i].get_is_blank ) then
				cells[i].set_contents(player)
			end
			i:=i+1
		end
	end
	--###############################################################
	capture_everything(board: XX_BOARD; player: INTEGER)--captures all remaining empty on the board (used in abort)
	require
		check_board: (board /= Void)
		check_player: (player = 1 xor player = 2)
	local
		i: INTEGER
		cells:ARRAY[XX_CELL]
	do
		cells:=board.get_cell_board
		from i := 0 until i >= 58
		loop
			cells[i].set_contents(player)
			i:=i+1
		end
	end
--###############################################################
	more_moves(board:XX_BOARD;player:INTEGER):BOOLEAN	--check if a player has any moves left
	require
		check_board: (board /= Void)
		check_player: (player = 1 xor player = 2)
	local
		flag:BOOLEAN
		i:INTEGER
		j:INTEGER
		clonelist:TUPLE
		clonesize:INTEGER
		jumplist:TUPLE
		jumpsize:INTEGER
		cells:ARRAY[XX_CELL]
	do
		flag:=False
		cells:=board.get_cell_board
		from i:=0
		until flag or i>=58
		loop
			clonelist:=board.get_cell_clonep (i)
			clonesize:=clonelist.count
			jumplist:=board.get_cell_jump (i)
			jumpsize:=jumplist.count
			from j:=1
			until flag or j>clonesize
			loop
				if cells[clonelist.integer_item (j)].get_is_blank then
					flag:=True
				end
				j:=j+1
			end
			from j:=1
			until flag or j>jumpsize
			loop
				if cells[jumplist.integer_item (j)].get_is_blank then
					flag:=True
				end
				j:=j+1
			end
			i:=i+1
		end
		Result:=flag
		ensure Result=True xor Result = False
	end
--###############################################################
end_of_game(board:XX_BOARD;player1:XX_PLAYER;player2:XX_PLAYER):INTEGER --checks who won. returns 0 for draw
																		--1 if first player won and 2 if second player won
	require board/=Void and player1/=Void and player2 /=Void
	local
		i:INTEGER
		flag:INTEGER
	do
		flag:=0
		i:=0
		if player1.get_priority = 1 then
			i:=player1.get_total_pieces - player2.get_total_pieces
		else
			i:=player2.get_total_pieces - player1.get_total_pieces
		end
		if i >0 then
			flag:=1
		elseif i < 0 then
			flag:=2
		else
			flag:=0
		end
		Result:=flag
		ensure Result >=0 and Result <=2
	end
--###############################################################
feature {XX_HEXXAGON,XX_AI_PLAYER}
make_a_move(board:XX_BOARD;player:INTEGER;move:XX_POSSIBLE_MOVES):INTEGER	--makes a move and captures,
																			--returns how many more cells were placed on the board
																			--if returns 0 the move was a jump and nothing was captured
																			--if returns -1 the move was not possible
	require board/=Void and (player=1 or player =2) and move/=Void
	local
		i:INTEGER
		flag:INTEGER
	do
		flag:=0
		i:=do_move(board,player,move)
		if i>0 then
			if i=1 then
				flag:=flag+1
			end
			i:=do_capture(board,player,move.get_position)
			flag:=flag+i
			Result:=flag
		else
			flag:=-1
		end
		Result:=flag
		ensure
			Result>=-1
	end

make_copy_move(board:XX_BOARD;player:INTEGER;move:XX_POSSIBLE_MOVES):XX_BOARD	--makes a move and captures,
																			--returns how many more cells were placed on the board
																			--if returns 0 the move was a jump and nothing was captured
																			--if returns -1 the move was not possible
	require board/=Void and (player=1 or player =2) and move/=Void
	local
		newcopy:XX_BOARD
		i:INTEGER
	do
		newcopy:=board.copy_board
		i:=do_move(newcopy,player,move)
		if i>0 then
			i:=do_capture(newcopy,player,move.get_position)
		end
		Result:=newcopy
		ensure
			Result/=Void
	end
end
