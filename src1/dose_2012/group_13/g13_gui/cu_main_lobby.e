note
	description: "Main lobby necessary for begin the game"
	author: "German Lopez-Bruno Alaminos-Jonathan Taberna"
	date: "$Date$"
	revision: "$Revision$"

class
	CU_MAIN_LOBBY

inherit
	CU_WINDOWS

	CU_INIT_CONTROLLER
	undefine
		default_create, copy
	end

create
	make_window

feature -- make

	make_window(a_main_ui_window: MAIN_WINDOW)
		-- Displays a window with the main lobby
		do
			main_ui_lobby := a_main_ui_window
			create create_game_button.make_with_text ("Create a Game")
			create_game_button.set_minimum_size (75, 24)
			create master.make_master
			create_game_button.select_actions.extend (agent master.show)
--			create_game_button.select_actions.extend (agent start ("master"))

			create join_game_button.make_with_text ("Join a Game")
			join_game_button.set_minimum_size (75, 24)
			create join_a_game.make
			join_game_button.select_actions.extend (agent join_a_game.show)
--			join_game_button.select_actions.extend (agent set_mode_game ("slave"))

			create show_rules_button.make_with_text ("Show Rules")
			show_rules_button.set_minimum_size (75, 24)
			create rules.make
			show_rules_button.select_actions.extend (agent rules.show)

			create quit_game_button.make_with_text ("Quit Game")
			quit_game_button.set_minimum_size (75, 24)
			quit_game_button.select_actions.extend (agent request_close_window)

			create horizontal_separator
			create con_main_lobby
			con_main_lobby.extend_with_position_and_size (pix_main_background, 0, 0, 1100, 650)
			con_main_lobby.extend_with_position_and_size (create_game_button, 400, 400, 140, 50)
			con_main_lobby.extend_with_position_and_size (join_game_button, 600, 400, 140, 50)
			con_main_lobby.extend_with_position_and_size (show_rules_button, 20, 600, 80, 30)
			con_main_lobby.extend_with_position_and_size (quit_game_button, 1000, 600, 80, 30)
			con_main_lobby.extend_with_position_and_size (horizontal_separator, 0, 0, 1100, 5)

			set_title_window ("Cluedo - Main Lobby")
			set_width_window (1100)
			set_height_window (650)
			make_with_title (window_title)
			set_size (window_width,window_height)
			put (con_main_lobby)
			disable_user_resize

--			Result := con_main_lobby
--			make_with_title ("Main Lobby - Cluedo")
--			current.set_size (400, 230)
--			current.put (con_main_lobby)
--			current.disable_user_resize
--			current.show
		ensure
			not_is_displayed: not is_displayed
		end

feature
	set_mode_game (a_mode: STRING)
	do
		create mode_game.make_from_string (a_mode)
		io.put_string (a_mode)
	end

	return_mode_game: STRING
	do
		Result := mode_game
	end
feature {NONE}

--	controller: CU_INIT_CONTROLLER
    create_game_button: EV_BUTTON
            -- "Create Game" button.

	join_game_button: EV_BUTTON
            -- "Join Game" button.

	show_rules_button: EV_BUTTON
            -- "Show Rules" button.

	quit_game_button: EV_BUTTON
            -- "Quit Game" button.

    con_main_lobby: EV_FIXED

    rules: CU_SHOW_RULES

    master: CU_GAME_MASTER_LOBBY

    pix_main_background: EV_PIXMAP
			-- returns the background for the active game
		once
			create Result
			Result.set_with_named_file (file_system.pathname_to_string (Img_main_background))
		end

	join_a_game: CU_JOIN_AN_EXISTS_GAME

	server: CU_SERVER

	mode_game: STRING


	main_ui_lobby: MAIN_WINDOW
end
