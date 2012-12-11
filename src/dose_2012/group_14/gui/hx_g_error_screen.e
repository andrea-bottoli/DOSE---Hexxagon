note
	description: "Summary description for {HX_G_ERROR_SCREEN}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	HX_G_ERROR_SCREEN

inherit
	HX_G_BOARDS

create
	make

feature

	main_ui : MAIN_WINDOW

	make(a_main_ui : MAIN_WINDOW;  a_Error_Message : STRING)
	local
		screen: EV_SCREEN
		internal_pixmap: EV_PIXMAP
	do
		main_ui:= a_main_ui
		make_with_title ("Error Screen")

		-- the window should be centered in the screen
		screen := create {EV_SCREEN}
		set_x_position ((screen.width // 2) - (600 // 2))
		set_y_position ((screen.height // 2) -(600 // 2))

		-- disable user resizing for the window
		disable_user_resize

			create internal_pixmap
			-- Create all widgets.
			create l_ev_vertical_split_area_1
			create error_message
			create quit_button


				-- Build widget structure.
			extend (l_ev_vertical_split_area_1)
			l_ev_vertical_split_area_1.extend (error_message)
			l_ev_vertical_split_area_1.extend (quit_button)

			l_ev_vertical_split_area_1.enable_item_expand (quit_button)
			l_ev_vertical_split_area_1.disable_item_expand (error_message)

			l_ev_vertical_split_area_1.set_background_pixmap (pix_background)

			quit_button.set_minimum_width (80)
			quit_button.set_minimum_height (56)
			internal_pixmap:= pix_quit_button
		  	quit_button.set_pixmap(internal_pixmap)

			set_minimum_width (400)
			set_minimum_height (400)
			set_maximum_width (400)
			set_maximum_height (400)
			set_title ("error window")

			error_message.set_data (a_Error_Message)
			
			--set_all_attributes_using_constants

				-- Connect events.
			quit_button.select_actions.extend (agent quit_button_action)
				-- Close the application when an interface close
				-- request is recieved on `Current'. i.e. the cross is clicked.
			close_request_actions.extend (agent destroy_and_exit_if_last)


		end

feature -- Access

	error_message: EV_TEXT
	quit_button: EV_BUTTON

feature -- Implementation

	l_ev_vertical_split_area_1: EV_VERTICAL_SPLIT_AREA

feature -- Implementation

	quit_button_action
			-- Called by `select_actions' of `quit_button'.
	do
		destroy
	end

feature -- images

	pix_background: EV_PIXMAP
			-- returns the background for the active game
	once
			create Result
			Result.set_with_named_file (file_system.pathname_to_string (img_background))
	end

	pix_quit_button: EV_PIXMAP
			-- returns the go_back_button for the active game
	once
			create Result
			Result.set_with_named_file (file_system.pathname_to_string (img_quit_button))
	end


end
