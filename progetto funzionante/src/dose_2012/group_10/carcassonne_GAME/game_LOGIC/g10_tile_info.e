note
	description: "Summary description for {TILE_INFO}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	G10_TILE_INFO
feature
	Tile:G10_TILE
	PossiblePositions:LIST[G10_POSITION]
feature
	Generate(TheTile:G10_TILE TheMap:G10_MAP ThePlayer:G10_PLAYER):BOOLEAN
	do  end
end
