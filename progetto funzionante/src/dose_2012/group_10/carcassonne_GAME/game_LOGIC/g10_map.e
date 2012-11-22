note
	description: "Summary description for {MAP}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	G10_MAP

create
	make

feature
	Map: LIST[TUPLE[Tile:G10_TILE PlayerID:INTEGER]]
	--TUPLE can be replaced by new CLASS for example
	--ineger in turple is PlayerId
feature
	PutTile(TheTile:G10_TILE TheCoordinate:G10_POSITION Player:G10_PLAYER):BOOLEAN
	do  end

	get_tile(x : INTEGER y : INTEGER) : G10_TILE -- routine returns the tile in 9x,y) coordinates of the terrain.
	do
	end

	UpdateScores(ThePlayers:G10_PLAYERS):BOOLEAN
	do  end
	IsEmpty(pos : G10_POSITION):BOOLEAN
	do end
-- constructors
feature
	make()
	do
	end

end
