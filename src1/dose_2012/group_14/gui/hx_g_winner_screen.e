note
	description: "Summary description for {HX_G_WINNER_SCREEN}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	HX_G_WINNER_SCREEN

inherit
	HX_G_BOARDS

create
	constructor_winner_window


feature -- Access

	main_ui:	MAIN_WINDOW
	ui_manager: HX_G_UIMANAGER
	game : HX_L_LOGIC

feature -- Init

            constructor_winner_window(a_main_ui : MAIN_WINDOW; a_ui_manager: HX_G_UIMANAGER)
            local
            	screen: EV_SCREEN
			do
				ui_manager := a_ui_manager
				game := ui_manager.logic

				main_ui := a_main_ui
		    	make_with_title ("Hexxagon Winner")

				-- the window should be centered in the screen
				screen := create {EV_SCREEN}
				set_x_position ((screen.width  // 2) - (600 // 2))
				set_y_position ((screen.height // 2) - (600 // 2))

				-- disable user resizing for the window
				disable_user_resize
				print("WINNER SCREEN") io.new_line

			-- Create all widgets.
					create l_ev_fixed_1
					create play_again_button
					create play_new_game_button
					create go_back_to_menu_button
					create player1_label
					create player2_label
					create score1_label
					create score2_label
					create player1_pixmap
					create player2_pixmap
					create internal_pixmap

					-- Build widget structure.
							extend (l_ev_fixed_1)
							l_ev_fixed_1.extend (play_again_button)
							l_ev_fixed_1.extend (play_new_game_button)
							l_ev_fixed_1.extend (go_back_to_menu_button)
							l_ev_fixed_1.extend (player1_label)
							l_ev_fixed_1.extend (player2_label)
							l_ev_fixed_1.extend (score1_label)
							l_ev_fixed_1.extend (score2_label)
							l_ev_fixed_1.extend (player1_pixmap)
							l_ev_fixed_1.extend (player2_pixmap)

							l_ev_fixed_1.set_minimum_width (600)
							l_ev_fixed_1.set_minimum_height (600)

							l_ev_fixed_1.set_background_pixmap (pix_background)


								-- Size and position all children of `l_ev_fixed_1'.
							l_ev_fixed_1.set_item_x_position (play_again_button, 0075)
							l_ev_fixed_1.set_item_y_position (play_again_button, 0510)--
							l_ev_fixed_1.set_item_width (play_again_button, 0120)
							l_ev_fixed_1.set_item_height (play_again_button, 0070)

							l_ev_fixed_1.set_item_x_position (play_new_game_button, 0200)
							l_ev_fixed_1.set_item_y_position (play_new_game_button, 0510)--
							l_ev_fixed_1.set_item_width (play_new_game_button, 0120)
							l_ev_fixed_1.set_item_height (play_new_game_button, 0070)

							l_ev_fixed_1.set_item_x_position (go_back_to_menu_button, 0330)
							l_ev_fixed_1.set_item_y_position (go_back_to_menu_button, 0510)
							l_ev_fixed_1.set_item_width (go_back_to_menu_button, 0120)--200
							l_ev_fixed_1.set_item_height (go_back_to_menu_button, 0070)

							l_ev_fixed_1.set_item_x_position (player1_label, 0080)
							l_ev_fixed_1.set_item_y_position (player1_label, 0240)
							l_ev_fixed_1.set_item_width (player1_label, 0080)
							l_ev_fixed_1.set_item_height (player1_label, 0020)

							l_ev_fixed_1.set_item_x_position (player2_label, 0400)
							l_ev_fixed_1.set_item_y_position (player2_label, 0240)
							l_ev_fixed_1.set_item_width (player2_label, 0080)
							l_ev_fixed_1.set_item_height (player2_label, 0020)

							l_ev_fixed_1.set_item_x_position (score1_label, 0080)
							l_ev_fixed_1.set_item_y_position (score1_label, 0340)
							l_ev_fixed_1.set_item_width (score1_label, 0080)
							l_ev_fixed_1.set_item_height (score1_label, 0020)

							l_ev_fixed_1.set_item_x_position (score2_label, 0400)
							l_ev_fixed_1.set_item_y_position (score2_label, 0340)
							l_ev_fixed_1.set_item_width (score2_label, 0080)
							l_ev_fixed_1.set_item_height (score2_label, 0020)


							if game.player (1).pieces_count = get_Winner_Score()  then
								player1_label.set_text (game.player(2).name)
								score1_label.set_text (game.player(2).pieces_count.to_hex_string)
								player2_label.set_text (game.player(1).name)
								score2_label.set_text (game.player(1).pieces_count.to_hex_string)
							else
								player1_label.set_text (game.player(1).name)
								score1_label.set_text (game.player(1).pieces_count.to_hex_string)
								player2_label.set_text (game.player(2).name)
								score2_label.set_text (game.player(2).pieces_count.to_hex_string)
							end

							l_ev_fixed_1.set_item_x_position (player1_pixmap, 0400)
							l_ev_fixed_1.set_item_y_position (player1_pixmap, 0000)
						--	l_ev_fixed_1.set_item_width (player1_pixmap, 0094)
						--	l_ev_fixed_1.set_item_height (player1_pixmap, 0169)

							l_ev_fixed_1.set_item_x_position (player2_pixmap, 0040)
							l_ev_fixed_1.set_item_y_position (player2_pixmap, 0050)
						--	l_ev_fixed_1.set_item_width (player2_pixmap, 0223)
						--	l_ev_fixed_1.set_item_height (player2_pixmap, 0110)

							play_again_button.set_minimum_width (20)
							play_again_button.set_minimum_height (20)
							internal_pixmap:= pix_play_again_button
		  					play_again_button.set_pixmap(internal_pixmap)

							play_new_game_button.set_minimum_width (20)
							play_new_game_button.set_minimum_height (20)
							internal_pixmap:= pix_play_new_game_button
		  					play_new_game_button.set_pixmap(internal_pixmap)

							go_back_to_menu_button.set_minimum_width (20)
							go_back_to_menu_button.set_minimum_height (20)
							internal_pixmap:= pix_go_back_to_menu_button
		  					go_back_to_menu_button.set_pixmap(internal_pixmap)

							player1_pixmap.set_with_named_file ("dose_2012/images/group14/Winner.png")
							player2_pixmap.set_with_named_file ("dose_2012/images/group14/loser.png")

							set_minimum_width (600)
							set_minimum_height (600)
							set_maximum_width (600)
							set_maximum_height (600)
							set_title ("Winner Screen")

							play_again_button.select_actions.extend (agent play_again)
							play_new_game_button.select_actions.extend (agent play_new_game)
							go_back_to_menu_button.select_actions.extend (agent go_back_to_menu)

							-- Close the application when an interface close
							-- request is recieved on `Current'. i.e. the cross is clicked.
							close_request_actions.extend (agent destroy_and_exit_if_last)
		end


feature

	play_again_button, play_new_game_button, go_back_to_menu_button: EV_BUTTON
	player1_label, player2_label,
	score1_label, score2_label: EV_LABEL
	player1_pixmap, player2_pixmap: EV_PIXMAP
	internal_pixmap: EV_PIXMAP
	score : INTEGER



feature {NONE} -- Implementation

	l_ev_fixed_1: EV_FIXED




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
		--It needs some initialization before calling the game screen

		create game_window.make(main_ui,ui_manager)
		game_window.show
		destroy
	end

	go_back_to_menu
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
            	board : HX_L_IBOARD
            	winner_player : HX_L_IPLAYER
            do
            	board := game.board
				winner_player := board.winner
				score := board.winner.pieces_count

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
			Result.set_with_named_file (file_system.pathname_to_string (img_play_new_game_winner))
		end

		pix_play_again_button: EV_PIXMAP
				-- returns the play_again_button for the active game
		once
				create Result
				Result.set_with_named_file (file_system.pathname_to_string (img_play_again_winner))
		end

		pix_go_back_to_menu_button: EV_PIXMAP
			-- returns the go_back_button for the active game
		once
			create Result
			Result.set_with_named_file (file_system.pathname_to_string (img_go_back_winner))
		end

end
