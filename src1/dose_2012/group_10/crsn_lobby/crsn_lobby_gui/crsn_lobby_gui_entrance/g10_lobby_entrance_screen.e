note
	description: "the window where the user gives his/her info"
	author: "Angel Kyriako"
	date: "5/12/2012"
	revision: "2.0"

class
	G10_LOBBY_ENTRANCE_SCREEN
inherit
	EV_TITLED_WINDOW
		redefine
			initialize
		end
	G10_LOBBY_ENTRANCE_CONSTANTS
	undefine
		default_create, copy
	end

create
	make

feature{NONE} --attributes
	--the components that interact with the lobby entrance component
	player : G10_LOBBY_USER
	game_window: EV_WINDOW-- the game window that is currently opened

	--parts of the lobby entrance graphic component
	background: EV_FIXED
	all_buttons: G10_LOBBY_ENTRANCE_ALL_BUTTONS
	input_bar: EV_TEXT_FIELD

feature{ANY}
	make (a_player: G10_LOBBY_USER)
	require
		player_not_null: a_player /= void
		window_title_not_null: crsn_lobby_title /= void
	do
		-- keep a reference of the player that is running the game, it is need in every component.
		player := a_player
		-- Create the Lobby_entrance window.			
		make_with_title (crsn_lobby_title)
		set_position ((screen_width // 2) - (lobby_window_width // 2), (screen_height // 2) - (lobby_window_height // 2))
		disable_user_resize
	ensure
		lobby_entranc_not_null: Current /= void
	end
	----------------------------------
	initialize -- Build the interface for this window.
	do
		Precursor {EV_TITLED_WINDOW}
		close_request_actions.extend (agent quit_entrance_lobby)

		init_background
		init_all_components
	end
	----------------------------------
feature{NONE}

	init_background
	require
		window_is_created: current /= void
	do
		create background
		put(background)
		background.set_background_pixmap (pix_lobby_entrance_background)
		background.set_minimum_size (lobby_window_width, lobby_window_height)
	ensure
		background_is_created: background /= void
		valid_width: background.width = lobby_window_width
		valid_height: background.height = lobby_window_height
	end
	----------------------------------
	init_all_components
	require
		window_is_created: current /= void
		background_is_created: background /= void
	do
		create all_buttons.make_buttons(Current)
		create input_bar
		background.extend_with_position_and_size (input_bar, input_bar_start_width, input_bar_start_height, input_bar_width, input_bar_height)
		input_bar.align_text_center
	ensure
		username_button_exists: all_buttons.get_username_button /= void
		ip_button_exists: all_buttons.get_ip_button /= void
		port_button_exists: all_buttons.get_port_button /= void
		to_lobby_button_exists: all_buttons.get_to_lobby_button /= void
		to_main_button_exists: all_buttons.get_to_main_button /= void
	end
	----------------------------------

feature{G10_LOBBY_ENTRANCE_ALL_BUTTONS}

	launch_main_lobby
	require
	do
		print("usr: "+get_username+"%N")
		print("ip: "+get_internal_ip+"%N")
		print("port: "+get_port+"%N")
		-- destroy this window and launch the main lobby
		destroy
		player.launch_crsn_lobby(get_username, get_internal_ip, get_port)
	end
	----------------------------------
	quit_entrance_lobby
	require
		lobby_not_null: Current /= void
	local
		question_dialog: EV_CONFIRMATION_DIALOG
	do
		create question_dialog.make_with_text (quit_Message)
		question_dialog.show_modal_to_window (Current)

		if question_dialog.selected_button.is_equal ((create {EV_DIALOG_CONSTANTS}).ev_ok) then
				-- Restore the main UI which is currently minimized
			if attached player.get_main_ui then
				player.get_main_ui.restore
				player.get_main_ui.remove_reference_to_game(Current)
			end
			destroy
		end
	end
	----------------------------------

feature {ANY} -- mutators

	set_username(a_username: STRING)
	do
		player.get_player_info.set_id(a_username)
	end
	----------------------------------
	set_internal_ip(an_ip: STRING)
	do
		player.get_player_info.set_internal_ip(an_ip)
	end
	----------------------------------	
	set_external_ip(an_ip: STRING)
	do
		player.get_player_info.set_external_ip(an_ip)
	end
	----------------------------------
	set_port(a_port: STRING)
	do
		player.get_player_info.set_port(a_port)
	end
	----------------------------------
	set_input_bar_text(some_text: STRING)
	do
		input_bar.set_text (some_text)
		input_bar.show
	end
	----------------------------------

feature {ANY} -- accessors

	get_crsn_lobby_ui: G10_LOBBY_MAIN
	do
		Result := player.get_crsn_lobby_ui
	end
	----------------------------------
	get_background: EV_FIXED
	do
		Result := background
	end
	----------------------------------
	get_all_buttons: G10_LOBBY_ENTRANCE_ALL_BUTTONS
	do
		Result := all_buttons
	end
	----------------------------------
	get_input_bar: EV_TEXT_FIELD
	do
		Result := input_bar
	end
	----------------------------------
	get_username: STRING
	do
		Result := player.get_player_info.get_id
	end
	----------------------------------
	get_internal_ip: STRING
	do
		Result := player.get_player_info.get_internal_ip
	end
	----------------------------------
	get_external_ip: STRING
	do
		Result := player.get_player_info.get_external_ip
	end
	----------------------------------
	get_port: STRING
	do
		Result := player.get_player_info.get_port
	end
	----------------------------------	

end
