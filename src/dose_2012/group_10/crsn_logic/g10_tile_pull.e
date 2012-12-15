note
	description: "Summary description for {TILE_PULL}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	G10_TILE_PULL

create
	make

feature
	Pull:ARRAYED_LIST[G10_TILE]
	IsTileTaken:ARRAYED_LIST[BOOLEAN]
feature
	--method that allows you to get START TILE if you need it
	--this 53th tile is with part of road and part of town
	--it helps not to start game with random tile (that can fully
	--consist from grass without town)! Only if it is really needed
	get_start_tile():G10_TILE
	do
		IsTileTaken.at (53):=TRUE
		Result:=Pull.at(53)
	end
	-- Allows to get next tile which is not taken
	--next tile for current player
	GenerateNextTile():G10_TILE
	local
		i: INTEGER
		aNextTile: G10_TILE
	 do
	 	from i := 0 until i > 72
	 	loop
	 		if(IsTileTaken.at (i) = FALSE)
	 		then
	 			aNextTile := Pull.at (i)
	 			IsTileTaken.at(i):=TRUE
	 			i:=73
	 		else
	 			i := i + 1
	 		end
	 	end
	 	Result := aNextTile
	 end

	-- checks if tiles pool is empty
	IsEmpty():BOOLEAN
	 do
	 	Result := Pull.is_empty
	 end

-- mutator method.
feature
	-- adds tile to pool
	add_tile_to_pile(tile : G10_TILE) -- routine adds a tile to the pile.
	do
		Pull.extend (tile)
		IsTileTaken.extend (FALSE)
	end

	get_pull():ARRAYED_LIST[G10_TILE]
	do
		Result:=Pull
	end

	index_of(TheTile:G10_TILE):INTEGER
	do
		Result:=Pull.index_of (TheTile,0)
	end

	erase_pull()
	do
		Pull.wipe_out
		IsTileTaken.wipe_out
	end

-- constructors.
--initialization of tile pool
feature
	make
	local
		j :INTEGER
		tile :G10_TILE
	do
		from j := 0 until j >= 72
		loop
			create tile.make()
	 		if(j < 4)then
	 			tile.setType(1)--"cherch"
	 		elseif (j < 6) then
	 			tile.setType(2)--"cherch+road")
	 		elseif (j < 10) then
	 			tile.setType(3)--"town+grass")
	 		elseif (j < 11) then
	 			tile.setType(4)--"town+shield+grass")
	 		elseif (j < 14) then
	 			tile.setType(5)--"town+road")
	 		elseif (j < 19) then
	 			tile.setType(6)--"town+diagonalgrass")
	 		elseif (j < 24) then
	 			tile.setType(7)--"town+diagonalroad")
	 		elseif (j < 27) then
	 			tile.setType(8)--"town+doublegrass")
	 		elseif (j < 29) then
	 			tile.setType(9)--"town+town+grass")
	 		elseif (j < 32) then
	 			tile.setType(10)--"doubletown+grass")
	 		elseif (j < 37) then
	 			tile.setType(11)--"grass+town")
	 		elseif (j < 40) then
	 			tile.setType(12)--"leftdiagonalroad+town+grass")
	 		elseif (j < 43) then
	 			tile.setType(13)--"rightdiagonalroad+town+grass")
	 		elseif (j < 47) then
	 			tile.setType(14)--"crossroad+town+grass")
	 		elseif (j < 50) then
	 			tile.setType(15)--"horizontroad+town+grass")
	 		elseif (j < 58) then
	 			tile.setType(16)--"vertroad+grass")
	 		elseif (j < 67) then
	 			tile.setType(17)--"diagonalroad+grass")
	 		elseif (j < 71) then
	 			tile.setType(18)--"triplecrossroad+grass")
	 		elseif (j < 72) then
	 			tile.setType(19)--"qadrcrossroad+grass")
	 		end
	 	--Pull[j]:= tile															-- ERROR FROM G10_TILE OF SETTYPE FIX
	 	j := j+1
	 	end
	end
end
