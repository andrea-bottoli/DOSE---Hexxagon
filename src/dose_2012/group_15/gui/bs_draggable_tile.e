note
	description: "Summary description for {BS_DRAGGABLE_TILE}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	BS_DRAGGABLE_TILE

inherit
	EV_MODEL_MOVE_HANDLE

create
	make_fixed,
	make_draggable

feature -- Initialization

	make_fixed(a_tile : BS_TILE; a_x, a_y : INTEGER)
		local
			l_x : INTEGER
			l_y : INTEGER
			l_width : INTEGER
			l_height : INTEGER
			l_tile_atom : BS_TILE_ATOM
		do
			default_create

			tile := a_tile

			update_atoms

			set_position_and_set_fixed (a_x, a_y)
		end

	make_draggable(a_tile : BS_TILE; a_initial_x, a_initial_y : INTEGER; a_drop_action : PROCEDURE [ ANY, TUPLE [INTEGER_32, INTEGER_32, BS_DRAGGABLE_TILE]]; a_tile_action : PROCEDURE [ ANY, TUPLE [BS_TILE, INTEGER]])
		local
			l_x : INTEGER
			l_y : INTEGER
			l_width : INTEGER
			l_height : INTEGER
			l_tile_atom : BS_TILE_ATOM
		do
			make_fixed(a_tile, a_initial_x, a_initial_y)

			initial_x := a_initial_x
			initial_y := a_initial_y

			pointer_button_press_actions.extend (agent mouse_button_pressed)
		    pointer_motion_actions.extend (agent mouse_moved)
			pointer_button_release_actions.extend (agent mouse_button_released)
			--pointer_button_release_actions.extend (a_drop_action)
			enable_events_sended_to_group

			drop_action := a_drop_action
			tile_action := a_tile_action

			draggable := True
			enable_sensitive
		end

feature {BS_GAME_WINDOW} -- Interface for Game Window

	reset_position_to_initial
		do
			set_point_position(initial_x, initial_y)
		end

	draggable : BOOLEAN

	set_draggable
		do
			enable_sensitive
			draggable := True
		end

	set_position_and_set_fixed(a_x, a_y : INTEGER)
		do
			draggable := False
			disable_sensitive
			set_point_position (a_x, a_y)
		end

	get_tile : BS_TILE
		do
			Result := tile
		end

feature {NONE} -- Drag N Drop

	mouse_button_pressed (a_x, a_y, a_button: INTEGER; a_x_tilt, a_y_tilt, a_pressure: DOUBLE; a_screen_x, a_screen_y: INTEGER)
		do
			if draggable And is_moving then
				if a_button = 1 then
					enable_capture
					has_moved := False
				elseif a_button = 3 And not has_capture then
					if last_flip_horizontal then
						tile_action.call ([tile, 3])
					else
						tile_action.call ([tile, 2])
					end
					last_flip_horizontal := Not last_flip_horizontal
				end
			end
		end

	mouse_moved (a_x, a_y: INTEGER; a_x_tilt, a_y_tilt, a_pressure: DOUBLE; a_screen_x, a_screen_y: INTEGER)
		local
			l_x : INTEGER
			l_y : INTEGER
		do
			if has_capture then
				set_point_position (a_x, a_y)
				has_moved := True
			end
		end

	mouse_button_released (a_x, a_y, a_button: INTEGER; a_x_tilt, a_y_tilt, a_pressure: DOUBLE; a_screen_x, a_screen_y: INTEGER)
		do
			if a_button = 1 then
				if has_capture then
					disable_capture
				end

				if draggable then
					if has_moved then
						drop_action.call ([a_x, a_y, Current])
						has_moved := False
					else
						tile_action.call([tile, 1])
					end
				end
			end
		end

feature {NONE} -- Implementation

	update_atoms
		local
			l_x : INTEGER
			l_y : INTEGER
			l_width : INTEGER
			l_height : INTEGER
			l_tile_atom : BS_TILE_ATOM
		do
			wipe_out

			l_width := tile.get_state.width
			l_height := tile.get_state.height
			create con_atoms.make_filled(Void, l_height, l_width)
			from
				l_y := 1
			until
				l_y > l_height
			loop
				from
					l_x := 1
				until
					l_x > l_width
				loop
					if tile.get_state.item (l_y, l_x) = 1 then
						create l_tile_atom.make (tile.get_color)
						extend (l_tile_atom.get_model_picture)
						l_tile_atom.set_pos (16*(l_x-1), 16*(l_y-1))
						con_atoms.put (l_tile_atom, l_y, l_x)
					end
					l_x := l_x + 1
				end
				l_y := l_y + 1
			end
		end

	tile : BS_TILE
	con_atoms : ARRAY2[BS_TILE_ATOM]
	initial_x : INTEGER
	initial_y : INTEGER
	drop_action : PROCEDURE [ ANY, TUPLE [INTEGER_32, INTEGER_32, BS_DRAGGABLE_TILE]]
	tile_action: PROCEDURE [ ANY, TUPLE [BS_TILE, INTEGER]]

	has_moved: BOOLEAN
	last_flip_horizontal: BOOLEAN

end
