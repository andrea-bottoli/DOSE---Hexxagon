note
	description: "Summary description for {TILE_INFO}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	G10_TILE_INFO
feature
	Tile:G10_LOGIC_TILE
	PossiblePositions:LIST[G10_POSITION]
feature
	Generate(TheTile:G10_LOGIC_TILE TheMap: G10_LOGIC_TERRAIN ThePlayer:G10_LOGIC_PLAYER):BOOLEAN
	do  end
end
