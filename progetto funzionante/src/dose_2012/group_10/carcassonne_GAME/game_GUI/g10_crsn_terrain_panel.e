note
	description: "Summary description for {G10_CRSN_TERRAIN_PANEL}."
	author: "Eleytherios S. Benisis"
	date: "$Date 14/11"
	revision: "$Revision$"

class
	G10_CRSN_TERRAIN_PANEL
inherit
	EV_HORIZONTAL_BOX

create
	make

-- attributes
feature {NONE}
	-- background_color : EV_COLORIZABLE (inherited).
	-- height : INTEGER (inherited)
	-- width : INTEGER (inherited)
	terrain : ARRAY[G10_CRSN_TILE]

-- constructors.
feature {ANY}
	make
	do
	end

-- mutator methods.
feature {G10_CRSN_GAME_MAIN,	TEST_TERRAIN_PANEL}
	update_tile(x : INTEGER  y : INTEGER tile : G10_CRSN_TILE) -- routine updates the x,y tile with the current players tile.
	require
		tile_not_void : tile /= void
		legit_coordinates : x > 0 and y > 0
	do
		ensure
			tile_inserted_x : terrain.at (x) = tile
			tile_inserted_y : terrain.at (y) = tile
	end

	update_background_color(c : EV_COLORIZABLE) -- routine sets the background color of this object to c
	require
		color_not_void : c /= void
		do
			ensure
				color_changed_to_c : background_color = c
		end

-- accesor methods.
feature {G10_CRSN_GAME_MAIN,	TEST_TERRAIN_PANEL}
	get_background_color : EV_COLORIZABLE
	do
		ensure
			color_not_mutated : background_color = old background_color
	end

	get_terrain() : ARRAY[G10_CRSN_TILE] -- routine returns the terrain attribute od this object
	do
		ensure
			terrain_unmutated : terrain = old terrain
	end
--class invariants
invariant
	terrain_void : terrain /= void
end
