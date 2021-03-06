note
	description: "Summary description for {G20_MOVEMENT}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	G20_MOVEMENT
	create
	makeByTileAndCoords--(argTile:G20_TILE; argRow1, argRow2, argColumn1, argColumn2: INTEGER)

	feature{NONE}
	tile: G20_TILE;
	row1: INTEGER;
	column1: INTEGER;
	row2: INTEGER;
	column2: INTEGER;

	feature{ANY}
	makeByTileAndCoords(argTile:G20_TILE; argRow1, argRow2, argColumn1, argColumn2: INTEGER)
	do
		tile := argTile;
		row1 := argRow1;
  		row2 := argRow2;
		column1 := argColumn1;
		column2 := argColumn2;
	end --make

	GetTile: G20_TILE
		do
			result:=tile
		end

	GetFirstRow: INTEGER
		do
			result:=row1
		end

	GetFirstColumn: INTEGER
		do
			result:=column1
		end

	GetSecondRow: INTEGER
		do
			result:=row2
		end

	GetSecondColumn: INTEGER
		do
			result:=column2
		end
end
