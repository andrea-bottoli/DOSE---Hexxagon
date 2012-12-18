note
	description: "class includes the functionality regarding every button"
	author: "Angel Kyriako"
	date: "5/12/2012"
	revision: "2.0"

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
	ip_button: EV_FIXED
	port_button: EV_FIXED
	to_lobby_button: EV_FIXED
	to_main_button: EV_FIXED
	----------------------------------

feature {ANY} -- constructor

	make_buttons(lobby_entrance : G10_LOBBY_ENTRANCE_SCREEN) -- creates all necessary EV_FIXEDs for the buttons of lobby entrance (username, port, ip, go to lobby)
	require
		lobby_window_not_null: lobby_entrance /= void
	do
		create username_button
		set_simple_button(username_button, true)
		username_button.pointer_button_release_actions.extend (agent pressed_an_input_button(?, ?, ?, ?, ?, ?, ?, ?, lobby_entrance, username_button))
		username_button.pointer_enter_actions.extend (agent set_highlighted_button(username_button))
		username_button.pointer_leave_actions.extend (agent set_simple_button(username_button, false))

		create ip_button
		set_simple_button(ip_button, true)
		ip_button.pointer_button_release_actions.extend (agent pressed_an_input_button(?, ?, ?, ?, ?, ?, ?, ?, lobby_entrance, ip_button))
		ip_button.pointer_enter_actions.extend (agent set_highlighted_button(ip_button))
		ip_button.pointer_leave_actions.extend (agent set_simple_button(ip_button, false))

		create port_button
		set_simple_button(port_button, true)
		port_button.pointer_button_release_actions.extend (agent pressed_an_input_button(?, ?, ?, ?, ?, ?, ?, ?, lobby_entrance, port_button))
		port_button.pointer_enter_actions.extend (agent set_highlighted_button(port_button))
		port_button.pointer_leave_actions.extend (agent set_simple_button(port_button, false))

		create to_lobby_button
		set_simple_button(to_lobby_button, true)
		to_lobby_button.pointer_button_release_actions.extend (agent pressed_go_to_lobby(?, ?, ?, ?, ?, ?, ?, ?, lobby_entrance))
		to_lobby_button.pointer_enter_actions.extend (agent set_highlighted_button(to_lobby_button))
		to_lobby_button.pointer_leave_actions.extend (agent set_simple_button(to_lobby_button, false))

		create to_main_button
		set_simple_button(to_main_button, true)
		to_main_button.pointer_button_release_actions.extend (agent pressed_go_to_main(?, ?, ?, ?, ?, ?, ?, ?, lobby_entrance))
		to_main_button.pointer_enter_actions.extend (agent set_highlighted_button(to_main_button))
		to_main_button.pointer_leave_actions.extend (agent set_simple_button(to_main_button, false))

		lobby_entrance.get_background.extend_with_position_and_size (username_button, username_start_width, username_start_height, username_button_width, username_button_height)
		lobby_entrance.get_background.extend_with_position_and_size (ip_button, ip_start_width, ip_start_height, ip_button_width, ip_button_height)
		lobby_entrance.get_background.extend_with_position_and_size (port_button, port_start_width, port_start_height, port_button_width, port_button_height)
		lobby_entrance.get_background.extend_with_position_and_size (to_lobby_button, to_lobby_start_width, to_lobby_start_height, to_lobby_button_width, to_lobby_button_height)
		lobby_entrance.get_background.extend_with_position_and_size (to_main_button, to_main_start_width, to_main_start_height, to_main_button_width, to_main_button_height)

	ensure
		Lobby_Buttons_not_null: lobby_entrance /= void
	end
	----------------------------------

feature {NONE} -- Button actions

	pressed_an_input_button(a_a, a_b, a_c: INTEGER_32; a_d, a_e, a_f: REAL_64; a_g, a_h: INTEGER_32 lobby_intro: G10_LOBBY_ENTRANCE_SCREEN a_button: EV_FIXED) -- action when pressed a button
	require
		lobby_not_null: lobby_intro /= void
	do
		if a_button = username_button then

			if ( not username_button.identifier_name.is_equal ("pressed_usr") ) then

				if (ip_button.identifier_name.is_equal ("pressed_ip") ) then
					lobby_intro.set_internal_ip (lobby_intro.get_input_bar.text)
					set_simple_button(ip_button, true)
				elseif (port_button.identifier_name.is_equal ("pressed_port") ) then
					lobby_intro.set_port (lobby_intro.get_input_bar.text)
					set_simple_button(port_button, true)
				end
				set_selected_button(username_button)
				lobby_intro.get_input_bar.set_text (lobby_intro.get_username)
			end
		elseif a_button = ip_button then

			if ( not ip_button.identifier_name.is_equal ("pressed_ip") ) then

				if (username_button.identifier_name.is_equal ("pressed_usr") ) then
					lobby_intro.set_username (lobby_intro.get_input_bar.text)
					set_simple_button(username_button, true)
				elseif (port_button.identifier_name.is_equal ("pressed_port") ) then
					lobby_intro.set_port (lobby_intro.get_input_bar.text)
					set_simple_button(port_button, true)
				end
				set_selected_button(ip_button)
				lobby_intro.set_input_bar_text(lobby_intro.get_internal_ip)
			end
		elseif a_button = port_button then

			if ( not port_button.identifier_name.is_equal ("pressed_port") ) then

				if (username_button.identifier_name.is_equal ("pressed_usr") ) then
					lobby_intro.set_username (lobby_intro.get_input_bar.text)
					set_simple_button(username_button, true)
				elseif (ip_button.identifier_name.is_equal ("pressed_ip") ) then
					lobby_intro.set_internal_ip (lobby_intro.get_input_bar.text)
					set_simple_button(ip_button, true)
				end
				set_selected_button(port_button)
				lobby_intro.set_input_bar_text(lobby_intro.get_port)
			end
		else
			print("Problem in pointer_enter_area -> lobby_all_buttons %N")
		end
	ensure

	end
	----------------------------------
	pressed_go_to_lobby(a_a, a_b, a_c: INTEGER_32; a_d, a_e, a_f: REAL_64; a_g, a_h: INTEGER_32 lobby_intro: G10_LOBBY_ENTRANCE_SCREEN) -- action when pressed go to carcassonne lobby
	require
		lobby_intro_not_null: lobby_intro /= void
	do
		if (username_button.identifier_name.is_equal ("pressed_usr") ) then
			lobby_intro.set_username (lobby_intro.get_input_bar.text )
		elseif (ip_button.identifier_name.is_equal ("pressed_ip") ) then
			lobby_intro.set_internal_ip (lobby_intro.get_input_bar.text )
		elseif (port_button.identifier_name.is_equal ("pressed_port") ) then
			lobby_intro.set_port (lobby_intro.get_input_bar.text )
		end
		lobby_intro.launch_main_lobby -- launch the main lobby
		lobby_intro.destroy -- destroy entrance lobby
	end
	----------------------------------
	pressed_go_to_main(a_a, a_b, a_c: INTEGER_32; a_d, a_e, a_f: REAL_64; a_g, a_h: INTEGER_32 lobby_intro: G10_LOBBY_ENTRANCE_SCREEN) -- action when pressed go to main window
	require
		lobby_intro_not_null: lobby_intro /= void
	do
		lobby_intro.quit_entrance_lobby -- ask user if he wants to quit entrance lobby
	end
	----------------------------------
	set_simple_button (an_area: EV_FIXED was_pressed: BOOLEAN)-- the pointer is entering the area used as a button
	require
		area_not_null: an_area /= void
	do
		if an_area = username_button then
			if (was_pressed or username_button.identifier_name.is_equal ("usr") ) then
				username_button.set_background_pixmap (pix_username_button)
				username_button.set_identifier_name ("usr")
			end
		elseif an_area = ip_button then
			if (was_pressed or ip_button.identifier_name.is_equal ("ip")) then
				ip_button.set_background_pixmap (pix_ip_button)
				ip_button.set_identifier_name ("ip")
			end
		elseif an_area = port_button then
			if (was_pressed or port_button.identifier_name.is_equal ("port")) then
				port_button.set_background_pixmap (pix_port_button)
				port_button.set_identifier_name ("port")
			end
		elseif an_area = to_lobby_button then
			to_lobby_button.set_background_pixmap (pix_to_lobby_button)
		elseif an_area = to_main_button then
			to_main_button.set_background_pixmap (pix_to_main_button)
		else
			print("Problem in set simple button -> lobby_all_buttons %N")
		end
	end
	----------------------------------
	set_highlighted_button (an_area: EV_FIXED) -- the pointer is leaving the area used as a button
	require
		area_not_null: an_area /= void
	do
		if an_area = username_button then
			username_button.set_background_pixmap (pix_highlighted_username_button)
		elseif an_area = ip_button then
			ip_button.set_background_pixmap (pix_highlighted_ip_button)
		elseif an_area = port_button then
			port_button.set_background_pixmap (pix_highlighted_port_button)
		elseif an_area = to_lobby_button then
			to_lobby_button.set_background_pixmap (pix_highlighted_to_lobby_button)
		elseif an_area = to_main_button then
			to_main_button.set_background_pixmap (pix_highlighted_to_main_button)
		else
			print("Problem in set highlighted button -> lobby_all_buttons %N")
		end
	end
	----------------------------------
	set_selected_button (an_area: EV_FIXED)
	require
		area_not_null: an_area /= void
	do
		if an_area = username_button then
			username_button.set_background_pixmap (pix_selected_username_button)
			username_button.set_identifier_name ("pressed_usr")
		elseif an_area = ip_button then
			ip_button.set_background_pixmap (pix_selected_ip_button)
			ip_button.set_identifier_name ("pressed_ip")
		elseif an_area = port_button then
			port_button.set_background_pixmap (pix_selected_port_button)
			port_button.set_identifier_name ("pressed_port")
		else
			print("Problem in set selected button -> lobby_all_buttons %N")
		end
	end

feature {ANY} --accessors

	get_username_button: EV_FIXED
	do
		Result := username_button
	end
	----------------------------------
	get_ip_button: EV_FIXED
	do
		Result := ip_button
	end
	----------------------------------
	get_port_button: EV_FIXED
	do
		Result := port_button
	end
	----------------------------------
	get_to_lobby_button: EV_FIXED
	do
		Result := to_lobby_button
	end
	----------------------------------
	get_to_main_button: EV_FIXED
	do
		Result := to_main_button
	end
	----------------------------------
end
