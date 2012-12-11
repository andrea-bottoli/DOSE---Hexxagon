note
	description: "Summary description for {BS_WELCOME_WINDOW}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	BS_WELCOME_WINDOW

inherit
	EV_DIALOG
		redefine
			initialize
		end

create
	make

feature {NONE} -- Initialization

	make
		do
			make_with_title("Welcome to Blokus!")

			-- as long as nothing is selected:
			user_action := "NONE"
		end

	initialize
		do
			Precursor{EV_DIALOG}

			set_size(140, 160)

			create con_main

			create btn_new_game.make_with_text("New Game")
			create btn_join_game.make_with_text("Join Game")
			create btn_quit.make_with_text("Quit")

			btn_new_game.select_actions.extend(agent open_new_game_window)
			btn_join_game.select_actions.extend(agent open_join_game_window)
			btn_quit.select_actions.extend(agent close)
			con_main.extend_with_position_and_size(btn_new_game, 10, 10, 100, 20)
			con_main.extend_with_position_and_size(btn_join_game, 10, 50, 100, 20)
			con_main.extend_with_position_and_size (btn_quit, 10, 90, 100, 20)

			put(con_main)
		end

feature {BS_LOBBY_WINDOW} -- Information Retrieval by Lobby Window
	get_user_action : STRING
		do
			Result := user_action
		ensure
			Result = user_action -- see also class invariant
		end

feature {NONE} -- Implementation

	user_action : STRING

	open_new_game_window
		do
			user_action := "NEW_GAME"
			destroy
		end

	open_join_game_window
		do
			user_action := "JOIN_GAME"
			destroy
		end

	close
		do
			user_action := "QUIT"
			destroy
		end

	con_main : EV_FIXED
	btn_new_game : EV_BUTTON
	btn_join_game : EV_BUTTON
	btn_quit : EV_BUTTON

invariant
	valid_user_action: user_action /= Void implies (user_action.is_equal ("NONE") or user_action.is_equal ("QUIT") or user_action.is_equal ("NEW_GAME") or user_action.is_equal ("JOIN_GAME"))
end
