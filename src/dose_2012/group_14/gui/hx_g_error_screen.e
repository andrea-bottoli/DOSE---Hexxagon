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
	--	internal_pixmap: EV_PIXMAP
	do
		main_ui:= a_main_ui
		make_with_title ("Error Screen")

		-- the window should be centered in the screen
		screen := create {EV_SCREEN}
		set_x_position ((screen.width // 2) - (350 // 2))
		set_y_position ((screen.height // 2) -(350 // 2))

		-- disable user resizing for the window
		disable_user_resize

			create internal_pixmap
			-- Create all widgets.
			create l_ev_fixed_1
			create error_message
			create quit_button


				-- Build widget structure.
			extend (l_ev_fixed_1)
			l_ev_fixed_1.extend (error_message)
			l_ev_fixed_1.extend (quit_button)

			error_message.disable_capture
			error_message.append_text ("ERROR!!! %N %N")
			error_message.append_text (a_Error_Message)

			l_ev_fixed_1.set_background_pixmap (pix_background)


			l_ev_fixed_1.set_item_x_position (error_message, 0110)
			l_ev_fixed_1.set_item_y_position (error_message, 0050)
			l_ev_fixed_1.set_item_width (error_message, 0200)
			l_ev_fixed_1.set_item_height (error_message, 0200)


			l_ev_fixed_1.set_item_x_position (quit_button, 0060)
			l_ev_fixed_1.set_item_y_position (quit_button, 0300)
	--		l_ev_fixed_1.set_item_width (quit_button, 0290)
	--		l_ev_fixed_1.set_item_height (quit_button, 0370)

			quit_button.set_minimum_width (300)
			quit_button.set_minimum_height (60)
			internal_pixmap:= pix_quit_button
		  	quit_button.set_pixmap(internal_pixmap)

			set_minimum_width (400)
			set_minimum_height (400)
			set_maximum_width (400)
			set_maximum_height (400)
			set_title ("Error!")

			error_message.set_data (a_Error_Message)

			--set_all_attributes_using_constants

				-- Connect events.
			quit_button.select_actions.extend (agent quit_button_action)

			quit_button.pointer_enter_actions.extend (agent pointer_enter_area(quit_button))
			quit_button.pointer_leave_actions.extend (agent pointer_leave_area(quit_button))
				-- Close the application when an interface close
				-- request is recieved on `Current'. i.e. the cross is clicked.
			close_request_actions.extend (agent destroy_and_exit_if_last)


		end

feature -- Access

	error_message: EV_TEXT
	quit_button: EV_BUTTON
	internal_pixmap: EV_PIXMAP
feature -- Implementation

	l_ev_fixed_1: EV_FIXED

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

	pix_quit_button_hover: EV_PIXMAP
		-- returns the help_button for the active game
	once
		create Result
		Result.set_with_named_file (file_system.pathname_to_string (img_quit_hover))
	end


feature -- Implementation pointer events


	pointer_enter_area (a_area: EV_BUTTON)
			-- the pointer is entering the area used as a button
		do
			if a_area = quit_button then
				internal_pixmap:= pix_quit_button_hover
		  		quit_button.set_pixmap(internal_pixmap)
			end
		end

	pointer_leave_area (a_area: EV_BUTTON)
			-- the pointer is leaving the area used as a button
		do
			if a_area = quit_button then
				internal_pixmap:= pix_quit_button
		  		quit_button.set_pixmap(internal_pixmap)
			end
		end

end
