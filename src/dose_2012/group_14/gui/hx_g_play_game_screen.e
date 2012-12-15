note
	description: "Summary description for {HX_G_PLAY_GAME_SCREEN}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	HX_G_PLAY_GAME_SCREEN

inherit
	HX_G_BOARDS

create
	make

feature --Access

	main_ui								: MAIN_WINDOW
	l_ev_vertical_box_1					: EV_VERTICAL_BOX
	play_game_vs_pc_button 				: EV_BUTTON
    play_game_vs_player_button 			: EV_BUTTON
    play_game_vs_network_player_button 	: EV_BUTTON
    go_back_button						: EV_BUTTON
    internal_pixmap						: EV_PIXMAP


feature --Init

	make(a_main_ui_window : MAIN_WINDOW)
	local
		screen : EV_SCREEN

	do
		main_ui := a_main_ui_window
		make_with_title ("Choose How To Play The New Game")

		-- the window should be centered in the screen
		screen := create {EV_SCREEN}
		set_x_position ((screen.width // 2) - (600 // 2))
		set_y_position ((screen.height // 2) -(600 // 2))

		-- disable user resizing for the window
		disable_user_resize

		create l_ev_vertical_box_1
	    create play_game_vs_pc_button
	    create play_game_vs_player_button
	    create play_game_vs_network_player_button
	    create go_back_button

    	-- Build widget structure.
		extend (l_ev_vertical_box_1)
		l_ev_vertical_box_1.set_background_pixmap (pix_background)

		l_ev_vertical_box_1.extend (play_game_vs_pc_button)
		l_ev_vertical_box_1.extend (play_game_vs_player_button)
		l_ev_vertical_box_1.extend (play_game_vs_network_player_button)
		l_ev_vertical_box_1.extend (go_back_button)

		l_ev_vertical_box_1.set_padding (10)
		l_ev_vertical_box_1.set_border_width (160)

--		play_game_vs_pc_button.set_text ("Play Game vs Pc ")
		play_game_vs_pc_button.set_minimum_width (86)
		play_game_vs_pc_button.set_minimum_height (25)
		internal_pixmap:= pix_play_game_vs_pc
		play_game_vs_pc_button.set_pixmap(internal_pixmap)

---		play_game_vs_player_button.set_text ("Play Game vs Player on same Pc")
		play_game_vs_player_button.set_minimum_width (86)
		play_game_vs_player_button.set_minimum_height (25)
		internal_pixmap:= pix_play_game_vs_player
		play_game_vs_player_button.set_pixmap(internal_pixmap)

--		play_game_vs_network_player_button.set_text ("Play Game vs Player on network")
		play_game_vs_network_player_button.set_minimum_width (86)
		play_game_vs_network_player_button.set_minimum_height (25)
		internal_pixmap:= pix_play_game_vs_network_player
		play_game_vs_network_player_button.set_pixmap(internal_pixmap)

	--	go_back_button.set_text ("Go Back")
		-- go_back_button
		go_back_button.set_minimum_width (86)
		go_back_button.set_minimum_height (25)
		internal_pixmap:= pix_go_back_button_2
		go_back_button.set_pixmap(internal_pixmap)

		set_minimum_width (600)
		set_minimum_height (600)
		set_title ("Choose How To Play The New Game")

		-- Connect events.
		play_game_vs_pc_button.select_actions.extend (agent play_game_vs_pc_action)
		play_game_vs_player_button.select_actions.extend (agent play_game_vs_player_action)
		play_game_vs_network_player_button.select_actions.extend (agent play_game_vs_network_player_action)
		go_back_button.select_actions.extend (agent go_back_action)

		-- Close the application when an interface close
		-- request is recieved on `Current'. i.e. the cross is clicked.
		close_request_actions.extend (agent destroy_and_exit_if_last)

	end



feature -- action events


   	play_game_vs_pc_action
			-- Called by `select_actions' of `play_game_vs_pc_btn'.
		local
			name_level_screen: HX_G_NAME_LEVEL_SCREEN
			ui_manager: HX_G_UIMANAGER
		do
			-- store num of players	
			create ui_manager.make
		 	ui_manager.set_one_player
		 	print("PLAY_GAME: numplayers:")
		 	print(ui_manager.numplayers)

			create name_level_screen.make(main_ui,ui_manager)
			name_level_screen.show
			destroy
		end


	play_game_vs_player_action
			-- Called by `select_actions' of `play_game_vs_pc_action_btn'.
		local
			name_level_screen: HX_G_NAME_LEVEL_SCREEN
			ui_manager: HX_G_UIMANAGER
		do
			-- store num of players
			create ui_manager.make
			ui_manager.set_multi_one_player

			create name_level_screen.make(main_ui,ui_manager)
			name_level_screen.show
			destroy
		end


	play_game_vs_network_player_action
			-- Called by `select_actions' of `play_game_vs_pc_action_btn'.
		local
			name_level_screen: HX_G_NAME_LEVEL_SCREEN
			ui_manager: HX_G_UIMANAGER
		do
			-- store num of players
			create ui_manager.make
			ui_manager.set_multi_two_players

			create name_level_screen.make(main_ui,ui_manager)
			name_level_screen.show
			destroy
		end


	go_back_action
			-- Called by `select_actions' of `go_back_btn'.
		local
			window:  HX_G_MAIN_MENU_SCREEN
		do
			create window.make(main_ui)
			window.show
			destroy
		end


feature -- images

	pix_background: EV_PIXMAP
			-- returns the background for the active game
	once
			create Result
			Result.set_with_named_file (file_system.pathname_to_string (img_background))
	end

	pix_go_back_button_2: EV_PIXMAP
			-- returns the go_back_button for the active game
	once
			create Result
			Result.set_with_named_file (file_system.pathname_to_string (img_back_to_menu))--go_back_button_2))
	end

	pix_play_game_vs_pc: EV_PIXMAP
			-- returns the go_back_button for the active game
	once
			create Result
			Result.set_with_named_file (file_system.pathname_to_string (img_play_game_vs_pc))
	end

	pix_play_game_vs_player: EV_PIXMAP
			-- returns the go_back_button for the active game
	once
			create Result
			Result.set_with_named_file (file_system.pathname_to_string (img_play_game_vs_player))
	end

	pix_play_game_vs_network_player: EV_PIXMAP
			-- returns the go_back_button for the active game
	once
			create Result
			Result.set_with_named_file (file_system.pathname_to_string (img_play_game_vs_network_player))
	end

end
