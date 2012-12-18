note
	description: "Summary description for {HX_G_PREFERENCES_SCREEN}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	HX_G_PREFERENCES_SCREEN

inherit
	HX_G_BOARDS
create
	make

feature

            make(a_main_ui : MAIN_WINDOW)
            local
				screen : EV_SCREEN
				internal_pixmap: EV_PIXMAP
            do
				main_ui := a_main_ui
				make_with_title ("Choose Your Preference")

				-- the window should be centered in the screen
				screen := create {EV_SCREEN}
				set_x_position ((screen.width // 2) - (600 // 2))
				set_y_position ((screen.height // 2) -(600 // 2))

				-- disable user resizing for the window
				disable_user_resize

				-- Create all widgets.
						create l_ev_fixed_1
						create pix_piece1
						create pix_piece2
						create pix_piece3
						create pix_piece4
						create piece1
						create piece2
						create piece3
						create piece4
						create go_back_button
						create save_button

				create internal_pixmap

				-- Build widget structure.
			extend (l_ev_fixed_1)
			l_ev_fixed_1.extend (pix_piece1)
			l_ev_fixed_1.extend (pix_piece2)
			l_ev_fixed_1.extend (pix_piece3)
			l_ev_fixed_1.extend (pix_piece4)
			l_ev_fixed_1.extend (piece1)
			l_ev_fixed_1.extend (piece2)
			l_ev_fixed_1.extend (piece3)
			l_ev_fixed_1.extend (piece4)
			l_ev_fixed_1.extend (go_back_button)
			l_ev_fixed_1.extend (save_button)

			l_ev_fixed_1.set_minimum_width (600)
			l_ev_fixed_1.set_minimum_height (580)

			l_ev_fixed_1.set_background_pixmap (pix_background)

				-- Size and position all children of `l_ev_fixed_1'.
			l_ev_fixed_1.set_item_x_position (pix_piece1, 0100)
			l_ev_fixed_1.set_item_y_position (pix_piece1, 0065)
			l_ev_fixed_1.set_item_width (pix_piece1, 0001)
			l_ev_fixed_1.set_item_height (pix_piece1, 0001)
			internal_pixmap:= pix_player_piece1
			pix_piece1.set_pixmap(internal_pixmap)

			l_ev_fixed_1.set_item_x_position (pix_piece2, 0100)
			l_ev_fixed_1.set_item_y_position (pix_piece2, 0260)
			l_ev_fixed_1.set_item_width (pix_piece2, 0001)
			l_ev_fixed_1.set_item_height (pix_piece2, 0001)
			internal_pixmap:= pix_player_piece2
			pix_piece2.set_pixmap(internal_pixmap)

			l_ev_fixed_1.set_item_x_position (pix_piece3, 0320)
			l_ev_fixed_1.set_item_y_position (pix_piece3, 0065)
			l_ev_fixed_1.set_item_width (pix_piece3, 0001)
			l_ev_fixed_1.set_item_height (pix_piece3, 0001)
			internal_pixmap:= pix_player_piece3
			pix_piece3.set_pixmap(internal_pixmap)

			l_ev_fixed_1.set_item_x_position (pix_piece4, 0320)
			l_ev_fixed_1.set_item_y_position (pix_piece4, 0260)
			l_ev_fixed_1.set_item_width (pix_piece4, 0001)
			l_ev_fixed_1.set_item_height (pix_piece4, 0001)
			internal_pixmap:= pix_player_piece4
			pix_piece4.set_pixmap(internal_pixmap)

			l_ev_fixed_1.set_item_x_position (piece1, 0100)
			l_ev_fixed_1.set_item_y_position (piece1, 0170)
			l_ev_fixed_1.set_item_width (piece1, 0020)
			l_ev_fixed_1.set_item_height (piece1, 0020)

			l_ev_fixed_1.set_item_x_position (piece2, 0100)
			l_ev_fixed_1.set_item_y_position (piece2, 0370)
			l_ev_fixed_1.set_item_width (piece2, 0020)
			l_ev_fixed_1.set_item_height (piece2, 0020)

			l_ev_fixed_1.set_item_x_position (piece3, 0320)
			l_ev_fixed_1.set_item_y_position (piece3, 0170)
			l_ev_fixed_1.set_item_width (piece3, 0020)
			l_ev_fixed_1.set_item_height (piece3, 0020)

			l_ev_fixed_1.set_item_x_position (piece4, 0320)
			l_ev_fixed_1.set_item_y_position (piece4, 0370)
			l_ev_fixed_1.set_item_width (piece4, 0020)
			l_ev_fixed_1.set_item_height (piece4, 0020)

			l_ev_fixed_1.set_item_x_position (go_back_button, 0100)
			l_ev_fixed_1.set_item_y_position (go_back_button, 0420)
			l_ev_fixed_1.set_item_width (go_back_button, 0280)
			l_ev_fixed_1.set_item_height (go_back_button, 0050)

			l_ev_fixed_1.set_item_x_position (save_button, 0100)
			l_ev_fixed_1.set_item_y_position (save_button, 0481)
			l_ev_fixed_1.set_item_width (save_button, 0280)
			l_ev_fixed_1.set_item_height (save_button, 0050)

			pix_piece1.set_minimum_width (20)
			pix_piece1.set_minimum_height (20)

			pix_piece2.set_minimum_width (20)
			pix_piece2.set_minimum_height (20)

			pix_piece3.set_minimum_width (20)
			pix_piece3.set_minimum_height (20)

			pix_piece4.set_minimum_width (20)
			pix_piece4.set_minimum_height (20)

			go_back_button.set_minimum_width (86)
			go_back_button.set_minimum_height (25)
			internal_pixmap:= pix_back_to_menu
			go_back_button.set_pixmap(internal_pixmap)

			save_button.set_minimum_width (86)
			save_button.set_minimum_height (25)
			internal_pixmap:= pix_save
			save_button.set_pixmap(internal_pixmap)

				set_minimum_width (600)
				set_minimum_height (580)
				set_maximum_width (600)
				set_maximum_height (580)
				set_title ("Preferences window")

				-- Connect events.
				piece1.select_actions.extend (agent piece1_action)
				piece2.select_actions.extend (agent piece2_action)
				piece3.select_actions.extend (agent piece3_action)
				piece4.select_actions.extend (agent piece4_action)
				save_button.select_actions.extend 	 (agent save_button_action)
				go_back_button.select_actions.extend (agent go_back)

				close_request_actions.extend (agent destroy_and_exit_if_last)

            end


			set_Piece( a_piece : STRING)
            do

            end

            setBackground()
            do

            end
feature

	 main_ui : MAIN_WINDOW
	 piece_images : ARRAY [ STRING]
     background_images : ARRAY[STRING]
     save_Button : EV_BUTTON

feature -- Access

	pix_piece1, pix_piece2, pix_piece3, pix_piece4: EV_BUTTON
	piece1, piece2, piece3,
	piece4: EV_RADIO_BUTTON
	go_back_button : EV_BUTTON

feature {NONE} -- Implementation

	l_ev_fixed_1: EV_FIXED

feature {NONE} -- Implementation

	piece1_action
			-- Called by `select_actions' of `piece1'.
		do
			--Change picture
		end

	piece2_action
			-- Called by `select_actions' of `piece2'.
		do
			--Change picture
		end

	piece3_action
			-- Called by `select_actions' of `piece3'.
		do
			--Change picture
		end

	piece4_action
			-- Called by `select_actions' of `piece4'.
		do
			--Change picture
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

	save_button_action
			-- Called by `select_actions' of `save_button'.
	local
--		logic       : HX_L_LOGIC
--		ui_manager	: HX_G_UIMANAGER
	do
		--Save it in the file
--		create ui_manager.make
--		create logic.initialize (ui_manager)
--		logic.preferences.save --Returns Ipreference? why?
	end

feature --images

	pix_back_to_menu: EV_PIXMAP
			-- returns the background for the active game
	once
			create Result
			Result.set_with_named_file (file_system.pathname_to_string (img_back_to_menu))
	end

	pix_background: EV_PIXMAP
			-- returns the background for the active game
	once
			create Result
			Result.set_with_named_file (file_system.pathname_to_string (img_background))
	end

	pix_save: EV_PIXMAP
			-- returns the background for the active game
	once
			create Result
			Result.set_with_named_file (file_system.pathname_to_string (img_save))
	end

	pix_player_piece1: EV_PIXMAP
			-- returns the piece for the active game
	once
			create Result
			Result.set_with_named_file (file_system.pathname_to_string (img_piece1))
	end

	pix_player_piece2: EV_PIXMAP
			-- returns the piece for the active game
	once
			create Result
			Result.set_with_named_file (file_system.pathname_to_string (img_piece2))
	end

	pix_player_piece3: EV_PIXMAP
			-- returns the piece for the active game
	once
			create Result
			Result.set_with_named_file (file_system.pathname_to_string (img_piece3))
	end

	pix_player_piece4: EV_PIXMAP
			-- returns the piece for the active game
	once
			create Result
			Result.set_with_named_file (file_system.pathname_to_string (img_piece4))
	end

end
