note
	description: "Summary description for {TILE_PAR}."
	author: "Anastasia"
	date: "$Date$"
	revision: "$Revision$"

class
	G10_TILE_PART
create
	make

feature
	--Chip if it is located in this part of tile
	Chip: G10_CHIP
	--Description of this tile part texture(grass = 0, road = 1, building = 2, land = 3)
	GroundTexture: INTEGER
feature
	setChip(theChip: G10_CHIP)
	do
		Chip := theChip
	end

	setTexture(theTexture: INTEGER)
	do
		GroundTexture := theTexture
	end

	getChip():G10_CHIP
	do
		Result:=Chip
	end

	getTexture(): INTEGER
	do
		Result := GroundTexture
	end

--constructors
feature{ANY}
	make(theTexture:INTEGER)
	do
		create Chip.make (0)--no chip at the beginning of the game
		GroundTexture:=theTexture
	end

end
