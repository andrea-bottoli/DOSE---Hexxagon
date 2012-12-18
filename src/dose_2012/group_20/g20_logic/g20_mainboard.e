note
	description: "Summary description for {MAINBOARD}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"
	EIS: "name=Unnamed", "protocol=URI", "src=http://www.yourwebsite.com"

class
	G20_MAINBOARD
		create
		make

		feature{NONE}
		field: ARRAY2[G20_COLOR]
		boardSize : INTEGER

		feature{NONE}
		IsValidCell_Private (row, column : INTEGER) : BOOLEAN
			local
				min, max, offset : INTEGER
			do
				max := boardSize
				if
					boardSize = 13
				then
					max := 14
				end
				if
					boardSize = 11
				then
					max := 13
				end
				min := 16 - max
				offset := max - 8
				if (row < min) or (row > max) or (column < min) or (column > max) then
					Result := false
				else
					if (row <= 7) and (column > row + offset) then
						Result := false
					elseif (row >= 9) and (column < row - offset) then
						Result := false
					else
						Result := true
					end
				end
			end --IsValidCell

		AreNeighbors(row1,column1,row2,column2:INTEGER):BOOLEAN
			local
				rowDiff, absRowDiff, columnDiff, absColumnDiff: INTEGER
			do
				rowDiff := row1 - row2
				absRowDiff := rowDiff.abs
				columnDiff := column1 - column2
				absColumnDiff := columnDiff.abs
				if (absRowDiff<=1) and (absColumnDiff<=1) then
					if (rowDiff*columnDIff>=0) then
						Result:=true
					else
						Result:=false
					end
				else
					Result:=false
				end
			end
		feature{G20_GUI, G20_GUI_BOARD}
			CheckColor(row,column:INTEGER): G20_COLOR
				require
					rowValid:1<=row and row<=15
					columnValid:1<=column and column<=15
				do
					Result:=field.item(row,column)
				end
		feature{ANY}
		make(size : INTEGER)
			require
				SizeNotValid : size = 11 or size = 13 or size = 15
			local
				color: G20_COLOR
				i, j: INTEGER
			do
				boardSize := size
				create field.make(15, 15)
				from
					i := 1
				until
					i > 15
				loop
					from
						j := 1
					until
						j > 15
					loop
						create color.make
						if
							not IsValidCell_Private(i, j)
						then
							color.SetInvalid
						end
						field.put(color, i, j)
						j := j+1
					end
					i:=i+1
				end
			end --make

		IsFree (row, column : INTEGER) : BOOLEAN
			require
				IsValidCell(row, column)
			do
				Result := field.item(row, column).IsEmpty
			end --IsFree

		IsValidCell (row, column : INTEGER) : BOOLEAN
			do
				if
					row < 1 or row > 15 or column < 1 or column > 15
				then
					Result := False
				else
					if
						field.item(row, column).isValid
					then
						Result := True
					else
						Result := False
					end
				end
			end --IsValidCell

		PlaceColor (row, column: INTEGER; color: G20_COLOR)
			require
				(IsValidCell(row, column)) and (IsFree(row,column))
			do
				field[row,column].copy(color)
			end

		PlaceTile (move: G20_MOVEMENT)
			require
				moveIsntVoid: move /= Void
				firstCellIsAccessible: (IsValidCell(move.getfirstrow,move.getfirstcolumn)) and (IsFree(move.getfirstrow,move.getfirstcolumn))
				secondCellIsAccesible: (IsValidCell(move.getsecondrow, move.getsecondcolumn)) and (IsFree(move.getsecondrow, move.getsecondcolumn))
				cellsAreNeighbors: (AreNeighbors(move.getfirstrow,move.getfirstcolumn,move.getsecondrow, move.getsecondcolumn))
			do
				field.put(move.gettile.GetColor1(), move.getfirstrow, move.getfirstcolumn);
				field.put(move.gettile.GetColor2(), move.getsecondrow, move.getsecondcolumn);
			end

		Validate (move: G20_MOVEMENT): BOOLEAN
			require
				move /= Void
			do
				Result := (IsValidCell(move.getfirstrow, move.getfirstcolumn))
					and (IsFree(move.getfirstrow, move.getfirstcolumn))
					and (IsValidCell(move.getsecondrow, move.getsecondcolumn))
					and (IsFree(move.getsecondrow, move.getsecondcolumn))
			end

		GetColorByCoords(row, column: INTEGER): G20_COLOR
			require
				1 <= row and row <= 15 and 1 <= column and column <= 15
			do
				Result := field.item (row, column)
			end

		HaveEmptyNeighbor(row, col : INTEGER) : BOOLEAN
			require
				IsValidCell(row, col)
			local
				rowDirections : ARRAY[INTEGER]
				colDirections : ARRAY[INTEGER]
				i : INTEGER
			do
				rowDirections := << -1, 0, 1, 1, 0, -1 >>
				colDirections := << -1, -1, 0, 1, 1, 0 >>
				Result := False
				from
					i := 1
				until
					i > 6 or Result
				loop
					if
					isValidCell(row+rowDirections[i],col+colDirections[i])
					then
						if
							field.item(row+rowDirections[i],col+colDirections[i]).IsEmpty
						then
							Result := True
						end
					end
					i:=i+1
				end
			end

			IsFull: BOOLEAN
				local
					i, j: INTEGER
				do
					Result := True
				from
					i := 1
				until
					i > 15 and not Result
				loop
					from
						j :=1
					until
						j > 15 and not Result
					loop
						if
							field.item(i, j).IsEmpty
						then
							if
								HaveEmptyNeighbor(i, j)
							then
								Result := False
							end
						end
						j := j + 1
					end
				i := i + 1
				end
			end

end
