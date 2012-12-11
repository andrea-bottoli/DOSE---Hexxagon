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
	player: G10_JOINED_PLAYER
	game_window: EV_WINDOW-- the game window that is currently opened

	--parts of the lobby graphic component
	background: EV_FIXED
	all_buttons: G10_LOBBY_ALL_BUTTONS
	all_online_users: G10_LOBBY_ONLINE_USERS_LIST
	all_hosted_games: G10_LOBBY_HOSTED_GAMES
	new_game_info: G10_LOBBY_NEW_GAME_INFO
	----------------------------------

feature {NONE} -- constructor and initializers a titled window

	make (a_player: G10_JOINED_PLAYER)
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
	initialize -- Build the interface for this window.
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
		create new_game_info.make_new_game_info_panel(Current)
	ensure
		create_button_exists: all_buttons.get_create_button /= void
		join_button_exists: all_buttons.get_join_button /= void
		practice_button_exists: all_buttons.get_practice_button /= void
		return_button_exists: all_buttons.get_return_button /= void
	end

feature {G10_LOBBY_ALL_BUTTONS, G10_JOINED_PLAYER, G10_GUI_GAME_MAIN, G10_LOBBY_NEW_GAME_INFO} -- button actions

	launch_carcassonne_game_window
	require
		lobby_not_null: Current /= void
	do
		player.launch_crsn_game
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
	get_player: G10_JOINED_PLAYER
	do
		Result := player
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
	get_all_online_users: G10_LOBBY_ONLINE_USERS_LIST
	do
		Result := all_online_users
	end
	----------------------------------
	get_all_hosted_games: G10_LOBBY_HOSTED_GAMES
	do
		Result := all_hosted_games
	end
	----------------------------------
	get_new_game_info: G10_LOBBY_NEW_GAME_INFO
	do
		Result := new_game_info
	end
	----------------------------------	

invariant
	player_is_valid: player /= void
	main_ui_not_null: player.get_main_ui /= void
end
