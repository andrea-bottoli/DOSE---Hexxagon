note
	description: "contains the functionality of the game's info panel on the lobby window"
	author: "Angel Kyriako"
	date: "10/12/2012"
	revision: "2.0"

class
	G10_LOBBY_NEW_GAME_INFO
inherit
	EV_FIXED
	G10_LOBBY_CONSTANTS
	undefine
		copy , is_equal, default_create
	end

create
	make_new_game_info_panel

-- attributes
feature {NONE}
	empty_area: EV_FIXED
	info_area: EV_FIXED
	title_input: EV_TEXT_FIELD
	player_num_input: EV_TEXT_FIELD
	start_button: EV_FIXED


feature {ANY}-- constructor

	make_new_game_info_panel(lobby : G10_LOBBY_MAIN)
	require
		lobby_not_null : lobby /= void
	do
		-- create the panel
		default_create
		-- and add it to the background of lobby
		lobby.get_background.extend_with_position_and_size (current, new_game_info_panel_start_width, new_game_info_panel_start_height,
																	 new_game_info_panel_width, new_game_info_panel_height)
		-- init the info panel
		init_new_game_info_panel(lobby)
		-- init an empty panel
		init_empty_panel
		-- starting with empty panel
		paint_empty_panel(lobby)
	end

feature {NONE}-- mutator methods.

	init_new_game_info_panel(lobby: G10_LOBBY_MAIN)
	do
		-- create the two text bars
		create title_input
		title_input.align_text_center

		create player_num_input
		player_num_input.align_text_center

		--create the start button
		create start_button
		set_simple_start_button
		start_button.pointer_button_release_actions.extend (agent start_game(?, ?, ?, ?, ?, ?, ?, ?, lobby))
		start_button.pointer_enter_actions.extend (agent set_highlighted_start_button)
		start_button.pointer_leave_actions.extend (agent set_simple_start_button)

		-- create the game's info panel
		create info_area
		--set size
		info_area.set_minimum_size (new_game_info_panel_width, new_game_info_panel_height)
		--create the pixmap for title and players' number
		info_area.set_background_pixmap (pix_new_game_info_background)
		--add title text field to panel
		info_area.extend_with_position_and_size (title_input, title_bar_start_width, title_bar_start_height,
													title_bar_width, title_bar_height)
		--add player num text field to panel
		info_area.extend_with_position_and_size (player_num_input, player_num_bar_start_width, player_num_bar_start_height,
														 player_num_bar_width, player_num_bar_height)
		--add the start button
		info_area.extend_with_position_and_size (start_button, start_button_start_width, start_button_start_height,
													start_button_width, start_button_height)

	end

	init_empty_panel
	do
		create empty_area
		empty_area.set_minimum_size (new_game_info_panel_width, new_game_info_panel_height)
		empty_area.set_background_pixmap (pix_empty_background)
	end

	feature {NONE}-- button agents

	start_game(a_a, a_b, a_c: INTEGER_32; a_d, a_e, a_f: REAL_64; a_g, a_h: INTEGER_32 lobby : G10_LOBBY_MAIN)
	require
		lobby_not_null: lobby /= void
	do
		if (lobby.get_game_window = void) then
			lobby.launch_carcassonne_game_window
			paint_empty_panel(lobby)
		end
	ensure
		game_ui_not_null: lobby.get_player.get_crsn_game_ui /= void
	end

	set_simple_start_button
	do
		start_button.set_background_pixmap (pix_start_button)
	end

	set_highlighted_start_button
	do
		start_button.set_background_pixmap (pix_highlighted_start_button)
	end

feature {G10_LOBBY_ALL_BUTTONS}

	paint_new_game_panel_info(lobby : G10_LOBBY_MAIN)
	require
		panel_not_void: current /= void
	do
		if ( not identifier_name.is_equal("info_area") ) then
			set_identifier_name ("info_area")
			wipe_out
			set_extend (info_area)
			refresh_now
		end
	end

	paint_empty_panel(lobby : G10_LOBBY_MAIN)
	require
		panel_not_void: current /= void
	do
		if ( not identifier_name.is_equal("empty_area") ) then
			set_identifier_name ("empty_area")
			wipe_out
			set_extend (empty_area)
			refresh_now
		end
	end

feature {ANY}-- accesor methods.

	get_title_input: EV_TEXT_FIELD
	do
		Result := title_input
	end

	get_player_num_input: EV_TEXT_FIELD
	do
		Result := player_num_input
	end

	get_start_button: EV_FIXED
	do
		Result := start_button
	end

end
