note
	description: "represents the graphic interface of the carcassonne lobby window"
	author: "Angel Kyriako"
	date: "27/11/2012"
	revision: "1.0"

class
	G10_LOBBY_MAIN
	----------------------------------
inherit
	EV_TITLED_WINDOW
		redefine
			initialize
		end
	G10_LOBBY_CONSTANTS
		undefine
			default_create, copy
		end
	----------------------------------
create
	make
	----------------------------------
feature {NONE}	-- Attributes

	--the components that interact with the lobby component
	player: G10_LOBBY_USER
	game_window: EV_WINDOW-- the game window that is currently opened

	--parts of the lobby graphic component
	background: EV_FIXED
	all_buttons: G10_LOBBY_ALL_BUTTONS
	all_online_users: G10_LOBBY_ONLINE_PLAYERS
	all_hosted_games: G10_LOBBY_HOSTED_GAMES
	new_game_info: G10_LOBBY_SOUTH_PANEL
	----------------------------------

feature {NONE} -- constructor and initializers a titled window

	make (a_player: G10_LOBBY_USER)
	require
		--Main_window_not_null: a_main_ui_window /= void
		player_not_null: a_player /= void
		window_title_not_null: crsn_lobby_title /= void
	do
			-- keep a reference of the player that is running the game, it is need in every component.
		player := a_player
			-- Create the Lobby window.
		make_with_title (crsn_lobby_title)
		set_position ((screen_width // 2) - (lobby_window_width // 2), (screen_height // 2) - (lobby_window_height // 2))
		disable_user_resize
	ensure
		lobby_not_null: Current /= void
	end
	----------------------------------
	initialize
	do
		Precursor {EV_TITLED_WINDOW}
		close_request_actions.extend (agent quit_lobby)

		init_background
		init_all_components
	end
	----------------------------------
	init_background
	require
		window_is_created: current /= void
	do
		create background
		put(background)
		background.set_background_pixmap (pix_lobby_background)
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
		create all_online_users.make_online_users(Current)
		create all_hosted_games.make_hosted_games (Current)
		create new_game_info.make(Current)
	ensure
		create_button_exists: all_buttons.get_create_button /= void
		join_button_exists: all_buttons.get_join_button /= void
		practice_button_exists: all_buttons.get_practice_button /= void
		return_button_exists: all_buttons.get_return_button /= void
	end

feature {G10_LOBBY_ONLINE_PLAYERS, G10_LOBBY_HOSTED_GAMES}

	update_lobby
	require
		player_not_null: player /= void
	local
		old_hosted_games_num: INTEGER
		old_connected_players_num: INTEGER
	do
		--keep in the local variables the old values of the counts
		old_hosted_games_num := get_lobby_logic.get_active_games_no
		old_connected_players_num := get_lobby_logic.get_connected_player_no

		-- get latest lobby data
		player.keep_lobby_updated

		-- update ui if needed
		if (get_lobby_logic.get_active_games_no /= old_hosted_games_num or
			get_lobby_logic.get_connected_player_no /= old_connected_players_num) then
			-- redraw hosted games
			all_hosted_games.redraw_all_games(get_lobby_logic)
			-- redraw online players
			all_online_users.redraw_all_players(get_lobby_logic)
		end
	end

feature {G10_LOBBY_ALL_BUTTONS, G10_LOBBY_USER, G10_GUI_GAME_MAIN, G10_LOBBY_NEW_GAME_INFO} -- button actions

	launch_as_host(game_title, player_num: STRING)
	require
		args_not_void: game_title /= void and player_num /= void
		args_not_empty: (not game_title.is_empty) and (not player_num.is_empty)
	do
		player.launch_host(game_title, player_num)
		minimize
	end

	launch_as_joined_player(host_ip, host_port: STRING)
	require
		args_not_void: host_ip /= void and host_port /= void
		args_not_empty: (not host_ip.is_empty) and (not host_port.is_empty)
	do
		player.launch_joined_player(host_ip, host_port)
		minimize
	end

	launch_as_forever_alone
	do
		player.launch_dummy
		minimize
	ensure
		game_window_is_not_null: player.get_crsn_game_ui /= void
	end
	----------------------------------
	quit_lobby
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
	add_reference_to_game_window (a_game_window: EV_WINDOW)
		-- adds the reference to window of a game
	require
		arg_not_void: a_game_window /= Void
	do
		game_window := a_game_window
	ensure
		game_window_not_null: game_window /= void
	end
	----------------------------------
	remove_reference_to_game_window
		-- removes the game window reference
	do
		game_window := void
	ensure
		game_window_is_null: game_window = void
	end
	----------------------------------

feature {ANY} --accessors

	----------------------------------
	get_lobby_logic: G10_LOBBY_LOGIC
	do
		Result := player.get_crsn_lobby_logic
	end
	----------------------------------
	get_crsn_game_ui: G10_GUI_GAME_MAIN
	do
		Result := player.get_crsn_game_ui
	end
	----------------------------------
	get_game_window: EV_WINDOW
	do
		Result := game_window
	end
	----------------------------------
	get_background: EV_FIXED
	do
		Result := background
	end
	----------------------------------
	get_all_buttons: G10_LOBBY_ALL_BUTTONS
	do
		Result := all_buttons
	end
	----------------------------------
	get_all_online_users: G10_LOBBY_ONLINE_PLAYERS
	do
		Result := all_online_users
	end
	----------------------------------
	get_all_hosted_games: G10_LOBBY_HOSTED_GAMES
	do
		Result := all_hosted_games
	end
	----------------------------------
	get_new_game_info: G10_LOBBY_SOUTH_PANEL
	do
		Result := new_game_info
	end
	----------------------------------

invariant
	player_is_valid: player /= void
	main_ui_not_null: player.get_main_ui /= void
end
