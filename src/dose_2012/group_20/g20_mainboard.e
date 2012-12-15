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

		feature{NONE}

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

		feature{ANY}
		make
			local
				defaultColor: G20_COLOR
			do
				defaultColor.setcolor(defaultColor.Empty)
				create field.make_filled(defaultColor,13,13)
			end --make

		IsFree (row, column : INTEGER) : BOOLEAN
			require
				IsValidCell(row, column)
			do
				Result := field.item(row, column).IsEmpty
			end --IsFree

		IsValidCell (row, column : INTEGER) : BOOLEAN
			do
				if (row < 0) or (row > 12) or (column < 0) or (column > 12) then
					Result := false
				else
					if (row <= 5) and (column > row + 6) then
						Result := false
					elseif (row >= 7) and (column < row - 6) then
						Result := false
					else
						Result := true
					end
				end
			end --IsValidCell

		PlaceColor (row, column: INTEGER; color: G20_COLOR)
			require
				(IsValidCell(row, column)) and (IsFree(row,column))
			do
				field.put(color, row, column)
			end

		PlaceTile (row1, column1, row2, column2: INTEGER; tile: G20_TILE)
			require
				(IsValidCell(row1, column1)) and (IsFree(row1,column1)) and (IsValidCell(row2, column2)) and (IsFree(row2,column2)) and (AreNeighbors(row1,column1,row2,column2))
			do
				field.put(tile.GetColor1(), row1, column1);
				field.put(tile.GetColor2(), row2, column2);
			end

		Validate (move: G20_MOVEMENT): BOOLEAN
			do
				Result := (IsValidCell(move.getfirstrow, move.getfirstcolumn))
					and (IsFree(move.getfirstrow, move.getfirstcolumn))
					and (IsValidCell(move.getsecondrow, move.getsecondcolumn))
					and (IsFree(move.getsecondrow, move.getsecondcolumn))
			end

end
