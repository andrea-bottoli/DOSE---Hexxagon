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
		create all_buttons.make_buttons(Current)
	end
	----------------------------------
feature{NONE} -- initializations

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

feature{G10_LOBBY_ENTRANCE_ALL_BUTTONS}

	launch_main_game
	do
		destroy
		player.launch_as_single_player(get_username)
	ensure
		game_window_is_not_null: player.get_crsn_game_ui /= void
	end
	----------------------------------
	launch_main_lobby(is_launcher_for_lan: BOOLEAN)
	require
	do
		destroy
		if is_launcher_for_lan then
			player.launch_crsn_lobby(get_username, get_players_internal_ip, get_players_port)-- launch with internal
		else
			player.launch_crsn_lobby(get_username, get_players_external_ip, get_players_port)-- launch with external	
		end
	ensure
		lobby_window_is_not_null: player.get_crsn_lobby_ui /= void
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

feature {G10_LOBBY_ENTRANCE_ALL_BUTTONS} -- mutator

	set_username(a_username: STRING)
	do
		player.get_player_info.set_id(a_username)
	end


feature {G10_LOBBY_ENTRANCE_ALL_BUTTONS} -- accessors

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
	get_username: STRING
	do
		Result := player.get_player_info.get_id
	end
	----------------------------------
	get_players_internal_ip: STRING
	do
		Result := player.get_player_info.get_internal_ip
	end
	----------------------------------
	get_players_external_ip: STRING
	do
		Result := player.get_player_info.get_external_ip
	end
	----------------------------------
	get_players_port: STRING
	do
		Result := player.get_player_info.get_port
	end

end
