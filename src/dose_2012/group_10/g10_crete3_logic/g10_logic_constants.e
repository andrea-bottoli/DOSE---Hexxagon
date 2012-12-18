note
	description: "contains all constants needed for the logic component"
	author: "Angel Kyriako"
	date: "15/12/2012"
	revision: "3.0"

class
	G10_LOGIC_CONSTANTS

feature{G10_LOGIC_TILE, G10_TILE_PART}

	-- tile subterrains
	farm: INTEGER = 1
	road: INTEGER = 2
	land: INTEGER = 3
	crossings: INTEGER = 4
	monastery: INTEGER = 5

	-- integers used from client class to get a subterrain of the server provider class
	center_const: INTEGER = 1
	north_const: INTEGER = 2
	east_const: INTEGER = 3
	west_const: INTEGER = 4
	south_const: INTEGER = 5

	-- integers used for the parts of a subterrain (side or center)
	top_const: INTEGER = 1
	middle_const: INTEGER = 2
	bottom_const: INTEGER = 3

	-- does not exist keyvalue
	does_not_exist: INTEGER = -1

	-- available keyword
	available_tile: STRING = "available"

	-- regarding terrain
	max_tiles_per_row : INTEGER = 40
	max_tiles_per_column : INTEGER = 40
	starting_tile_row_index: INTEGER
	do
		Result := max_tiles_per_row//2
	end
	starting_tile_col_index: INTEGER
	do
		Result := max_tiles_per_column//2
	end

end
