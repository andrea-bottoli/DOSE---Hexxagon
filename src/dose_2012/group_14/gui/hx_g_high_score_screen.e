note
	description: "Summary description for {HX_G_HIGH_SCORE_SCREEN}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	HX_G_HIGH_SCORE_SCREEN

inherit
	HX_G_BOARDS

create
	make

feature

	make(a_main_ui : MAIN_WINDOW)
	local
			screen: EV_SCREEN
	 do
	 		main_ui := a_main_ui
			-- Create the window.
			make_with_title ("Hexxagon Highscores!")

			-- the window should be centered in the screen
			screen := create {EV_SCREEN}
			set_x_position ((screen.width  // 2) - (600 // 2))
			set_y_position ((screen.height // 2) - (600 // 2))

			-- Create all widgets.
			create l_ev_table_1
			create highscore
			create go_back_button

			-- disable user resizing for the window
			disable_user_resize

	 			-- Build widget structure.
			extend (l_ev_table_1)

			l_ev_table_1.set_background_pixmap (pix_background)
			l_ev_table_1.resize (4, 8)


				-- Insert and position all children of `l_ev_table_1'.
			l_ev_table_1.put_at_position (highscore, 2, 2, 2, 3)
			l_ev_table_1.put_at_position (go_back_button, 2, 6, 2, 1)

			l_ev_table_1.enable_homogeneous

			highscore.disable_edit

		-- Waiting to fix HX_L_HIGHSCORE
			--Get_High_Score()
			--high_score_string := high_score_int.to_hex_string
			--highscore.disable_capture
			highscore.append_text ("HIGH SCORE! %N %N")
			--highscore.append_text (high_score_string)

			-- Connect events.
			go_back_button.select_actions.extend (agent go_back_button_action)
			close_request_actions.extend (agent destroy_and_exit_if_last)

			-- go_back_button
			go_back_button.set_minimum_width (86)
			go_back_button.set_minimum_height (25)
			internal_pixmap:= pix_go_back_button
			go_back_button.set_pixmap(internal_pixmap)

			set_minimum_width (600)
			set_minimum_height (580)
			set_maximum_width (600)
			set_maximum_height (600)
			set_title ("High Scores Window")


	end

	Get_High_Score()
	local
		logic : HX_L_LOGIC
		ui_manager		: HX_G_UIMANAGER
	do
		create ui_manager.make
		create logic.initialize (ui_manager)
		high_score_int := logic.highscore.high_score
	end

feature -- Access

	main_ui            : MAIN_WINDOW
	highscore          : EV_RICH_TEXT
	go_back_button     : EV_BUTTON
	internal_pixmap    : EV_PIXMAP
	high_score_int     : INTEGER
	high_score_string  : STRING

feature -- Implementation

	l_ev_table_1: EV_TABLE

feature -- images

	pix_background: EV_PIXMAP
			-- returns the background for the active game
	once
			create Result
			Result.set_with_named_file (file_system.pathname_to_string (img_background))
	end

	pix_go_back_button: EV_PIXMAP
			-- returns the go_back_button for the active game
	once
			create Result
			Result.set_with_named_file (file_system.pathname_to_string (img_go_back_button_2))
	end

feature -- Implementation


	go_back_button_action
			-- Called by `select_actions' of `go_back_button'.
	local
		menu_window: HX_G_MAIN_MENU_SCREEN
	do
		create menu_window.make(main_ui)
		menu_window.show
		destroy
	end


end


