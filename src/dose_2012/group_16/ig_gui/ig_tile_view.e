note
	description: "A view object that represents an tile for the Ingenious game. A tile is made up of two hexes."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	IG_TILE_VIEW

inherit
	EV_MODEL_MOVE_HANDLE

	IG_CONSTANTS
		undefine
			default_create,
			copy
		end

create
	make_with_tile

feature {NONE} -- Initialization

	make_with_tile (a_tile: IG_TILE)
		require
			tile_not_void: a_tile /= Void
		local
			l_hex: EV_MODEL_PICTURE
		do
			default_create
				-- Set the default direction of the tile
			direction := 1

				-- Add two dummy hexes
			create l_hex
			extend (l_hex)
			create l_hex
			extend (l_hex)

				-- Set the tile and update the view
			set_tile (a_tile)

				-- Capture mouse events for the whole tile
			enable_events_sended_to_group
			enable_mouse_events
		end

feature {IG_TILES_VIEW} -- Status Update

	set_tile_number (a_number: INTEGER)
		require
			number_in_range: a_number >= 1 and a_number <= 6
		do
			tile_number := a_number
		ensure
			number_set: tile_number = a_number
		end

	tile_number: INTEGER

	reset_position
			-- Redraw the tile at the original position on the tiles view.
		do
			set_point_position_relative ((tile_number - 1) * 80 + 15, 0)
		end

feature -- Status Update

	set_tile (a_tile: IG_TILE)
		require
			tile_not_void: a_tile /= Void
		do
			tile := a_tile
			direction := direction_bottom

				-- Update the first hex
			check attached {EV_MODEL_PICTURE} i_th (1) as l_hex then
				l_hex.set_pixmap (hex_pixmap_with_color (a_tile.first_hex.color))
				l_hex.set_point_position_relative (0, 0)
			end

				-- Update the second hex
			check attached {EV_MODEL_PICTURE} i_th (2) as l_hex then
				l_hex.set_pixmap (hex_pixmap_with_color (a_tile.second_hex.color))
				l_hex.set_point_position_relative (0, l_hex.pixmap.height - 1)
			end
		ensure
			tile_set: tile = a_tile
		end

	rotate_hexes
		do
			direction := direction \\ 6 + 1
			inspect direction
			when direction_bottom then
				set_second_hex_position (0, 27)
			when direction_bottom_left then
				set_second_hex_position (-24, 14)
			when direction_top_left then
				set_second_hex_position (-24, -14)
			when direction_top then
				set_second_hex_position (0, -27)
			when direction_top_right then
				set_second_hex_position (24, -14)
			when direction_bottom_right then
				set_second_hex_position (24, 14)
			end
		end

feature -- Access

	tile: IG_TILE

	is_selected: BOOLEAN
		do
			Result := has_capture
		ensure
			Result = has_capture
		end

	direction: INTEGER
			-- The direction of the tile. The first hex is fixed, while the second rotates.

feature {NONE} -- Implementation

	set_second_hex_position (a_x, a_y: INTEGER)
			-- Set the position of the given hex to a_x, a_y.
		local
			l_x, l_y: INTEGER
		do
			check attached {EV_MODEL_PICTURE} i_th (1) as l_first_hex then
				l_x := l_first_hex.point_x
				l_y := l_first_hex.point_y
			end
			check attached {EV_MODEL_PICTURE} i_th (2) as l_picture then
				l_picture.set_point_position (l_x + a_x, l_y + a_y)
			end
		end

feature {NONE} -- Mouse Events

	enable_mouse_events
		do
			pointer_motion_actions.extend (agent on_pointer_motion)
			pointer_button_press_actions.extend (agent on_pointer_button_press)
			pointer_button_release_actions.extend (agent on_pointer_button_release)
		end

	on_pointer_motion (ax, ay: INTEGER; x_tilt, y_tilt, pressure: DOUBLE; a_screen_x, a_screen_y: INTEGER)
		do
			if has_capture then
				set_point_position (ax - 16, ay + center_y - 14)
			end
		end

	on_pointer_button_press (ax, ay, button: INTEGER; x_tilt, y_tilt, pressure: DOUBLE; a_screen_x, a_screen_y: INTEGER)
		do
			enable_capture
		end

	on_pointer_button_release (ax, ay, button: INTEGER; x_tilt, y_tilt, pressure: DOUBLE; a_screen_x, a_screen_y: INTEGER)
		do
				-- Reset the position if it was just dragged around
			reset_position
			if has_capture then
				disable_capture
			end
		end

invariant
	tile_has_two_hexes: count = 2

end
