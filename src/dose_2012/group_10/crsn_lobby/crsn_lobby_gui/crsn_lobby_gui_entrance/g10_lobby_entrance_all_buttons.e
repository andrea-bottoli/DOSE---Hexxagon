note
	description: "class includes the functionality regarding every button"
	author: "Angel Kyriako"
	date: "16/12/2012"
	revision: "3.0"

class
	G10_LOBBY_ENTRANCE_ALL_BUTTONS
inherit
	G10_LOBBY_ENTRANCE_CONSTANTS

	----------------------------------
create
	make_buttons
	----------------------------------

feature{NONE} --attributes
	username_button: EV_FIXED
	username_bar: EV_TEXT_FIELD
	single_button: EV_FIXED
	multi_button: EV_FIXED
	lan_button: EV_FIXED
	online_button: EV_FIXED
	next_button: EV_FIXED
	back_button: EV_FIXED
	----------------------------------

feature {ANY} -- constructor

	make_buttons(lobby_entrance : G10_LOBBY_ENTRANCE_SCREEN) -- creates all necessary EV_FIXEDs for the buttons of lobby entrance (username, port, ip, go to lobby)
	require
		lobby_window_not_null: lobby_entrance /= void
	do
		lobby_entrance.get_background.pointer_enter_actions.extend(agent mouse_entered_button(void))
		init_username_button_and_bar(lobby_entrance)
		init_single_player_button(lobby_entrance)
		init_multiplayer_button(lobby_entrance)
		init_lan_game_button(lobby_entrance)
		init_online_game_button(lobby_entrance)
		init_back_button(lobby_entrance)
		init_next_button(lobby_entrance)

	ensure
		Lobby_Buttons_not_null: lobby_entrance /= void
	end
	----------------------------------

feature {NONE} -- initiation methods

	init_username_button_and_bar(lobby_intro : G10_LOBBY_ENTRANCE_SCREEN)
	do
		create username_bar
		username_bar.set_text ("")
		username_bar.align_text_center

		create username_button
		mouse_leave_from_button(username_button, true)
		username_button.pointer_enter_actions.extend (agent mouse_entered_button(username_button))
		username_button.pointer_leave_actions.extend (agent mouse_leave_from_button(username_button, false))

		lobby_intro.get_background.extend_with_position_and_size (username_button, username_start_width, username_start_height, username_width, username_height)
		username_button.extend_with_position_and_size (username_bar, username_bar_start_width, username_bar_start_height, username_bar_width, username_bar_height)
	end

	init_single_player_button(lobby_intro : G10_LOBBY_ENTRANCE_SCREEN)
	do
		create single_button
		mouse_leave_from_button(single_button, true)
		single_button.pointer_button_release_actions.extend (agent single_player_pressed(?, ?, ?, ?, ?, ?, ?, ?, lobby_intro) )
		single_button.pointer_enter_actions.extend (agent mouse_entered_button(single_button))
		single_button.pointer_leave_actions.extend (agent mouse_leave_from_button(single_button, false))

		lobby_intro.get_background.extend_with_position_and_size (single_button, single_start_width, single_start_height, single_width, single_height)
	end

	init_multiplayer_button(lobby_intro : G10_LOBBY_ENTRANCE_SCREEN)
	do
		create multi_button
		mouse_leave_from_button(multi_button, true)
		multi_button.pointer_button_release_actions.extend (agent multiplayer_pressed(?, ?, ?, ?, ?, ?, ?, ?, lobby_intro))
		multi_button.pointer_enter_actions.extend (agent mouse_entered_button(multi_button))
		multi_button.pointer_leave_actions.extend (agent mouse_leave_from_button(multi_button, false))

		lobby_intro.get_background.extend_with_position_and_size (multi_button, mult_lan_start_width, mult_lan_start_height, mult_lan_width, mult_lan_height)
	end

	init_lan_game_button(lobby_intro : G10_LOBBY_ENTRANCE_SCREEN)
	do
		create lan_button
		mouse_leave_from_button(lan_button, true)
		lan_button.pointer_button_release_actions.extend (agent lan_pressed(?, ?, ?, ?, ?, ?, ?, ?, lobby_intro) )
		lan_button.pointer_enter_actions.extend (agent mouse_entered_button(lan_button))
		lan_button.pointer_leave_actions.extend (agent mouse_leave_from_button(lan_button, false))
	end

	init_online_game_button(lobby_intro : G10_LOBBY_ENTRANCE_SCREEN)
	do
		create online_button
		mouse_leave_from_button(online_button, true)
		online_button.pointer_button_release_actions.extend (agent online_pressed(?, ?, ?, ?, ?, ?, ?, ?, lobby_intro))
		online_button.pointer_enter_actions.extend (agent mouse_entered_button(online_button))
		online_button.pointer_leave_actions.extend (agent mouse_leave_from_button(online_button, false))
	end

	init_back_button(lobby_intro : G10_LOBBY_ENTRANCE_SCREEN)
	do
		create back_button
		mouse_leave_from_button(back_button, true)
		back_button.pointer_button_release_actions.extend (agent pressed_go_to_main(?, ?, ?, ?, ?, ?, ?, ?, lobby_intro))
		back_button.pointer_enter_actions.extend (agent mouse_entered_button(back_button))
		back_button.pointer_leave_actions.extend (agent mouse_leave_from_button(back_button, false))

		lobby_intro.get_background.extend_with_position_and_size (back_button, back_start_width, back_start_height, back_width, back_height)
	end

	init_next_button(lobby_intro : G10_LOBBY_ENTRANCE_SCREEN)
	do

		create next_button
		mouse_leave_from_button(next_button, true)
		next_button.pointer_button_release_actions.extend (agent pressed_next_button(?, ?, ?, ?, ?, ?, ?, ?, lobby_intro))
		next_button.pointer_enter_actions.extend (agent mouse_entered_button(next_button))
		next_button.pointer_leave_actions.extend (agent mouse_leave_from_button(next_button, false))

		lobby_intro.get_background.extend_with_position_and_size (next_button, next_start_width, next_start_height, next_width, next_height)
	end

feature {NONE} -- Button actions

	single_player_pressed(a_a, a_b, a_c: INTEGER_32; a_d, a_e, a_f: REAL_64; a_g, a_h: INTEGER_32 lobby_intro: G10_LOBBY_ENTRANCE_SCREEN) -- action when single player is pressed
	require
		lobby_not_null: lobby_intro /= void
	do
		if ( not single_button.identifier_name.is_equal (pressed_single) ) then

			if (lan_button.identifier_name.is_equal (pressed_lan) ) then
				mouse_leave_from_button(lan_button, true)
			elseif (online_button.identifier_name.is_equal (pressed_online) ) then
				mouse_leave_from_button(online_button, true)
			end
			set_selected_button(single_button)
		end
	end

	multiplayer_pressed(a_a, a_b, a_c: INTEGER_32; a_d, a_e, a_f: REAL_64; a_g, a_h: INTEGER_32 lobby_intro: G10_LOBBY_ENTRANCE_SCREEN) -- action when single player is pressed
	require
		lobby_not_null: lobby_intro /= void
	do
		lobby_intro.get_background.extend_with_position_and_size (lan_button, mult_lan_start_width, mult_lan_start_height, mult_lan_width, mult_lan_height)
		lobby_intro.get_background.extend_with_position_and_size (online_button, online_start_width, online_start_height, online_width, online_height)
	end

	lan_pressed(a_a, a_b, a_c: INTEGER_32; a_d, a_e, a_f: REAL_64; a_g, a_h: INTEGER_32 lobby_intro: G10_LOBBY_ENTRANCE_SCREEN) -- action when single player is pressed
	require
		lobby_not_null: lobby_intro /= void
	do
		if ( not lan_button.identifier_name.is_equal (pressed_lan) ) then

			if ( single_button.identifier_name.is_equal (pressed_single) ) then
				mouse_leave_from_button(single_button, true)
			elseif (online_button.identifier_name.is_equal (pressed_online) ) then
				mouse_leave_from_button(online_button, true)
			end
			set_selected_button(lan_button)
		end
	end

	online_pressed(a_a, a_b, a_c: INTEGER_32; a_d, a_e, a_f: REAL_64; a_g, a_h: INTEGER_32 lobby_intro: G10_LOBBY_ENTRANCE_SCREEN) -- action when single player is pressed
	require
		lobby_not_null: lobby_intro /= void
	do
		if ( not online_button.identifier_name.is_equal (pressed_online) ) then

			if ( single_button.identifier_name.is_equal (pressed_single) ) then
				mouse_leave_from_button(single_button, true)
			elseif (lan_button.identifier_name.is_equal (pressed_lan) ) then
				mouse_leave_from_button(lan_button, true)
			end
			set_selected_button(online_button)
		end
	end

	----------------------------------
	pressed_next_button(a_a, a_b, a_c: INTEGER_32; a_d, a_e, a_f: REAL_64; a_g, a_h: INTEGER_32 lobby_intro: G10_LOBBY_ENTRANCE_SCREEN) -- action when pressed go to carcassonne lobby
	require
		lobby_intro_not_null: lobby_intro /= void
	local
		fault_dialog :EV_CONFIRMATION_DIALOG
	do
		if username_bar.text.count >= 5 and username_bar.text.count <= 30 then
			lobby_intro.set_username (username_bar.text)

			if single_button.identifier_name.is_equal (pressed_single) then
				lobby_intro.launch_main_game -- launch the main game as a single player
				lobby_intro.destroy -- destroy entrance lobby	
			elseif lan_button.identifier_name.is_equal (pressed_lan) then
				lobby_intro.launch_main_lobby(true) -- launch the main lobby for lan game
				lobby_intro.destroy -- destroy entrance lobby	
			elseif online_button.identifier_name.is_equal (pressed_online) then
				lobby_intro.launch_main_lobby(false) -- launch the main lobby for online game
				lobby_intro.destroy -- destroy entrance lobby	
			else
   				create fault_dialog.make_with_text ("Please select Single Player or a Multiplayer Mode.")
   				fault_dialog.show_modal_to_window (lobby_intro)
			end
		else
			create fault_dialog.make_with_text ("Your username must be between 5 and 30 characters")
			fault_dialog.show_modal_to_window (lobby_intro)
		end
	end
	----------------------------------
	pressed_go_to_main(a_a, a_b, a_c: INTEGER_32; a_d, a_e, a_f: REAL_64; a_g, a_h: INTEGER_32 lobby_intro: G10_LOBBY_ENTRANCE_SCREEN) -- action when pressed go to main window
	require
		lobby_intro_not_null: lobby_intro /= void
	do
		lobby_intro.quit_entrance_lobby -- ask user if he wants to quit entrance lobby
	end
	----------------------------------
	mouse_entered_button (an_area: EV_FIXED) -- the pointer is entering the area used as a button
	do
		if an_area = username_button then
			username_button.set_background_pixmap (pix_highlighted_username_button)
			username_bar.show
		elseif an_area = single_button then
			single_button.set_background_pixmap (pix_highlighted_single_button)
			mouse_leave_from_button(username_button, false)
			username_bar.hide
		elseif an_area = multi_button then
			multi_button.set_background_pixmap (pix_highlighted_multi_button)
		elseif an_area = lan_button then
			lan_button.set_background_pixmap (pix_highlighted_lan_button)
		elseif an_area = online_button then
			online_button.set_background_pixmap (pix_highlighted_online_button)
		elseif an_area = next_button then
			next_button.set_background_pixmap (pix_highlighted_next_button)
		elseif an_area = back_button then
			back_button.set_background_pixmap (pix_highlighted_to_main_button)
		elseif an_area = void then
			mouse_leave_from_button(username_button, false)
			username_bar.hide
		else
			print("Problem in set highlighted button -> lobby_all_buttons %N")
		end
	end
	----------------------------------
	mouse_leave_from_button (an_area: EV_FIXED was_pressed: BOOLEAN)-- the pointer is leaving the area used as a button
	require
		area_not_null: an_area /= void
	do
		if an_area = username_button then
			if username_bar.text.count >= 5 and username_bar.text.count <= 30 then
				set_selected_button(username_button)
			else
				username_button.set_background_pixmap (pix_username_button)
				username_button.set_identifier_name (usr)
			end
		elseif an_area = single_button then
			if (was_pressed or not single_button.identifier_name.is_equal (pressed_single)) then
				single_button.set_background_pixmap (pix_single_button)
				single_button.set_identifier_name (single)
			end
		elseif an_area = multi_button then
			if (was_pressed or not multi_button.identifier_name.is_equal (pressed_mult)) then
				multi_button.set_background_pixmap (pix_multi_button)
				multi_button.set_identifier_name (mult)
			end
		elseif an_area = lan_button then
			if (was_pressed or not lan_button.identifier_name.is_equal (pressed_lan)) then
				lan_button.set_background_pixmap (pix_lan_button)
				lan_button.set_identifier_name (lan)
			end
		elseif an_area = online_button then
			if (was_pressed or not online_button.identifier_name.is_equal (pressed_online)) then
				online_button.set_background_pixmap (pix_online_button)
				online_button.set_identifier_name (online)
			end
		elseif an_area = next_button then
			next_button.set_background_pixmap (pix_next_button)
		elseif an_area = back_button then
			back_button.set_background_pixmap (pix_to_main_button)
		else
			print("Problem in set simple button -> lobby_all_buttons %N")
		end
	end
	----------------------------------
	set_selected_button (an_area: EV_FIXED)
	require
		area_not_null: an_area /= void
	do
		if an_area = username_button then
			username_button.set_background_pixmap (pix_selected_username_button)
			username_button.set_identifier_name (pressed_usr)
		elseif an_area = single_button then
			single_button.set_background_pixmap (pix_selected_single_button)
			single_button.set_identifier_name (pressed_single)
		elseif an_area = lan_button then
			lan_button.set_background_pixmap (pix_selected_lan_button)
			lan_button.set_identifier_name (pressed_lan)
		elseif an_area = online_button then
			online_button.set_background_pixmap (pix_selected_online_button)
			online_button.set_identifier_name (pressed_online)
		else
			print("Problem in set selected button -> lobby_all_buttons %N")
		end
	end

end
