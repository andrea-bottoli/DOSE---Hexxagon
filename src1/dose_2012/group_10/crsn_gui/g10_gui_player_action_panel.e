note
	description: "Summary description for {G10_GUI_PLAYER_ACTION_PANEL}."
	author: "Eleytherios S. Benisis"
	date: "$Date 9/12"
	revision: "player action panel is a group class containing the rotate button and the current players tile."

class
	G10_GUI_PLAYER_ACTION_PANEL
inherit
	EV_FIXED
	G10_GAME_CONSTANTS
	undefine
		copy , is_equal, default_create
	end

create
	make , make_with_id

-- attributes
feature {NONE}
	current_player_tile : G10_GUI_DRAWED_TILE
	rotate_button : G10_GUI_ROTATE_BUTTON

-- constructor methods.
feature {ANY} -- creates a new PLAYER_ACTION_PANEL object.
	make(game: G10_GUI_GAME_MAIN) -- routine creates a new reference to a new players action panel with default values
	do
		default_create()
		init_current_player_tile(game)
		init_rotate_button(game)

		update_background(pix_game_player_action_panel)
		set_minimum_height (action_panel_height)
		set_minimum_width (action_panel_width)

		draw_player_action_panel()
	end

	make_with_id(game: G10_GUI_GAME_MAIN  tile_id : INTEGER) -- routine creates a new reference to a player action panel with the drawed tile initialized to tile_id
	do
		default_create()
		init_current_player_tile_id(game , tile_id)
		init_rotate_button(game)

		update_background(pix_game_player_action_panel)
		set_minimum_height (action_panel_height)
		set_minimum_width (action_panel_width)

		draw_player_action_panel()
	end
-- mutator methods.
feature {G10_GUI_GAME_MAIN} -- routine rotates the current_player_tile object of this player_action_panel object.

	init_current_player_tile(game: G10_GUI_GAME_MAIN) -- routine initializes the current players tile with a dfault tile.
	require
		uninitialized_current_players_tile : current_player_tile = void
	do
		 create current_player_tile.make_drawed_tile(game)
		ensure
			initialized_current_players_tile : current_player_tile /= void
	end

	init_current_player_tile_id(game: G10_GUI_GAME_MAIN tile_id : INTEGER) -- routine initializes the current players tile with tile_id.
	require
		uninitialized_current_players_tile : current_player_tile = void
	do
		create current_player_tile.make_drawed_tile_with_id (game , tile_id)
	ensure
		initialized_current_players_tile : current_player_tile /= void
	end

	init_rotate_button(game : G10_GUI_GAME_MAIN) -- routine initializes the rotate button of the player action panel
	require
		uninitialized_rotate_button : rotate_button = void
	do
		create rotate_button.make
		rotate_button.set_minimum_size (rotate_button_width, rotate_button_height)
		rotate_button.pointer_button_press_actions.extend (agent action_performed_rotate_button(game, ?, ?, ?, ?, ?, ?, ?, ?))
		ensure
			initialized_rotate_button : rotate_button /= void
	end

	rotate_current_player_tile() -- routine performes the rotation of the current players tile
	require
		img_src_not_void : current_player_tile.get_img_src() /= void
	do
		current_player_tile.rotate_tile
		ensure
			rotated_img_not_void : current_player_tile.get_img_src() /= void
	end

	update_tile(src : KL_PATHNAME) -- routine changes the image of the current_player_tile.
	require
		source_image_not_void : src /= void
	do
		current_player_tile.set_img_src (src)
		ensure
			tile_changed : current_player_tile.get_img_src = src
	end

	update_background(a_pixmap : EV_PIXMAP) -- routine sets the background pixmap of this object to arg pixmap
	require
		arg_pixmap_not_void : a_pixmap /= void
	do
		set_background_pixmap (a_pixmap)
		ensure
			background_changed_to_arg_pixmap : background_pixmap.is_equal (a_pixmap)
	end

	draw_player_action_panel() -- routine draws the current players tile and the rotate button in the players action panel.
	require
		valid_current_player_tile : current_player_tile /= void
		valid_rotate_button : rotate_button /= void
	do
		-- rotate button width : 150 height : 80
		current.extend_with_position_and_size (rotate_button, rotate_button_start_width, rotate_button_start_height, rotate_button_width, rotate_button_height)
		-- current player tile width : 100 height : 100
		current.extend_with_position_and_size (current_player_tile, drawed_tile_start_width, drawed_tile_start_height, drawed_tile_width, drawed_tile_height)

		ensure
			valid_current_player_tile : current_player_tile /= void
			valid_rotate_button : rotate_button /= void
			successfull_drawned : current.has (rotate_button) and current.has (current_player_tile)
	end

	action_performed_rotate_button(game: G10_GUI_GAME_MAIN a_a, a_b, a_c: INTEGER_32; a_d, a_e, a_f: REAL_64; a_g, a_h: INTEGER_32) -- routine changes the source and draws the new pixmap of the current players tile.
	do
		game.notify(rotate_event)
		-- rotate_current_player_tile()
	end

-- accesor methods.
feature {G10_GUI_GAME_MAIN} -- routine returns the color of the player_action_panel object
	get_backgroung_color() : EV_COLOR
	do
		result := background_color
		ensure
			color_not_void : background_color /= void
	end

	get_rotate_button() : G10_GUI_ROTATE_BUTTON -- routine returns the rotate button.
	do
		result := rotate_button
	ensure
		rotate_button_not_mutated : rotate_button = old rotate_button
	end

	get_current_player_tile () : G10_GUI_TILE -- routine returns the current players tile
	do
		result := current_player_tile
		ensure
			attr_not_mutated : current_player_tile = old current_player_tile
	end

	get_width() : INTEGER -- routine returns the width of this object
	do
		result := width
		ensure
			attr_not_mutated : width = old width
	end

	get_height() : INTEGER -- routine returns the height of this object
	do
		result := height
		ensure
			attr_not_mutated : height = old height
	end

--class invariants
invariant
	rotate_button_not_void : rotate_button /= void
	current_player_tile_not_void : current_player_tile /= void
end
