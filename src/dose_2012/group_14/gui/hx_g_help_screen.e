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


	 make(a_main_ui : MAIN_WINDOW ; a_width, a_height: INTEGER)
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
			create l_ev_fixed_1
			create help_text
			create go_back_button

			-- disable user resizing for the window
			disable_user_resize

	 			-- Build widget structure.
			extend (l_ev_fixed_1)

			l_ev_fixed_1.set_background_pixmap (pix_background)
			--l_ev_table_1.resize (4, 8)
			l_ev_fixed_1.extend (go_back_button)
			l_ev_fixed_1.extend (help_text)

				-- Insert and position all children of `l_ev_table_1'

			l_ev_fixed_1.set_item_x_position (go_back_button, 0130)
			l_ev_fixed_1.set_item_y_position (go_back_button, 0480)
			l_ev_fixed_1.set_item_height (go_back_button, 0025)

			l_ev_fixed_1.set_item_x_position (help_text, 0150)
			l_ev_fixed_1.set_item_y_position (help_text, 0050)
			l_ev_fixed_1.set_item_width (help_text, 0290)
			l_ev_fixed_1.set_item_height (help_text, 0370)

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
			go_back_button.set_minimum_width (330)
			go_back_button.set_minimum_height (60)
		 	internal_pixmap:= pix_go_back_button
		  	go_back_button.set_pixmap(internal_pixmap)

		  	--Mouse over actions
			go_back_button.pointer_enter_actions.extend (agent pointer_enter_area(go_back_button))
			go_back_button.pointer_leave_actions.extend (agent pointer_leave_area(go_back_button))

		  	set_minimum_width (a_width)
			set_minimum_height (a_height)
			set_maximum_width (a_width)
			set_maximum_height (a_height)
			set_title ("Help window")

		end


feature -- Access

	main_ui : MAIN_WINDOW
	help_text: EV_RICH_TEXT
	go_back_button: EV_BUTTON
	internal_pixmap: EV_PIXMAP

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
