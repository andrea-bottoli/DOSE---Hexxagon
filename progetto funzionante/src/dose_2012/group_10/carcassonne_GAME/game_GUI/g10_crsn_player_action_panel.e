note
	description: "Summary description for {G10_CRSN_PLAYER_ACTION_PANEL}."
	author: "Eleytherios S. Benisis"
	date: "$Date 14/11"
	revision: "$Revision$"

class
	G10_CRSN_PLAYER_ACTION_PANEL
inherit
	EV_HORIZONTAL_BOX

create
	make

-- attributes
feature {NONE}
	current_player_tile : G10_CRSN_TILE
	-- height : INTEGER (inherited from ev_horizontal_box)
	-- width : INTEGER  (inherited from ev_horizontal_box)
	-- background_color : EV_COLORIZABLE (inherited from ev_horizontal_box)
	rotate_button : G10_CRSN_ROTATE_BUTTON

-- constructor methods.
feature {ANY} -- creates a new PLAYER_ACTION_PANEL object.
	make()
	do

	end

-- accesor methods.
feature {G10_CRSN_GAME_MAIN} -- routine returns the color of the player_action_panel object
	get_backgroung_color() : EV_COLORIZABLE
	do
		ensure
			color_not_void : background_color /= void
	end

	get_current_player_tile () : G10_CRSN_TILE
	do
		ensure
			attr_not_mutated : current_player_tile = old current_player_tile
	end
-- mutator methods.
feature {G10_CRSN_GAME_MAIN} -- routine rotates the current_player_tile object of this player_action_panel object.
	rotate()
	require
		img_src_not_void : current_player_tile.get_img_src() /= void
	do
		ensure
			rotated_img_not_void : current_player_tile.get_img_src() /= void
	end

-- mutator method. routine changes the color of this object. (iparxei kai ayti sto ev_colorizable)
--	set_background_color(color : EV_COLORIZABLE)

-- routine changes the image of the current_player_tile.
	update_tile(src : STRING)
	require
		source_image_not_void : src /= void
	do
		ensure
			tile_changed : current_player_tile.get_img_src = src

	end

	--class invariants
	invariant
		rotate_button_not_void : rotate_button /= void
		current_player_tile_not_void : current_player_tile /= void
end
