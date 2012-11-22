note
	description: "Summary description for {G10_CRSN_TILE}."
	author: "Eleytherios S. Benisis"
	date: "$Date 14/11"
	revision: "$Revision$"

class
	G10_CRSN_TILE
inherit
	EV_FIXED

create
	make

-- attributes
feature {NONE}
	-- height : INTEGER (inherited ftom EV_FIXED)
	-- width  : INTEGER (inherited ftom EV_FIXED)
	img_src: STRING

-- constructor
feature {ANY} -- creates a new reference to of tile class
	make()
	do

	end

-- mutator methods.
feature {G10_CRSN_TERRAIN_PANEL,G10_CRSN_PLAYER_ACTION_PANEL} -- routine changes the image of the tile.
	set_img_src(image_source : STRING)
	require
			void_parameter : image_source /= void
	do
		ensure
			void_result : img_src /= void
	end

	rotate_img() -- routine rotate the image of the img_src
	require
			void_parameter : img_src /= void
	do
		ensure
			image_rotated : img_src /= old img_src
			void_result : img_src /= void
	end

--accesor methods.
feature {G10_CRSN_TERRAIN_PANEL,G10_CRSN_PLAYER_ACTION_PANEL} -- routine returns the img_src attribute of tile class
	get_img_src() : STRING
	do
		ensure
			is_not_image_source_mutated : img_src = old img_src
	end

-- class invariant
invariant
	consistent_image_source : img_src /= void

end
