note
	description: "contains the functionality of every button placed on the lobby window"
	author: "Angel Kyriako"
	date: "27/11/2012"
	revision: "1.0"

class
	G10_LOBBY_ALL_BUTTONS
inherit
	G10_LOBBY_CONSTANTS

	----------------------------------
create
	make_buttons
	----------------------------------

feature{NONE} --attributes
	create_button: EV_FIXED
	join_button: EV_FIXED
	practice_button: EV_FIXED
	return_button: EV_FIXED
	----------------------------------

feature {ANY} -- constructor

	make_buttons(lobby : G10_LOBBY_MAIN)
	require
		lobby_window_not_null: lobby /= void
	do
		create create_button
		set_simple_button(create_button)
		create_button.pointer_button_release_actions.extend (agent create_a_game(?, ?, ?, ?, ?, ?, ?, ?, lobby))
		create_button.pointer_enter_actions.extend (agent set_highlighted_button(create_button))
		create_button.pointer_leave_actions.extend (agent set_simple_button(create_button))

		create join_button
		set_simple_button(join_button)
		join_button.pointer_button_release_actions.extend (agent join_a_game(?, ?, ?, ?, ?, ?, ?, ?, lobby))
		join_button.pointer_enter_actions.extend (agent set_highlighted_button(join_button))
		join_button.pointer_leave_actions.extend (agent set_simple_button(join_button))

		create return_button
		set_simple_button(return_button)
		return_button.pointer_button_release_actions.extend (agent return_to_main(?, ?, ?, ?, ?, ?, ?, ?, lobby))
		return_button.pointer_enter_actions.extend (agent set_highlighted_button(return_button))
		return_button.pointer_leave_actions.extend (agent set_simple_button(return_button))

		lobby.get_background.extend_with_position_and_size (create_button, Buttons_Start_width, Create_start_height, Button_width, Button_height)
		lobby.get_background.extend_with_position_and_size (join_button, Buttons_Start_width, Join_start_height, Button_width, Button_height)
		lobby.get_background.extend_with_position_and_size (return_button, Buttons_Start_width, Return_start_height, Button_width, Button_height)

	ensure
		Lobby_Buttons_not_null: Current /= void
	end
	----------------------------------

feature {NONE} -- Button actions

	create_a_game(a_a, a_b, a_c: INTEGER_32; a_d, a_e, a_f: REAL_64; a_g, a_h: INTEGER_32 lobby : G10_LOBBY_MAIN)
	require
		lobby_not_null: lobby /= void
	do
		lobby.get_south_panel.paint_new_game_info_panel(lobby)
	end
	----------------------------------
	join_a_game(a_a, a_b, a_c: INTEGER_32; a_d, a_e, a_f: REAL_64; a_g, a_h: INTEGER_32 lobby : G10_LOBBY_MAIN)
	require
		lobby_not_null: lobby /= void
		game_info_panel_not_null: lobby.get_south_panel /= void
	local
		game_selected: STRING
	do
		game_selected := get_last_selected_game_id(lobby)

		lobby.get_south_panel.paint_global_chat_panel(lobby)
		if (lobby.get_game_window = void and game_selected/= void and game_selected.is_integer) then
			lobby.launch_as_joined_player(game_selected)
		end
	end

	----------------------------------
	return_to_main(a_a, a_b, a_c: INTEGER_32; a_d, a_e, a_f: REAL_64; a_g, a_h: INTEGER_32 lobby : G10_LOBBY_MAIN)
	require
		lobby_not_null: lobby /= void
	do
		lobby.get_south_panel.paint_global_chat_panel(lobby)
		lobby.quit_lobby
	end
	----------------------------------

	set_simple_button (an_area: EV_FIXED)
	require
		area_not_null: an_area /= void
	do
		if an_area = create_button then
			create_button.set_background_pixmap (pix_create_button)
		elseif an_area = join_button then
			join_button.set_background_pixmap (pix_join_button)
		elseif an_area = return_button then
			return_button.set_background_pixmap (pix_return_button)
		else
			print("Problem in pointer_enter_area -> lobby_all_buttons %N")
		end

	end

	set_highlighted_button (an_area: EV_FIXED)
	require
		area_not_null: an_area /= void
	do
		if an_area = create_button then
			create_button.set_background_pixmap (pix_highlighted_create_button)
		elseif an_area = join_button then
			join_button.set_background_pixmap (pix_highlighted_join_button)
		elseif an_area = return_button then
			return_button.set_background_pixmap (pix_highlighted_return_button)
		else
			print("Problem in pointer_leave_area -> lobby_all_buttons %N")
		end
	end

feature {NONE} --accessors

	get_last_selected_game_id(lobby : G10_LOBBY_MAIN) : STRING
	local
	fault_dialog: EV_CONFIRMATION_DIALOG
	do
		if lobby.get_all_hosted_games.get_last_selected_game /= void then
			Result := ""
			Result.append ( lobby.get_all_hosted_games.get_last_selected_game.text.split (' ').at(2)) -- the second word of a hosted game's item text is the id
			print("ID of game selected: "+Result+"%N")
		else
			create fault_dialog.make_with_text ("Please select the hosted game you want to join !!!")
			fault_dialog.show_modal_to_window (lobby)
			Result := void
		end
	end

feature {G10_LOBBY_MAIN}

	get_create_button: EV_FIXED
	do
		Result := create_button
	end
	----------------------------------
	get_join_button: EV_FIXED
	do
		Result := join_button
	end
	---------------------------------
	get_return_button: EV_FIXED
	do
		Result := return_button
	end
	----------------------------------	
end
