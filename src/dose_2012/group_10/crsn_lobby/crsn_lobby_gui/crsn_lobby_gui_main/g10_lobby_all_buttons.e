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

		create practice_button
		set_simple_button(practice_button)
		practice_button.pointer_button_release_actions.extend (agent practice(?, ?, ?, ?, ?, ?, ?, ?, lobby))
		practice_button.pointer_enter_actions.extend (agent set_highlighted_button(practice_button))
		practice_button.pointer_leave_actions.extend (agent set_simple_button(practice_button))

		create return_button
		set_simple_button(return_button)
		return_button.pointer_button_release_actions.extend (agent return_to_main(?, ?, ?, ?, ?, ?, ?, ?, lobby))
		return_button.pointer_enter_actions.extend (agent set_highlighted_button(return_button))
		return_button.pointer_leave_actions.extend (agent set_simple_button(return_button))

		lobby.get_background.extend_with_position_and_size (create_button, Buttons_Start_width, Create_start_height, Button_width, Button_height)
		lobby.get_background.extend_with_position_and_size (join_button, Buttons_Start_width, Join_start_height, Button_width, Button_height)
		lobby.get_background.extend_with_position_and_size (practice_button, Buttons_Start_width, Practice_start_height, Button_width, Button_height)
		lobby.get_background.extend_with_position_and_size (return_button, Return_Start_width, Return_start_height, Button_height, Button_width)

	ensure
		Lobby_Buttons_not_null: Current /= void
	end
	----------------------------------

feature {NONE} -- Button actions

	create_a_game(a_a, a_b, a_c: INTEGER_32; a_d, a_e, a_f: REAL_64; a_g, a_h: INTEGER_32 lobby : G10_LOBBY_MAIN)
	require
		lobby_not_null: lobby /= void
	do
		lobby.get_new_game_info.paint_new_game_panel_info(lobby)
	ensure
		--panel_updated: lobby.get_new_game_info /= old lobby.get_new_game_info
	end
	----------------------------------
	join_a_game(a_a, a_b, a_c: INTEGER_32; a_d, a_e, a_f: REAL_64; a_g, a_h: INTEGER_32 lobby : G10_LOBBY_MAIN)
	require
		lobby_not_null: lobby /= void
		game_info_panel_not_null: lobby.get_new_game_info /= void
	do
		lobby.get_new_game_info.paint_empty_panel(lobby)
		if (lobby.get_game_window = void) then
			lobby.launch_carcassonne_game_window
		end
	ensure
		game_ui_not_null: lobby.get_player.get_crsn_game_ui /= void
	end
	----------------------------------
	practice(a_a, a_b, a_c: INTEGER_32; a_d, a_e, a_f: REAL_64; a_g, a_h: INTEGER_32 lobby : G10_LOBBY_MAIN)
	require
		lobby_not_null: lobby /= void
		game_info_panel_not_null: lobby.get_new_game_info /= void
	do
		lobby.get_new_game_info.paint_empty_panel(lobby)
		if (lobby.get_game_window = void) then
			lobby.launch_carcassonne_game_window
		end
	ensure
		game_ui_not_null: lobby.get_player.get_crsn_game_ui /= void
	end
	----------------------------------
	return_to_main(a_a, a_b, a_c: INTEGER_32; a_d, a_e, a_f: REAL_64; a_g, a_h: INTEGER_32 lobby : G10_LOBBY_MAIN)
	require
		lobby_not_null: lobby /= void
	do
		lobby.get_new_game_info.paint_empty_panel(lobby)
		lobby.quit_lobby
	end
	----------------------------------

	set_simple_button (an_area: EV_FIXED)
	require	-- the pointer is entering the area used as a button
		area_not_null: an_area /= void
	do
		if an_area = create_button then
			create_button.set_background_pixmap (pix_create_button)
		elseif an_area = join_button then
			join_button.set_background_pixmap (pix_join_button)
		elseif an_area = practice_button then
			practice_button.set_background_pixmap (pix_practice_button)
		elseif an_area = return_button then
			return_button.set_background_pixmap (pix_return_button)
		else
			print("Problem in pointer_enter_area -> lobby_all_buttons %N")
		end

	end

	set_highlighted_button (an_area: EV_FIXED)
	require	-- the pointer is leaving the area used as a button
		area_not_null: an_area /= void
	do
		if an_area = create_button then
			create_button.set_background_pixmap (pix_create_button)
		elseif an_area = join_button then
			join_button.set_background_pixmap (pix_join_button)
		elseif an_area = practice_button then
			practice_button.set_background_pixmap (pix_highlighted_practice_button)
		elseif an_area = return_button then
			return_button.set_background_pixmap (pix_return_button)
		else
			print("Problem in pointer_leave_area -> lobby_all_buttons %N")
		end
	end

feature {ANY} --accessors

	get_create_button: EV_FIXED
	do
		Result := create_button
	end
	----------------------------------
	get_join_button: EV_FIXED
	do
		Result := join_button
	end
	----------------------------------
	get_practice_button: EV_FIXED
	do
		Result := practice_button
	end
	---------------------------------
	get_return_button: EV_FIXED
	do
		Result := return_button
	end
	----------------------------------	
end
