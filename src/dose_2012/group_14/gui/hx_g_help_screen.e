note
	description: "Summary description for {HX_G_HELP_SCREEN}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	HX_G_HELP_SCREEN

inherit
	HX_G_BOARDS

create
	make

feature


	 make(a_main_ui : MAIN_WINDOW )
	 local
			screen: EV_SCREEN
	 do
	 		main_ui := a_main_ui
			-- Create the window.
			make_with_title ("Hexxagon Help")

			-- the window should be centered in the screen
			screen := create {EV_SCREEN}
			set_x_position ((screen.width  // 2) - (600 // 2))
			set_y_position ((screen.height // 2) - (600 // 2))

			-- Create all widgets.
			create l_ev_table_1
			create help_text
			create go_back_button

			-- disable user resizing for the window
			disable_user_resize

	 			-- Build widget structure.
			extend (l_ev_table_1)

			l_ev_table_1.set_background_pixmap (pix_background)
			l_ev_table_1.resize (4, 8)


				-- Insert and position all children of `l_ev_table_1'.
			l_ev_table_1.put_at_position (help_text, 2, 2, 2, 5)
			l_ev_table_1.put_at_position (go_back_button, 2, 8, 2, 1)

			l_ev_table_1.enable_homogeneous

			help_text.disable_edit
			help_text.append_text ("HEXXAGON %N")
			help_text.append_text ("%N GOAL %N")
			help_text.append_text ("%N Target of the game is to have as many own stones on the board, as possible. %N")
			help_text.append_text ("%N RULES %N")
			help_text.append_text ("%N During every move, the player can move whether he wants to duplicate one of his stones to an %N")
			help_text.append_text ("empty adjacent field (originating stone remains), or whether he want to jump with the stone to %N")
			help_text.append_text ("an empty field which is 2 spaces away. Whenever a stone is placed adjacent to opposing stones,%N")
			help_text.append_text ("they change colour and become friendly (own) stones.on the board. %N")
			help_text.append_text ("%N In case the opponent cannot move any more, all empty fields are automatically populated with %N")
			help_text.append_text ("your stones. This fills up the board and brings the game to its end.")



			-- Connect events.
			go_back_button.select_actions.extend (agent go_back_button_action)
			-- Close the application when an interface close
			-- request is recieved on `Current'. i.e. the cross is clicked.
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
			set_title ("Help window")

		end


feature -- Access

	main_ui : MAIN_WINDOW
	help_text: EV_RICH_TEXT
	go_back_button: EV_BUTTON
	internal_pixmap: EV_PIXMAP

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
