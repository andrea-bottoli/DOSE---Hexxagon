note
	description: "Main lobby necessary for begin the game"
	author: "German Lopez-Bruno Alaminos-Jonathan Taberna"
	date: "$Date$"
	revision: "$Revision$"

class
	CU_MAIN_LOBBY

inherit
	CU_WINDOWS

feature -- make

	make: EV_FIXED
		-- Displays a window with the main lobby
		do
			create create_game_button.make_with_text ("Create a Game")
			create_game_button.set_minimum_size (75, 24)
			create master.make
			create_game_button.select_actions.extend (agent master.show)

			create join_game_button.make_with_text ("Join a Game")
			join_game_button.set_minimum_size (75, 24)
			create join_a_game.make
			join_game_button.select_actions.extend (agent join_a_game.show)

			create show_rules_button.make_with_text ("Show Rules")
			show_rules_button.set_minimum_size (75, 24)
			create rules.make
			show_rules_button.select_actions.extend (agent rules.show)

			create quit_game_button.make_with_text ("Quit Game")
			quit_game_button.set_minimum_size (75, 24)
			quit_game_button.select_actions.extend (agent request_close_window)

			create con_main_lobby
			con_main_lobby.extend_with_position_and_size (pix_main_background, 0, 0, 1100, 650)
			con_main_lobby.extend_with_position_and_size (create_game_button, 400, 400, 140, 50)
			con_main_lobby.extend_with_position_and_size (join_game_button, 600, 400, 140, 50)
			con_main_lobby.extend_with_position_and_size (show_rules_button, 20, 600, 80, 30)
			con_main_lobby.extend_with_position_and_size (quit_game_button, 1000, 600, 80, 30)

			Result := con_main_lobby
--			make_with_title ("Main Lobby")
--			current.set_size (400, 230)
--			current.put (con_main_lobby)
--			current.disable_user_resize
--			current.show
		ensure
			not_is_displayed: not is_displayed
		end
feature {NONE}
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
end
