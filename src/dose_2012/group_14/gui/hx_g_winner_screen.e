note
	description: "Summary description for {HX_G_WINNER_SCREEN}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

deferred class
	HX_G_WINNER_SCREEN
inherit
	HX_G_BOARDS

feature

            constructor_winner_window(a_main_ui : MAIN_WINDOW)
            local
			internal_pixmap: EV_PIXMAP
		do
			main_ui := a_main_ui_window
		    make_with_title ("Hexxagon Winner")

			create internal_pixmap

				-- Build widget structure.
			extend (l_ev_table_1)


			-- the window should be centered in the screen
					screen := create {EV_SCREEN}
					set_x_position ((screen.width // 2) - (600 // 2))
					set_y_position ((screen.height // 2) -(600 // 2))

				-- Create all widgets.
						create l_ev_table_1
						create play_new_game_button
						create play_again_button
						create go_back_button
						create l_ev_label_1
						create winner_loser_pixmap


			l_ev_table_1.set_minimum_width (600)
			l_ev_table_1.set_minimum_height (600)

			l_ev_table_1.set_background_pixmap (pix_background)
			l_ev_table_1.resize (4, 17)
				-- Insert and position all children of `l_ev_table_1'.
			l_ev_table_1.put_at_position (play_new_game_button, 2, 14, 2, 1)
			l_ev_table_1.put_at_position (play_again_button, 2, 15, 2, 1)
			l_ev_table_1.put_at_position (go_back_button, 2, 16, 2, 1)
			l_ev_table_1.put_at_position (l_ev_label_1, 2, 9, 2, 1)
			l_ev_table_1.put_at_position (winner_loser_pixmap, 1, 1, 4, 4)

			play_new_game_button.set_minimum_width (80)
			play_new_game_button.set_minimum_height (50)
			internal_pixmap:=pix_play_new_game_button
			play_new_game_button.set_pixmap(internal_pixmap)

			play_again_button.set_minimum_width (50)
			play_again_button.set_minimum_height (50)
			internal_pixmap:=pix_play_again_button
			play_again_button.set_pixmap (internal_pixmap)

			go_back_button.set_minimum_width (80)
			go_back_button.set_minimum_height (50)
			internal_pixmap:=pix_go_back_button
			go_back_button.set_pixmap (internal_pixmap)

			score := get_Winner_Score()
			l_ev_label_1.set_text (score.to_string)

			if get_Winner_Name() = Current.name then
				winner_loser_pixmap.set_with_named_file ("")
				--winner_loser_pixmap.set_pixmap_path()
			else
				winner_loser_pixmap.set_with_named_file ("")
			end

			set_minimum_width (600)
			set_minimum_height (600)
			set_maximum_width (600)
			set_maximum_height (600)
			set_title ("Hexxagon Game")

		--	set_all_attributes_using_constants

				-- Connect events.
			play_new_game_button.select_actions.extend (agent play_new_game)
			play_again_button.select_actions.extend (agent play_again)
			go_back_button.select_actions.extend (agent go_back)
				-- Close the application when an interface close
				-- request is recieved on `Current'. i.e. the cross is clicked.
			close_request_actions.extend (agent destroy_and_exit_if_last)


		end
feature -- Access

	main_ui:	MAIN_WINDOW
	play_new_game_button, play_again_button, go_back_button: EV_BUTTON
	winner_loser_pixmap: EV_PIXMAP
	score : INTEGER
	internal_pixmap: EV_PIXMAP

feature-- Implementation

	l_ev_table_1: EV_TABLE
	l_ev_label_1: EV_LABEL

feature -- Implementation

	play_new_game
			-- Called by `select_actions' of `play_new_game_button'.
	local
			play_game_window: HX_G_PLAY_GAME_SCREEN
		do
			create play_game_window.make(main_ui)
			play_game_window.show
			destroy
		end

	play_again
			-- Called by `select_actions' of `play_again_button'.
	local
		game_window: HX_G_GAME_SCREEN   --Not sure about this method
	do
		create game_window.make(main_ui)
		game_window.show
		destroy
	end

	go_back
			-- Called by `select_actions' of `go_back_button'.
	local
		menu_window: HX_G_MAIN_MENU_SCREEN
	do
		create menu_window.make(main_ui)
		menu_window.show
		destroy
	end

feature

            get_Winner_Name() : STRING
            local
            	board : HX_L_BOARD
            	winner_player : HX_L_IPLAYER
            do
				winner_player := board.winner

				Result := winner_player.name
            end

            get_Winner_Score() : INTEGER
            local
            	board : HX_L_BOARD
            	winner_player : HX_L_IPLAYER
            	score : INTEGER
            do
				winner_player := board.winner
				score := pieces_count(winner_player)

				Result := score
            end

feature --images attributes

		pix_background: EV_PIXMAP
			-- returns the background for the active game
		once
			create Result
			Result.set_with_named_file (file_system.pathname_to_string (img_background))
		end

		pix_play_new_game_button: EV_PIXMAP
			-- returns the play_new_game_button for the active game
		once
			create Result
			Result.set_with_named_file (file_system.pathname_to_string (img_play_new_game_button))
		end

		pix_play_again_button: EV_PIXMAP
				-- returns the play_again_button for the active game
		once
				create Result
				Result.set_with_named_file (file_system.pathname_to_string (img_play_again_button))
		end

		pix_go_back_button: EV_PIXMAP
			-- returns the go_back_button for the active game
		once
			create Result
			Result.set_with_named_file (file_system.pathname_to_string (img_go_back_button))
		end

end
