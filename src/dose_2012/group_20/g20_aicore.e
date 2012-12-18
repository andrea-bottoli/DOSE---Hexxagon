note
	description: "Summary description for {AI}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	G20_AICORE

create
	make

feature
	bestMovementXtiles: ARRAY[G20_MOVEMENT_VALUE]

feature{ANY}
	make
		do
			create bestMovementXtiles.make(1,6)
		end

feature
	update
		do

		end

	get_state : G20_STATE
		do

		end

	receive_request(player:INTEGER)
		do

		end

	choose_movement(board:G20_MAINBOARD; satchel:G20_SATCHEL) :G20_MOVEMENT
		require
			board /= Void
			satchel /= Void
		local
			movement : G20_MOVEMENT
			i : INTEGER
			value : INTEGER
		do
			create movement.makeByTileAndCoords(VOID, 0, 0, 0, 0)

			from i:=1--for each tile in the satchel.
			until i>6
			loop
				bestMovementXtiles.put(getBestMovementValue(tryTile(satchel.item(i), board)),i)-- get the best movement for the current tile
				i := i + 1
			end

			value:=-1

			from i:=1-- get the best movement
			until i>6
			loop
				if (bestMovementXtiles.item(i).getValue > value) then
					value := bestMovementXtiles.item(i).getValue
					movement := bestMovementXtiles.item(i).getMovement
				end
				i := i + 1
			end

			io.put_string ("points for the movement selected: "+ value.out +"%N")
			result:= movement
		end

	try_tile(tile:G20_TILE; board:G20_MAINBOARD): ARRAY2[G20_MOVEMENT_VALUE]
		-- try the tile in all the position of the board
		require
			board /= Void
		local
			i: INTEGER
			j: INTEGER
			tmpElement : G20_MOVEMENT_VALUE
			resultMatrix:    ARRAY2[G20_MOVEMENT_VALUE]
		do

			create resultMatrix.make(15,15,15,15)
			create tmpElement.make(VOID, -1)

			from i:=1--rows
			until i>15
			loop
				from j:=1--columns
				until j>15
				loop
					tmpElement:= getBestMovementPosition(i, j, tile, board)--select the best direction for the tile in this position
					resultMatrix.put(tmpElement, i, j)
					j := j + 1
				end
				i := i + 1
			end
			result:= resultMatrix
		end

	getBestMovementValue(tmpMatrix: ARRAY2[G20_MOVEMENT_VALUE]): G20_MOVEMENT_VALUE
		require
			tmpMatrix /= Void
		local
			i: INTEGER
			j: INTEGER
			value: INTEGER
			tmpElement : G20_MOVEMENT_VALUE

		do
			value:=-1
			create tmpElement.make(VOID,-1)

			from i:=1--rows
			until i>15
			loop
				from j:=1--columns
				until j>15
				loop
					if tmpMatrix.item(i,j).getValue > value then
						value := tmpMatrix.item(i,j).getValue
						tmpElement := tmpMatrix.item(i,j)
					end
					j := j + 1
				end
				i := i + 1
			end

			result:=tmpElement
		end



	getBestMovementPosition(x, y: INTEGER; tile:G20_TILE; board:G20_MAINBOARD):G20_MOVEMENT_VALUE
	-- calculate the best direction of a tile in a certain position.
		require
			board /= Void
			(1<=x) and (x<=15) and (1<=y) and (y<=15)
		local
			possiblesMoveValue : ARRAY[G20_MOVEMENT_VALUE]
			tmpMoveValue:G20_MOVEMENT_VALUE
			tmpMovement:G20_MOVEMENT
			i: INTEGER
		do
			create possiblesMoveValue.make(1,8)
			create tmpMovement.makeByTileAndCoords(tile, x, y, x-1, y)
			create tmpMoveValue.make(tmpMovement,-1)

			--x, y, x-1, y
			if board.validate(tmpMovement) then
				tmpMoveValue.setValue(getTotalPointsMovement(tmpMovement))
			end
			possiblesMoveValue.put(tmpMoveValue,1)

			--x, y, x+1, y
			tmpMovement.setSecondRow(x+1)
			tmpMoveValue.setValue(-1)
			if board.validate(tmpMovement) then
				tmpMoveValue.setValue(getTotalPointsMovement(tmpMovement))
			end
			possiblesMoveValue.put(tmpMoveValue,2)

			--x, y, x, y-1
			tmpMovement.setSecondRow(x)
			tmpMovement.setSecondColumn(y-1)
			tmpMoveValue.setValue(-1)
			if board.validate(tmpMovement) then
				tmpMoveValue.setValue(getTotalPointsMovement(tmpMovement))
			end
			possiblesMoveValue.put(tmpMoveValue,3)

			--x, y, x, y+1
			tmpMovement.setSecondRow(x)
			tmpMovement.setSecondColumn(y+1)
			tmpMoveValue.setValue(-1)
			if board.validate(tmpMovement) then
				tmpMoveValue.setValue(getTotalPointsMovement(tmpMovement))
			end
			possiblesMoveValue.put(tmpMoveValue,4)

			--x, y, x-1, y-1
			tmpMovement.setSecondRow(x-1)
			tmpMovement.setSecondColumn(y-1)
			tmpMoveValue.setValue(-1)
			if board.validate(tmpMovement) then
				tmpMoveValue.setValue(getTotalPointsMovement(tmpMovement))
			end
			possiblesMoveValue.put(tmpMoveValue,5)

			--x, y, x+1, y-1
			tmpMovement.setSecondRow(x+1)
			tmpMovement.setSecondColumn(y-1)
			tmpMoveValue.setValue(-1)
			if board.validate(tmpMovement) then
				tmpMoveValue.setValue(getTotalPointsMovement(tmpMovement))
			end
			possiblesMoveValue.put(tmpMoveValue,6)

			-- x, y, x-1, y+1
			tmpMovement.setSecondRow(x-1)
			tmpMovement.setSecondColumn(y+1)
			tmpMoveValue.setValue(-1)
			if board.validate(tmpMovement) then
				tmpMoveValue.setValue(getTotalPointsMovement(tmpMovement))
			end
			possiblesMoveValue.put(tmpMoveValue,7)

			-- x, y, x+1, y+1
			tmpMovement.setSecondRow(x+1)
			tmpMovement.setSecondColumn(y+1)
			tmpMoveValue.setValue(-1)
			if board.validate(tmpMovement) then
				tmpMoveValue.setValue(getTotalPointsMovement(tmpMovement))
			end
			possiblesMoveValue.put(tmpMoveValue,8)


			from i:=1-- get the best movement
			until i>8--Number of possible positions of the tile
			loop
				if (possiblesMoveValue.item(i).getValue > value) then
					value := possiblesMoveValue.item(i).getValue
					tmpMoveValue  := possiblesMoveValue.item(i)
				end
				i := i + 1
			end


			result:= tmpMoveValue
		end


	getTotalPointsMovement(movement: G20_MOVEMENT):INTEGER
	--obtaint the sum of all point generated by the movement
		local
			totalPoints : INTEGER
			i : INTEGER
			points : ARRAY[INTEGER]
		do
			create points.make(1,6)
			totalPoints:=0
			--points.:= << 0, 0, 0, 0, 0, 0 >>
			points := core.getLogic.getPoints(movement)

			from i:=1
			until i>6
			loop
				totalPoints:= totalPoints + points.item(i)
				i := i + 1
			end

			result:=totalPoints

		end

	inform_movement: G20_MOVEMENT
		do

		end

	difficulty_level(level: INTEGER)
		do

		end


end
