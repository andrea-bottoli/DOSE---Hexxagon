note
	description: "graphic inteface of the lobby's window new game info"
	author: "Angel Kyriako"
	date: "14/12/2012"
	revision: "3.0"

class
	G10_LOBBY_NEW_GAME_INFO

inherit
	EV_FIXED
	G10_LOBBY_CONSTANTS
	undefine
		copy , is_equal, default_create
	end

create
	make

-- attributes
feature {NONE}
	chat_new_message: EV_TEXT_FIELD -- the text field that the user is going to type
	chat_log: EV_LIST -- the text area where the log is displayed

feature {ANY}-- constructor

	make(lobby: G10_LOBBY_MAIN)
	do
		-- create the panel
		default_create
		set_minimum_size (south_panel_width, south_panel_height)
		set_background_pixmap (pix_new_game_info_background)

		-- init subcomponents and add them to panel
		init_game_title_input_bar
		init_game_max_player_num_input_bar
		init_start_game_button(lobby)
	end

feature {NONE} -- attributes
	title_input: EV_TEXT_FIELD
	player_num_input: EV_TEXT_FIELD
	start_button: EV_FIXED

feature {NONE} -- mutators

	init_game_title_input_bar
	do
		-- create the two text bars
		create title_input
		title_input.align_text_center
		title_input.set_text ("")

		--add title text field to panel
		extend_with_position_and_size (title_input, title_bar_start_width, title_bar_start_height,
													title_bar_width, title_bar_height)
	end

	init_game_max_player_num_input_bar
	do
		create player_num_input
		player_num_input.align_text_center
		player_num_input.set_text ("")

		--add player num text field to panel
		extend_with_position_and_size (player_num_input, player_num_bar_start_width, player_num_bar_start_height,
														 player_num_bar_width, player_num_bar_height)
	end

	init_start_game_button(lobby: G10_LOBBY_MAIN)
	do
		--create the start button
		create start_button
		set_simple_start_button
		start_button.pointer_button_release_actions.extend (agent start_game(?, ?, ?, ?, ?, ?, ?, ?, lobby))
		start_button.pointer_enter_actions.extend (agent set_highlighted_start_button)
		start_button.pointer_leave_actions.extend (agent set_simple_start_button)

		--add the start button to panel
		extend_with_position_and_size (start_button, start_button_start_width, start_button_start_height,
													start_button_width, start_button_height)
	end

feature {NONE}-- button agents

	start_game(a_a, a_b, a_c: INTEGER_32; a_d, a_e, a_f: REAL_64; a_g, a_h: INTEGER_32 lobby : G10_LOBBY_MAIN)
	require
		lobby_not_null: lobby /= void
	local
		fault_dialog: EV_CONFIRMATION_DIALOG
	do
		if ( input_is_valid(lobby) ) then
				lobby.launch_as_host(title_input.text, player_num_input.text)
		else
			create fault_dialog.make_with_text ("Please insert a title and a valid maximum number players(2-6) !")
			fault_dialog.show_modal_to_window (lobby)
		end
	end

	set_simple_start_button
	do
		start_button.set_background_pixmap (pix_start_button)
	end

	set_highlighted_start_button
	do
		start_button.set_background_pixmap (pix_highlighted_start_button)
	end

feature {NONE} -- observer

	input_is_valid(lobby : G10_LOBBY_MAIN): BOOLEAN
	do
		if ((lobby.get_game_window = void) and
				(not title_input.text.is_empty) and (not player_num_input.text.is_empty) and
				(player_num_input.text.is_integer) and
				(player_num_input.text.to_integer >= 2) and (player_num_input.text.to_integer <= 6) )then
			Result := true
		else
			Result := false
		end
	end

feature {G10_LOBBY_SOUTH_PANEL} -- accessors

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
