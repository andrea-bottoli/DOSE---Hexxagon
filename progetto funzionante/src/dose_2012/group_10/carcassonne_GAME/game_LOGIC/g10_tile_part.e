note
	description: "Summary description for {TILE_PAR}."
	author: "Anastasia"
	date: "$Date$"
	revision: "$Revision$"

class
	G10_TILE_PART

feature
	--Chip if it is located in this part of tile
	Chip: G10_CHIP
	--Description of this tile part texture(grass, road, building)
	GroundTexture: INTEGER
feature
	PutFollower(TheChip:G10_CHIP):BOOLEAN
	do  end

end
