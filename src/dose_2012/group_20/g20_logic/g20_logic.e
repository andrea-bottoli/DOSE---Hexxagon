note
	description: "Summary description for {G20_LOGIC}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	G20_LOGIC

	create
	makeByBoardRef

	feature{NONE}
	mainboardRef: G20_MAINBOARD

	pointsOfLineByDirection(row, column, rowDir, columnDir: INTEGER; color: G20_COLOR): INTEGER
		require
			mainboardRef.IsValidCell(row, column)
		local
			currentRow, currentColumn, points: INTEGER
		do
			from
				points := 0
				currentRow := row + rowDir
				currentColumn := column + columnDir
			until
				not (mainboardRef.IsValidCell(currentRow,currentColumn))
				or (mainboardRef.GetColorByCoords(currentRow,currentColumn).getcolor/=color.getcolor)
			loop
				points := points+1
			end
		Result := points
		end

	feature{ANY}
	makeByBoardRef(board: G20_MAINBOARD)
		require
			board /= Void
		do
			mainboardRef := board
		end

	getPoints(move : G20_MOVEMENT) : ARRAY[INTEGER]
		require
			moveIsntVoid: move /= Void
			moveIsValid: mainboardRef.Validate(move)
		local
			color1, color2 : G20_COLOR
			rowDirections : ARRAY[INTEGER]
			colDirections : ARRAY[INTEGER]
			cur : INTEGER
		do
			create Result.make(1, 6)
			Result := << 0, 0, 0, 0, 0, 0 >>
			color1 := move.GetTile.GetColor1
			color2 := move.GetTile.GetColor2
			create rowDirections.make(1, 6)
			create colDirections.make(1, 6)
			rowDirections := << -1, 0, 1, 1, 0, -1 >>
			colDirections := << -1, -1, 0, 1, 1, 0 >>
			from
				cur := 1
			until
				cur > 6
			loop
				if not ((move.GetSecondRow - move.GetFirstRow = rowDirections.item(cur)) and (move.GetSecondColumn - move.GetFirstColumn = colDirections.item(cur)))
				then
					Result.put(Result.item(color1.GetColor) + pointsOfLineByDirection(move.GetFirstRow, move.GetFirstColumn, rowDirections.item(cur), colDirections.item(cur), color1), color1.GetColor)
				end
				cur:=cur+1
			end

			from
				cur := 1
			until
				cur > 6
			loop
				if not ((move.GetFirstRow - move.GetSecondRow = rowDirections.item(cur)) and (move.GetFirstColumn - move.GetSecondColumn = colDirections.item(cur)))
				then
					Result.put(Result.item(color2.GetColor) + pointsOfLineByDirection(move.GetSecondRow, move.GetSecondColumn, rowDirections.item(cur), colDirections.item(cur), color2), color2.GetColor)
				end
				cur := cur+1
			end
		end

	getPointsWithTile(move : G20_MOVEMENT) : ARRAY[INTEGER]
		require
			move /= Void
		local
			points: ARRAY[INTEGER]
		do
			points := getPoints(move)
			mainboardRef.PlaceTile(move)
			Result := points
		end

	Ingenious(playerNumber: INTEGER; scoreboard: G20_SCOREBOARD) : BOOLEAN
    	local
			i: INTEGER
		do
			Result := True
			from
				i:=1
			until
				i > 6 and not Result
			loop
				if
					scoreboard.GetScore(playerNumber, i) /= 24
				then
					Result := False
				end
				i:= i+1
			end
		end
end
