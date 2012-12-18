note
	description: "Summary description for {HX_G_MAIN_MENU_SCREEN}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	HX_G_MAIN_MENU_SCREEN

inherit
	HX_G_BOARDS


create
	make


feature -- Access

	main_ui	: MAIN_WINDOW
	con_main: EV_FIXED
	box_buttons: EV_VERTICAL_BOX
	new_game_button, high_score_button, preferences_button, about_button,help_button, quit_button: EV_BUTTON
	internal_pixmap: EV_PIXMAP
	ui_manager : HX_G_UIMANAGER
	logic : HX_L_LOGIC

feature -- Init

        make(a_main_ui_window: MAIN_WINDOW )
			-- Creation procedure
		local
			screen: EV_SCREEN
		do
			-- Store the main_ui object. We want to restore it later on (it's currently minimized).
			main_ui := a_main_ui_window

			-- Create the window.
			make_with_title ("Hexxagon Game")

			-- the window should be centered in the screen
			screen := create {EV_SCREEN}
			set_x_position ((screen.width  // 2) - (600 // 2))
			set_y_position ((screen.height // 2) - (600 // 2))

			-- disable user resizing for the window
			disable_user_resize

			-- Create all widgets.
			create con_main
			create box_buttons
			create new_game_button
			create high_score_button
			create preferences_button
			create about_button
			create help_button
			create quit_button


			-- Build widget structure.
			extend (con_main)
			con_main.extend (box_buttons)
			box_buttons.extend (new_game_button)
			box_buttons.extend (high_score_button)
			box_buttons.extend (preferences_button)
			box_buttons.extend (about_button)
			box_buttons.extend (help_button)
			box_buttons.extend (quit_button)

			con_main.set_minimum_width (600)
			con_main.set_minimum_height(550)
			con_main.set_background_pixmap (pix_background)

			-- Size and position all children of `con_main'.
			con_main.set_item_x_position (box_buttons, 0120)
			con_main.set_item_y_position (box_buttons, 0100) --50
 			con_main.set_item_width (box_buttons, 0340)--384
 			con_main.set_item_height(box_buttons, 0355)--405

 			box_buttons.set_padding (3)
 			box_buttons.set_background_pixmap (pix_background)

			box_buttons.enable_homogeneous

			-- new_game_button:
	  		new_game_button.set_minimum_width (86)
	  		new_game_button.set_minimum_height (25)
	 	 	internal_pixmap:=pix_play_game_button
		   	new_game_button.set_pixmap(internal_pixmap)


			-- high_score_button:
			high_score_button.set_minimum_width (86)
			high_score_button.set_minimum_height (25)
		  	internal_pixmap := pix_high_score_button
		 	high_score_button.set_pixmap(internal_pixmap)

			-- preferences_button:
			preferences_button.set_minimum_width (86)
			preferences_button.set_minimum_height (25)
		 	internal_pixmap:= pix_preferences_button
		  	preferences_button.set_pixmap(internal_pixmap)

			-- about_button
			about_button.set_minimum_width (86)
			about_button.set_minimum_height (25)
		 	internal_pixmap:= pix_about_button
		  	about_button.set_pixmap(internal_pixmap)


			-- help_button
			help_button.set_minimum_width (86)
			help_button.set_minimum_height (25)
		 	internal_pixmap:= pix_help_button
		  	help_button.set_pixmap(internal_pixmap)


			-- quit_button
			quit_button.set_minimum_width (86)
			quit_button.set_minimum_height (25)
		 	internal_pixmap:= pix_quit_button
		  	quit_button.set_pixmap(internal_pixmap)

			disable_user_resize
			set_minimum_width(600)
			set_minimum_height(600)
		 	set_maximum_width (600)
			set_maximum_height (600)
			set_title ("Hexxagon")

			-- Connect events.
	 		new_game_button.select_actions.extend (agent play_new_game_action)
			preferences_button.select_actions.extend (agent preferences_action)
			high_score_button.select_actions.extend (agent highscores_actions)
			help_button.select_actions.extend (agent help_action)
			about_button.select_actions.extend (agent about_action)
			quit_button.select_actions.extend(agent quit_action)

			--Mouse over actions
			new_game_button.pointer_enter_actions.extend (agent pointer_enter_area(new_game_button))
			new_game_button.pointer_leave_actions.extend (agent pointer_leave_area(new_game_button))

			preferences_button.pointer_enter_actions.extend (agent pointer_enter_area(preferences_button))
			preferences_button.pointer_leave_actions.extend (agent pointer_leave_area(preferences_button))

			high_score_button.pointer_enter_actions.extend (agent pointer_enter_area(high_score_button))
			high_score_button.pointer_leave_actions.extend (agent pointer_leave_area(high_score_button))

			help_button.pointer_enter_actions.extend (agent pointer_enter_area(help_button))
			help_button.pointer_leave_actions.extend (agent pointer_leave_area(help_button))

			about_button.pointer_enter_actions.extend (agent pointer_enter_area(about_button))
			about_button.pointer_leave_actions.extend (agent pointer_leave_area(about_button))

			quit_button.pointer_enter_actions.extend (agent pointer_enter_area(quit_button))
			quit_button.pointer_leave_actions.extend (agent pointer_leave_area(quit_button))


		end

feature -- Implementation pointer events


	pointer_enter_area (a_area: EV_BUTTON)
			-- the pointer is entering the area used as a button
		do
			if a_area = new_game_button then
				internal_pixmap:=pix_play_game_button_hover
		   		new_game_button.set_pixmap(internal_pixmap)
			elseif a_area = preferences_button then
				internal_pixmap:=pix_preferences_button_hover
		   		preferences_button.set_pixmap(internal_pixmap)
			elseif a_area = high_score_button then
				internal_pixmap := pix_high_score_button_hover
		  		high_score_button.set_pixmap(internal_pixmap)
			elseif a_area = help_button then
				internal_pixmap:= pix_help_button_hover
		  		help_button.set_pixmap(internal_pixmap)
			elseif a_area = about_button then
				internal_pixmap:= pix_about_button_hover
		  		about_button.set_pixmap(internal_pixmap)
			elseif a_area = quit_button then
				internal_pixmap:= pix_quit_button_hover
		  		quit_button.set_pixmap(internal_pixmap)
			end
		end

	pointer_leave_area (a_area: EV_BUTTON)
			-- the pointer is leaving the area used as a button
		do
			if a_area = new_game_button then
				internal_pixmap:=pix_play_game_button
		   		new_game_button.set_pixmap(internal_pixmap)
			elseif a_area = preferences_button then
				internal_pixmap:=pix_preferences_button
		   		preferences_button.set_pixmap(internal_pixmap)
			elseif a_area = high_score_button then
				internal_pixmap := pix_high_score_button
		  		high_score_button.set_pixmap(internal_pixmap)
			elseif a_area = help_button then
				internal_pixmap:= pix_help_button
		  		help_button.set_pixmap(internal_pixmap)
			elseif a_area = about_button then
				internal_pixmap:= pix_about_button
		  		about_button.set_pixmap(internal_pixmap)
			elseif a_area = quit_button then
				internal_pixmap:= pix_quit_button
		  		quit_button.set_pixmap(internal_pixmap)
			end
		end


feature --images attributes

		pix_background: EV_PIXMAP
			-- returns the background for the active game
		once
			create Result
			Result.set_with_named_file (file_system.pathname_to_string (img_background))
		end

		pix_play_game_button: EV_PIXMAP
			-- returns the play_game_button for the active game
		once
			create Result
			Result.set_with_named_file (file_system.pathname_to_string (img_play_game_button))
		end

		pix_preferences_button: EV_PIXMAP
			-- returns the preferences_button for the active game
		once
			create Result
			Result.set_with_named_file (file_system.pathname_to_string (img_preferences_button))
		end

		pix_high_score_button: EV_PIXMAP
			-- returns the high_score_button for the active game
		once
			create Result
			Result.set_with_named_file (file_system.pathname_to_string (img_high_score_button))
		end

		pix_about_button: EV_PIXMAP
			-- returns the about_button for the active game
		once
			create Result
			Result.set_with_named_file (file_system.pathname_to_string (img_about_button))
		end

		pix_help_button: EV_PIXMAP
			-- returns the help_button for the active game
		once
			create Result
			Result.set_with_named_file (file_system.pathname_to_string (img_help_button))
		end

		pix_quit_button: EV_PIXMAP
			-- returns the help_button for the active game
		once
			create Result
			Result.set_with_named_file (file_system.pathname_to_string (img_quit_button))
		end

		pix_play_game_button_hover: EV_PIXMAP
			-- returns the help_button for the active game
		once
			create Result
			Result.set_with_named_file (file_system.pathname_to_string (img_play_hover))
		end

		--------Hover------

		pix_preferences_button_hover: EV_PIXMAP
			-- returns the preferences_button for the active game
		once
			create Result
			Result.set_with_named_file (file_system.pathname_to_string (img_preferences_hover))
		end

		pix_help_button_hover: EV_PIXMAP
			-- returns the help_button for the active game
		once
			create Result
			Result.set_with_named_file (file_system.pathname_to_string (img_help_hover))
		end

		pix_about_button_hover: EV_PIXMAP
			-- returns the help_button for the active game
		once
			create Result
			Result.set_with_named_file (file_system.pathname_to_string (img_about_hover))
		end

		pix_high_score_button_hover: EV_PIXMAP
			-- returns the help_button for the active game
		once
			create Result
			Result.set_with_named_file (file_system.pathname_to_string (img_high_score_hover))
		end

		pix_quit_button_hover: EV_PIXMAP
			-- returns the help_button for the active game
		once
			create Result
			Result.set_with_named_file (file_system.pathname_to_string (img_quit_hover))
		end

feature -- actions

		play_new_game_action
				-- Called by `select_actions' of `play_new_game_btn'.
			local
				play_game_window: HX_G_PLAY_GAME_SCREEN
			do
				create play_game_window.make(main_ui)
				play_game_window.show
				destroy
			end

		preferences_action
				-- Called by `select_actions' of `preferences_btn'.
			local
				preferences_screen : HX_G_PREFERENCES_SCREEN
			do
				create preferences_screen.make(main_ui)
				preferences_screen.show
				destroy
			end

		highscores_actions
				-- Called by `select_actions' of `highscores_btn'.
			local highscore_screen : HX_G_HIGH_SCORE_SCREEN
			do
				create highscore_screen.make(main_ui)
				highscore_screen.show
				destroy
			end


		help_action
				-- Called by `select_actions' of `help_btn'.
			local
				help_window: HX_G_HELP_SCREEN
			do
				create help_window.make(main_ui,600,600)
				help_window.show
				destroy
			end

		about_action
				-- Called by `select_actions' of `about_btn'.
		local
				about_window: HX_G_ABOUT_SCREEN
		do
				create about_window.make(main_ui)
				about_window.show
				destroy
		end

		quit_action
			-- Called by `select_actions' of `quit_btn'.
		do
			destroy
		end


end
