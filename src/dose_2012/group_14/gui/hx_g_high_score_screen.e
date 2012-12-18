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
			create l_ev_fixed_1
			create highscore
			create go_back_button

			-- disable user resizing for the window
			disable_user_resize

	 			-- Build widget structure.
			extend (l_ev_fixed_1)

			l_ev_fixed_1.set_background_pixmap (pix_background)
		--	l_ev_table_1.resize (4, 8)

			l_ev_fixed_1.extend (go_back_button)
			l_ev_fixed_1.extend (highscore)


			l_ev_fixed_1.set_item_x_position (go_back_button, 0130)
			l_ev_fixed_1.set_item_y_position (go_back_button, 0450)
		--	l_ev_fixed_1.set_item_width (go_back_button, 0200)
			l_ev_fixed_1.set_item_height (go_back_button, 0025)

			l_ev_fixed_1.set_item_x_position (highscore, 0150)
			l_ev_fixed_1.set_item_y_position (highscore, 0050)
			l_ev_fixed_1.set_item_width (highscore, 0290)
			l_ev_fixed_1.set_item_height (highscore, 0300)

				-- Insert and position all children of `l_ev_table_1'.
		--	l_ev_table_1.put_at_position (highscore, 2, 2, 2, 3)
		--	l_ev_table_1.put_at_position (go_back_button, 2, 6, 2, 1)

		--	l_ev_table_1.enable_homogeneous

			highscore.disable_edit

		-- Waiting to fix HX_L_HIGHSCORE
			Get_High_Score()
			high_score_string := high_score_int.out
			highscore.disable_capture
			highscore.append_text ("HIGH SCORE! %N %N")
			highscore.append_text ("Score:  ")
			highscore.append_text (high_score_string)
			highscore.append_text ("%NPlayer:  ")
			highscore.append_text (high_score_player_name)

			-- Connect events.
			go_back_button.select_actions.extend (agent go_back_button_action)
			close_request_actions.extend (agent destroy_and_exit_if_last)

			-- go_back_button
			go_back_button.set_minimum_width (330)
			go_back_button.set_minimum_height (60)
			internal_pixmap:= pix_go_back_button
			go_back_button.set_pixmap(internal_pixmap)

			--Mouse over actions
			go_back_button.pointer_enter_actions.extend (agent pointer_enter_area(go_back_button))
			go_back_button.pointer_leave_actions.extend (agent pointer_leave_area(go_back_button))


			set_minimum_width (600)
			set_minimum_height (600)
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
		high_score_player_name := logic.highscore.player_name
	end

feature -- Access

	main_ui            : MAIN_WINDOW
	highscore          : EV_RICH_TEXT
	go_back_button     : EV_BUTTON
	internal_pixmap    : EV_PIXMAP
	high_score_int     : INTEGER
	high_score_string  : STRING
	high_score_player_name: STRING

feature -- Implementation

	l_ev_fixed_1: EV_FIXED

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

---Hover---

	pix_go_back_hover: EV_PIXMAP
			-- returns the go_back_button for the active game
	once
			create Result
			Result.set_with_named_file (file_system.pathname_to_string (img_go_back_button_2_hover))
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

feature -- Implementation pointer events


	pointer_enter_area (a_area: EV_BUTTON)
			-- the pointer is entering the area used as a button
		do
			if a_area = go_back_button then
				internal_pixmap:=pix_go_back_hover
		   		go_back_button.set_pixmap(internal_pixmap)
			end
		end

	pointer_leave_area (a_area: EV_BUTTON)
			-- the pointer is leaving the area used as a button
		do
			if a_area = go_back_button then
				internal_pixmap:=pix_go_back_button
		   		go_back_button.set_pixmap(internal_pixmap)
		   	end
		end

end


