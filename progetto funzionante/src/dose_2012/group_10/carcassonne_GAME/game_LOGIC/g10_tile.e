note
	description: "Summary description for {TILE_PART}."
	author: "Anastasia"
	date: "$Date$"
	revision: "$Revision$"

class
	G10_TILE

create
	make

feature

	--IsTowerInCenter: BOOLEAN

	PlayerID: INTEGER

	--Rotation: ROTATION
	--9 numbers to describe groung of tile in 4 corners, 4 edges and center

	Bottom: G10_TILE_PART
	Top:G10_TILE_PART
	Right:G10_TILE_PART
	Left:G10_TILE_PART
	LeftBottom:G10_TILE_PART
	RightBottom:G10_TILE_PART
	LeftTop:G10_TILE_PART
	RightTop:G10_TILE_PART
	Middle:G10_TILE_PART
feature
	FindPlacesForFollewr():ARRAYED_LIST[G10_TILE_PART]
	do  end
	Rotate():BOOLEAN
	do end

-- constructors.
feature
	make
	do
	end
	
end --TILE
