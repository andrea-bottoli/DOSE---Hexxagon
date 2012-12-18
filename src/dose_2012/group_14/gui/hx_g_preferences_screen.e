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

feature -- attributes
		ui_manager: HX_G_UIMANAGER
		main_menu : HX_G_MAIN_MENU_SCREEN
		piece_path : STRING_8
		piece2_path : STRING_8
		background_path : STRING_8
		logic : HX_L_LOGIC

		main_ui : MAIN_WINDOW
		piece_images : ARRAY [ STRING]
		background_images : ARRAY[STRING]
		save_Button : EV_BUTTON
		internal_pixmap: EV_PIXMAP

		pix_piece1, pix_piece2, pix_piece3, pix_piece4: EV_BUTTON
		piece1, piece2, piece3,piece4: EV_RADIO_BUTTON
		go_back_button : EV_BUTTON
		pix_back1, pix_back2 : EV_BUTTON
		back1_radio , back2_radio : EV_RADIO_BUTTON
		revealing_magic , magic ,revealing_magic1: EV_LABEL

		l_ev_fixed_1: EV_FIXED
		l_ev_fixed_2: EV_FIXED
		l_ev_fixed_3: EV_FIXED
		l_ev_fixed_4: EV_FIXED


feature

        make(a_main_ui : MAIN_WINDOW)
        local
			screen : EV_SCREEN
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
			create pix_back1
			create pix_back2
			create back1_radio
			create back2_radio
			create revealing_magic
			create revealing_magic1
			create magic
			create l_ev_fixed_2
			create l_ev_fixed_3
			create l_ev_fixed_4

			create internal_pixmap

				-- Build widget structure.
			extend (l_ev_fixed_1)
			l_ev_fixed_2.extend (pix_piece1)
			l_ev_fixed_2.extend (pix_piece2)
			l_ev_fixed_3.extend (pix_piece3)
			l_ev_fixed_3.extend (pix_piece4)
			l_ev_fixed_2.extend (piece1)
			l_ev_fixed_2.extend (piece2)
			l_ev_fixed_3.extend (piece3)
			l_ev_fixed_3.extend (piece4)
			l_ev_fixed_4.extend (go_back_button)
			l_ev_fixed_4.extend (save_button)
			l_ev_fixed_4.extend (pix_back1)
			l_ev_fixed_4.extend (pix_back2)
			l_ev_fixed_4.extend (back1_radio)
			l_ev_fixed_4.extend (back2_radio)
			l_ev_fixed_2.extend (revealing_magic)
			l_ev_fixed_3.extend (revealing_magic1)
			l_ev_fixed_4.extend (magic)

			l_ev_fixed_1.extend (l_ev_fixed_2)
			l_ev_fixed_1.extend (l_ev_fixed_3)
			l_ev_fixed_1.extend (l_ev_fixed_4)

			l_ev_fixed_1.set_minimum_width (600)
			l_ev_fixed_1.set_minimum_height (600)

			l_ev_fixed_2.set_minimum_width (300)
			l_ev_fixed_2.set_minimum_height (200)

			l_ev_fixed_3.set_minimum_width (300)
			l_ev_fixed_3.set_minimum_height (200)

			l_ev_fixed_4.set_minimum_width (600)
			l_ev_fixed_4.set_minimum_height (400)

			l_ev_fixed_1.set_item_x_position (l_ev_fixed_3, 0301)
			l_ev_fixed_1.set_item_y_position (l_ev_fixed_3, 0000)

			l_ev_fixed_1.set_item_x_position (l_ev_fixed_4, 0000)
			l_ev_fixed_1.set_item_y_position (l_ev_fixed_4, 0200)

			l_ev_fixed_1.set_background_pixmap (pix_background)
			l_ev_fixed_2.set_background_pixmap (pix_background)
			l_ev_fixed_3.set_background_pixmap (pix_background)
			l_ev_fixed_4.set_background_pixmap (pix_background)

			--EV_FIXED_2
			l_ev_fixed_2.set_item_x_position (pix_piece1, 0110)
			l_ev_fixed_2.set_item_y_position (pix_piece1, 0065)
			l_ev_fixed_2.set_item_width (pix_piece1, 0001)
			l_ev_fixed_2.set_item_height (pix_piece1, 0001)
			internal_pixmap:= pix_player_piece1
			pix_piece1.set_pixmap(internal_pixmap)

			l_ev_fixed_2.set_item_x_position (pix_piece2, 0210)
			l_ev_fixed_2.set_item_y_position (pix_piece2, 0065)
			l_ev_fixed_2.set_item_width (pix_piece2, 0001)
			l_ev_fixed_2.set_item_height (pix_piece2, 0001)
			internal_pixmap:= pix_player_piece2
			pix_piece2.set_pixmap(internal_pixmap)

			l_ev_fixed_2.set_item_x_position (piece1, 0110)
			l_ev_fixed_2.set_item_y_position (piece1, 0170)
			l_ev_fixed_2.set_item_width (piece1, 0020)
			l_ev_fixed_2.set_item_height (piece1, 0020)

			l_ev_fixed_2.set_item_x_position (piece2, 0210)
			l_ev_fixed_2.set_item_y_position (piece2, 0170)
			l_ev_fixed_2.set_item_width (piece2, 0020)
			l_ev_fixed_2.set_item_height (piece2, 0020)


			l_ev_fixed_2.set_item_x_position (revealing_magic, 0130)
			l_ev_fixed_2.set_item_y_position (revealing_magic, 0040)

			revealing_magic.set_text ("Player1 : Please Choose!")

			l_ev_fixed_3.set_item_x_position (piece3, 0030)
			l_ev_fixed_3.set_item_y_position (piece3, 0170)
			l_ev_fixed_3.set_item_width (piece3, 0020)
			l_ev_fixed_3.set_item_height (piece3, 0020)

			l_ev_fixed_3.set_item_x_position (pix_piece3, 0030)
			l_ev_fixed_3.set_item_y_position (pix_piece3, 0065)
			l_ev_fixed_3.set_item_width (pix_piece3, 0001)
			l_ev_fixed_3.set_item_height (pix_piece3, 0001)
			internal_pixmap:= pix_player_piece3
			pix_piece3.set_pixmap(internal_pixmap)

			l_ev_fixed_3.set_item_x_position (revealing_magic1, 0050)
			l_ev_fixed_3.set_item_y_position (revealing_magic1, 0040)

			revealing_magic1.set_text ("Player2 : Please Choose!")

			l_ev_fixed_3.set_item_x_position (pix_piece4, 0130)
			l_ev_fixed_3.set_item_y_position (pix_piece4, 0065)
			l_ev_fixed_3.set_item_width (pix_piece4, 0001)
			l_ev_fixed_3.set_item_height (pix_piece4, 0001)
			internal_pixmap:= pix_player_piece4
			pix_piece4.set_pixmap(internal_pixmap)

			l_ev_fixed_3.set_item_x_position (piece4, 0130)
			l_ev_fixed_3.set_item_y_position (piece4, 0170)
			l_ev_fixed_3.set_item_width (piece4, 0020)
			l_ev_fixed_3.set_item_height (piece4, 0020)

			l_ev_fixed_4.set_item_x_position (pix_back1, 0150)
			l_ev_fixed_4.set_item_y_position (pix_back1, 0090)
			internal_pixmap:= pix_back_1
			pix_back1.set_pixmap(internal_pixmap)

			l_ev_fixed_4.set_item_x_position (pix_back2, 0300)
			l_ev_fixed_4.set_item_y_position (pix_back2, 0090)
			internal_pixmap:= pix_back_2
			pix_back2.set_pixmap(internal_pixmap)

			l_ev_fixed_4.set_item_x_position (back1_radio, 0150)
			l_ev_fixed_4.set_item_y_position (back1_radio, 0200)

			l_ev_fixed_4.set_item_x_position (back2_radio, 0300)
			l_ev_fixed_4.set_item_y_position (back2_radio, 0200)

			l_ev_fixed_4.set_item_x_position (magic, 0180)
			l_ev_fixed_4.set_item_y_position (magic, 0050)

			magic.set_text ("Please Choose a Background!")

			l_ev_fixed_4.set_item_x_position (go_back_button, 0100)
			l_ev_fixed_4.set_item_y_position (go_back_button, 0240)
			l_ev_fixed_4.set_item_width (go_back_button, 0280)
			l_ev_fixed_4.set_item_height (go_back_button, 0050)

			l_ev_fixed_4.set_item_x_position (save_button, 0100)
			l_ev_fixed_4.set_item_y_position (save_button, 0300)
			l_ev_fixed_4.set_item_width (save_button, 0280)
			l_ev_fixed_4.set_item_height (save_button, 0050)


			pix_piece1.set_minimum_width (60)
			pix_piece1.set_minimum_height (20)

			pix_piece2.set_minimum_width (60)
			pix_piece2.set_minimum_height (20)

			pix_piece3.set_minimum_width (60)
			pix_piece3.set_minimum_height (20)

			pix_piece4.set_minimum_width (60)
			pix_piece4.set_minimum_height (20)

			pix_back2.set_minimum_width (120)
			pix_back2.set_minimum_height (80)

			pix_back1.set_minimum_width (120)
			pix_back1.set_minimum_height (80)


			go_back_button.set_minimum_width (86)
			go_back_button.set_minimum_height (25)
			internal_pixmap:= pix_back_to_menu
			go_back_button.set_pixmap(internal_pixmap)

			save_button.set_minimum_width (86)
			save_button.set_minimum_height (25)
			internal_pixmap:= pix_save
			save_button.set_pixmap(internal_pixmap)


			set_minimum_width (600)
			set_minimum_height (600)
			set_maximum_width (600)
			set_maximum_height (600)
			set_title ("Preferences window")

			-- Connect events.
			piece1.select_actions.extend (agent piece1_action)
			piece2.select_actions.extend (agent piece2_action)
			piece3.select_actions.extend (agent piece3_action)
			piece4.select_actions.extend (agent piece4_action)
			save_button.select_actions.extend 	 (agent save_button_action)
			go_back_button.select_actions.extend (agent go_back)

			back1_radio.select_actions.extend (agent back1_action)
			back2_radio.select_actions.extend (agent back2_action)


			--Mouse over actions
			go_back_button.pointer_enter_actions.extend (agent pointer_enter_area(go_back_button))
			go_back_button.pointer_leave_actions.extend (agent pointer_leave_area(go_back_button))

			save_button.pointer_enter_actions.extend (agent pointer_enter_area(save_button))
			save_button.pointer_leave_actions.extend (agent pointer_leave_area(save_button))
 end


feature {NONE} -- Implementation

		piece1_action
			-- Called by `select_actions' of `piece1'.
		do
			--Change picture
			piece_path := "dose_2012/images/group14/cell1.png"

		end

		piece2_action
			-- Called by `select_actions' of `piece2'.
		do
			--Change picture
			piece_path := "dose_2012/images/group14/cell2.png"

		end

		piece3_action
			-- Called by `select_actions' of `piece3'.
		do
			--Change picture
			piece2_path := "dose_2012/images/group14/cell3.png"
		end

		piece4_action
			-- Called by `select_actions' of `piece4'.
		do
			--Change picture
			piece2_path := "dose_2012/images/group14/cell4.png"
		end

		back1_action
		do
			--Change backgound
			background_path := "dose_2012/images/group14/g4.png"
		end

		back2_action
		do
			--Change background
			background_path := "dose_2012/images/group14/g1.png"
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
			l_preferences: HX_L_IPREFERENCES
		do
			-- HOW TO USE logic.preferences (You will need a reference to the logic, passed from the main menu, e.g. in the initialization):
			-- You can use "board_image_path" to get the path to the actual chosen board image
			-- And you can set it with "set_board_image_path" by providing the path as a string.
			-- Marc
			--	main_menu.show_preferences_screen.preferences.set_player1_piece_image_path (piece_path)
			--	main_menu.logic.preferences.set_player1_piece_image_path (piece_path)
		 	create ui_manager.make
		 	create logic.initialize (ui_manager)
		 	-- ???? seems buggy to me. Shouldn't it be passed from arguments of make instead?? -Irini

			ui_manager.set_preferences(true)
			l_preferences := logic.preferences

			l_preferences.set_player1_piece_image_path (piece_path)
			print(piece_path) io.new_line
			l_preferences.set_board_image_path (background_path)
			print(background_path) io.new_line
			l_preferences.set_player2_piece_image_path (piece2_path)
			l_preferences.save

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

	pix_back_1: EV_PIXMAP
			-- returns the piece for the active game
	once
			create Result
			Result.set_with_named_file (file_system.pathname_to_string (img_back_1))
	end

	pix_back_2: EV_PIXMAP
			-- returns the piece for the active game
	once
			create Result
			Result.set_with_named_file (file_system.pathname_to_string (img_back_2))
	end

	---Hover---

	pix_back_to_menu_hover: EV_PIXMAP
			-- returns the help_button for the active game
		once
			create Result
			Result.set_with_named_file (file_system.pathname_to_string (img_back_to_menu_hover))
		end

	pix_save_hover: EV_PIXMAP
			-- returns the help_button for the active game
		once
			create Result
			Result.set_with_named_file (file_system.pathname_to_string (img_save_hover))
		end


feature -- Implementation pointer events


	pointer_enter_area (a_area: EV_BUTTON)
			-- the pointer is entering the area used as a button
		do
			if a_area = go_back_button then
				internal_pixmap:=pix_back_to_menu_hover
		   		go_back_button.set_pixmap(internal_pixmap)
			elseif a_area = save_button then
				internal_pixmap:=pix_save_hover
		   		save_button.set_pixmap(internal_pixmap)
			end
		end

	pointer_leave_area (a_area: EV_BUTTON)
			-- the pointer is leaving the area used as a button
		do
			if a_area = go_back_button then
				internal_pixmap:=pix_back_to_menu
		   		go_back_button.set_pixmap(internal_pixmap)
			elseif a_area = save_button then
				internal_pixmap:=pix_save
		   		save_button.set_pixmap(internal_pixmap)
			end
		end


end
