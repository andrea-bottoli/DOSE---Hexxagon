note
	description: "Summary description for {MAINBOARD}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	G20_MAINBOARD
		create
		make

		feature{NONE}
		field: ARRAY2[G20_COLOR]

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

end

