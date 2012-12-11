note
	description: "Our favorite class."
	author: "Debrecen1"
	date: "01.12.2012"
	revision: "$Revision$"

class
	ZB_LOBBY_WINDOW

inherit
	EV_TITLED_WINDOW
		redefine
			initialize,
			show
		end

	ZB_GUI_CONSTANTS
		export
			{NONE} all
		undefine
			default_create, copy
		end

	EV_STOCK_COLORS
		rename
			implementation as stock_colors_imp
		export
			{NONE} all
		undefine
			default_create, copy
		end

create
	make

feature {NONE}	-- Initialization

	make(a_main_ui_window: MAIN_WINDOW)
			-- Creation procedure
		do
				-- Store the main_ui object. We want to restore it later on (it's currently minimized).
			main_ui := a_main_ui_window
				-- Create the ZOMBIES!!! game window.
			make_with_title (window_title)
		end

	initialize
			-- Build the window
		do
			Precursor {EV_TITLED_WINDOW}

			close_request_actions.extend (agent request_close_window)

				-- create the main container and put it on the window
			create main_panel
			main_panel.set_background_pixmap (pix_lobby_background)

			create join_panel
			join_panel.set_background_pixmap (pix_lobby_background_join)

			create host_panel
			host_panel.set_background_pixmap (pix_lobby_background_host)

			put (main_panel)

			create btn_join.make_with_images(pix_lobby_button_join, pix_lobby_button_join_hover)
			btn_join.pointer_button_release_actions.extend (agent request_join_game(?, ?, ?, ?, ?, ?, ?, ?))
			main_panel.extend_with_position_and_size (btn_join, 38, 62, 132, 132)

			create btn_host.make_with_images(pix_lobby_button_host, pix_lobby_button_host_hover)
			btn_host.pointer_button_release_actions.extend (agent request_host_game(?, ?, ?, ?, ?, ?, ?, ?))
			main_panel.extend_with_position_and_size (btn_host, 224, 62, 132, 132)

			create btn_quit.make_with_images(pix_lobby_button_quit, pix_lobby_button_quit_hover)
			btn_quit.pointer_button_release_actions.extend (agent request_quit(?, ?, ?, ?, ?, ?, ?, ?))
			main_panel.extend_with_position_and_size (btn_quit, 410, 62, 132, 132)

			create txt_name_1
			--txt_name_1.font.set_height (30)
			--txt_name_1.set_font ()
			join_panel.extend_with_position_and_size (txt_name_1, 245, 48, 270, 28)

			create txt_server_ip
			--txt_server_ip.font.set_height (30)
			--txt_server_ip.set_font ()
			join_panel.extend_with_position_and_size (txt_server_ip, 245, 112, 270, 28)

			create btn_do_join.make_with_images(pix_lobby_button_do_join, pix_lobby_button_do_join_hover)
			btn_do_join.pointer_button_release_actions.extend (agent request_do_join(?, ?, ?, ?, ?, ?, ?, ?))
			join_panel.extend_with_position_and_size (btn_do_join, 226, 182, 132, 65)

			create btn_back_1.make_with_images(pix_lobby_button_back, pix_lobby_button_back_hover)
			btn_back_1.pointer_button_release_actions.extend (agent request_main_menu(?, ?, ?, ?, ?, ?, ?, ?))
			join_panel.extend_with_position_and_size (btn_back_1, 491, 311, 64, 44)

			create txt_name_2
			--txt_name_2.font.set_height (30)
			--txt_name_2.set_font ()
			host_panel.extend_with_position_and_size (txt_name_2, 245, 48, 270, 28)

			create txt_num_players
			--txt_num_players.font.set_height (30)
			--txt_num_players.set_font ()
			host_panel.extend_with_position_and_size (txt_num_players, 245, 112, 270, 28)

			create btn_do_host.make_with_images(pix_lobby_button_do_host, pix_lobby_button_do_host_hover)
			btn_do_host.pointer_button_release_actions.extend (agent request_do_host(?, ?, ?, ?, ?, ?, ?, ?))
			host_panel.extend_with_position_and_size (btn_do_host, 226, 182, 132, 65)

			create btn_back_2.make_with_images(pix_lobby_button_back, pix_lobby_button_back_hover)
			btn_back_2.pointer_button_release_actions.extend (agent request_main_menu(?, ?, ?, ?, ?, ?, ?, ?))
			host_panel.extend_with_position_and_size (btn_back_2, 491, 311, 64, 44)
		end

feature {ANY}	-- Initialization or whatever
	show
		do
			disable_user_resize

			-- these are horrible hacks, but I can't find anything better
			-- actually, I can't find anything...

			set_size (580, 380)
			Precursor
			set_size (580 + (width - client_width), 380 + (height - client_height))

			-- TODO: place the window at the center of the screen
		end

feature {NONE} -- Implementation, Close event

	request_join_game(a_a, a_b, a_c: INTEGER_32; a_d, a_e, a_f: REAL_64; a_g, a_h: INTEGER_32)
		do
			put (join_panel)
		end

	request_host_game(a_a, a_b, a_c: INTEGER_32; a_d, a_e, a_f: REAL_64; a_g, a_h: INTEGER_32)
		local
			ip_address: STRING
			ip_request: IG_ADDRESS_REQUEST
		do
			put (host_panel)

			-- TODO: do it on a new thread
			-- TODO: add LAN ip?
			-- TODO: maybe we should clone and modify this class to fit our needs
			-- TODO: change the web server url to http://api-sth01.exip.org/?call=ip
			create ip_request
			ip_address := ip_request.ip_address

			io.put_string ("server IP is: ")
			io.put_string (ip_address)
			io.put_new_line
		end

	request_main_menu(a_a, a_b, a_c: INTEGER_32; a_d, a_e, a_f: REAL_64; a_g, a_h: INTEGER_32)
		do
			put (main_panel)
		end

	request_close_window()
		do
			hide

				-- Restore the main UI which is currently minimized
			if attached main_ui then
				main_ui.restore
				main_ui.remove_reference_to_game (Current)
			end

			destroy
		end

	request_quit(a_a, a_b, a_c: INTEGER_32; a_d, a_e, a_f: REAL_64; a_g, a_h: INTEGER_32)
		do
			request_close_window()
		end

	request_do_join(a_a, a_b, a_c: INTEGER_32; a_d, a_e, a_f: REAL_64; a_g, a_h: INTEGER_32)
		local
			l_player_name: STRING
			l_server_ip: STRING
		do
			-- validate input
			l_player_name := txt_name_1.text
			l_server_ip := txt_server_ip.text

			do_join_game(l_server_ip, l_player_name)
		end

	request_do_host(a_a, a_b, a_c: INTEGER_32; a_d, a_e, a_f: REAL_64; a_g, a_h: INTEGER_32)
		local
			l_player_name: STRING
			l_number_of_players: INTEGER
		do
			-- validate input
			l_player_name := txt_name_2.text
			l_number_of_players := txt_num_players.text.to_integer

			-- start logic, which will start the net server
			-- this method is sync, so we can proceed to joining right away
			do_start_server(l_number_of_players)

			-- do a simple join where the server ip is our ip
			do_join_game("127.0.0.1", l_player_name)
		end

	do_start_server(a_number_of_players: INTEGER)
		local
			l_logic: ZB_LOGIC
		do
			io.put_string ("starting server...")
			io.put_new_line
			io.put_string ("  number of players: ")
			io.put_integer (a_number_of_players)
			io.put_new_line

			create l_logic.make
		end

	do_join_game(l_server_ip, l_player_name: STRING)
		do
			io.put_string ("joining game...")
			io.put_new_line
			io.put_string ("  server ip: ")
			io.put_string (l_server_ip)
			io.put_new_line
			io.put_string ("  player name: ")
			io.put_string (l_player_name)
			io.put_new_line
		end

feature {NONE}	-- Attributes

	main_ui: MAIN_WINDOW
		-- the main ui, i.e. the game selector
		-- we need this reference to bring back (i.e. maximize) the game selector once the user quits our game

	main_panel: EV_FIXED
	join_panel: EV_FIXED
	host_panel: EV_FIXED

	btn_join: ZB_IMAGE_BUTTON
	btn_host: ZB_IMAGE_BUTTON
	btn_quit: ZB_IMAGE_BUTTON
	btn_back_1: ZB_IMAGE_BUTTON
	btn_back_2: ZB_IMAGE_BUTTON
	btn_do_host: ZB_IMAGE_BUTTON
	btn_do_join: ZB_IMAGE_BUTTON
	btn_cancel_1: ZB_IMAGE_BUTTON
	btn_cancel_2: ZB_IMAGE_BUTTON
	txt_name_1: EV_TEXT_FIELD
	txt_name_2: EV_TEXT_FIELD
	txt_num_players: EV_TEXT_FIELD
	txt_server_ip: EV_TEXT_FIELD
	lbl_detected_ip: EV_LABEL

	-- pixmaps
	pix_lobby_background: EV_PIXMAP
		once
			create Result
			Result.set_with_named_file (file_system.pathname_to_string (img_lobby_background))
		end

	pix_lobby_background_join: EV_PIXMAP
		once
			create Result
			Result.set_with_named_file (file_system.pathname_to_string (img_lobby_background_join))
		end

	pix_lobby_background_host: EV_PIXMAP
		once
			create Result
			Result.set_with_named_file (file_system.pathname_to_string (img_lobby_background_host))
		end

	pix_lobby_button_join: EV_PIXMAP
		once
			create Result
			Result.set_with_named_file (file_system.pathname_to_string (img_lobby_button_join))
		end

	pix_lobby_button_join_hover: EV_PIXMAP
		once
			create Result
			Result.set_with_named_file (file_system.pathname_to_string (img_lobby_button_join_hover))
		end

	pix_lobby_button_host: EV_PIXMAP
		once
			create Result
			Result.set_with_named_file (file_system.pathname_to_string (img_lobby_button_host))
		end

	pix_lobby_button_host_hover: EV_PIXMAP
		once
			create Result
			Result.set_with_named_file (file_system.pathname_to_string (img_lobby_button_host_hover))
		end

	pix_lobby_button_quit: EV_PIXMAP
		once
			create Result
			Result.set_with_named_file (file_system.pathname_to_string (img_lobby_button_quit))
		end

	pix_lobby_button_quit_hover: EV_PIXMAP
		once
			create Result
			Result.set_with_named_file (file_system.pathname_to_string (img_lobby_button_quit_hover))
		end

	pix_lobby_button_back: EV_PIXMAP
		once
			create Result
			Result.set_with_named_file (file_system.pathname_to_string (img_lobby_button_back))
		end

	pix_lobby_button_back_hover: EV_PIXMAP
		once
			create Result
			Result.set_with_named_file (file_system.pathname_to_string (img_lobby_button_back_hover))
		end

	pix_lobby_button_do_join: EV_PIXMAP
		once
			create Result
			Result.set_with_named_file (file_system.pathname_to_string (img_lobby_button_do_join))
		end

	pix_lobby_button_do_join_hover: EV_PIXMAP
		once
			create Result
			Result.set_with_named_file (file_system.pathname_to_string (img_lobby_button_do_join_hover))
		end

	pix_lobby_button_do_host: EV_PIXMAP
		once
			create Result
			Result.set_with_named_file (file_system.pathname_to_string (img_lobby_button_do_host))
		end

	pix_lobby_button_do_host_hover: EV_PIXMAP
		once
			create Result
			Result.set_with_named_file (file_system.pathname_to_string (img_lobby_button_do_host_hover))
		end

invariant
	-- class invariant
	game_area_has_background_image: attached main_panel.background_pixmap

end
