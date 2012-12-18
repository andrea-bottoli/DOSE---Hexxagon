note
	description: "Summary description for {G21_RULES}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

deferred class
	G21_RULES

	feature{G21_BOARD}
		isSuddenDeath:BOOLEAN
		isOn:BOOLEAN

	feature
		init(board:ARRAY2[G21_CELL])
		local
			i:INTEGER
			j:INTEGER
		do
			create gameboard.make_filled (void, 3, 3)
			ison := TRUE
			from
				i:= 1
			until
				i > 3
			loop
				from
					j := 1
				until
					j > 3
				loop
					gameboard.put (board.item (i, j), i, j)
					j := j + 1
				end
				i := i + 1
			end

		end
		gameBoard:ARRAY2[G21_CELL]
		getIsOn:BOOLEAN
		do
			Result := isOn
		end
		getIsSuddenDeath:BOOLEAN
		do
			Result := issuddendeath
		end
		getGameBoard:ARRAY2[G21_CELL]
		do
			Result := gameboard
		end
		setGameBoard(board:ARRAY2[G21_CELL])
		do
			create gameboard.make_filled (void, 1, 3)
			gameboard.copy (board)
		end
		setCell(row:INTEGER;colum:INTEGER;cell:G21_CELL)
		do
			gameboard.put (cell, row, colum)
		end


		isMakeChange(pos_X:INTEGER_32 ; pos_Y:INTEGER_32 ; card:G21_CARD):BOOLEAN
		deferred end

		makeChangeAndUpdate(pos_X:INTEGER_32 ; pos_Y:INTEGER_32):ARRAY2[G21_CELL]
		deferred
		end
		printBoard(board:ARRAY2[G21_CELL])
		local
			i:INTEGER
			j:INTEGER
		do
			create gameboard.make_filled (void, 3, 3)
			from
				i:= 1
			until
				i > 3
			loop
				from
					j := 1
				until
					j > 3
				loop
					gameboard.item (i, j).printcell
					j := j + 1
				end
				i := i + 1
			end
		end



end
