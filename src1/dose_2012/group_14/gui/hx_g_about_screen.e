note
	description: "Summary description for {HX_G_ABOUT_SCREEN}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	HX_G_ABOUT_SCREEN

inherit
	HX_G_BOARDS

create
	make

feature

	text : STRING

	-- Displays description of the project
	 make(a_main_ui : MAIN_WINDOW )
	 local
			internal_pixmap: EV_PIXMAP
			screen: EV_SCREEN
		do
			main_ui := a_main_ui
			-- Create the window.
			make_with_title ("Hexxagon about")


					-- the window should be centered in the screen
			screen := create {EV_SCREEN}
			set_x_position ((screen.width  // 2) - (600 // 2))
			set_y_position ((screen.height // 2) - (600 // 2))


			create internal_pixmap
			-- Create all widgets.
			create l_ev_table_1
			create about_pixmap
			create go_back_button

				-- Build widget structure.
			extend (l_ev_table_1)

			l_ev_table_1.set_background_pixmap (pix_background)
			l_ev_table_1.resize (4, 8)

			-- Insert and position all children of `l_ev_table_1'.
			l_ev_table_1.put_at_position (about_pixmap, 1, 1, 4, 5)
			l_ev_table_1.put_at_position (go_back_button, 2, 7, 2, 1)

			l_ev_table_1.enable_homogeneous

			l_ev_table_1.set_minimum_width (600)
			l_ev_table_1.set_minimum_height (600)

			-- go_back_button
			go_back_button.set_minimum_width (86)
			go_back_button.set_minimum_height (25)
		 	internal_pixmap:= pix_go_back_button
		  	go_back_button.set_pixmap(internal_pixmap)


			set_minimum_width (600)
			set_minimum_height (580)
			set_maximum_width (600)
			set_maximum_height (580)
			set_title ("About window")

			--set_all_attributes_using_constants

				-- Connect events.
			go_back_button.select_actions.extend (agent go_back)
				-- Close the application when an interface close
				-- request is recieved on `Current'. i.e. the cross is clicked.
			close_request_actions.extend (agent destroy_and_exit_if_last)

		end
feature -- Access

	about_pixmap: EV_PIXMAP
	go_back_button: EV_BUTTON
	main_ui : MAIN_WINDOW

feature {NONE} -- Implementation

	l_ev_table_1: EV_TABLE

feature-- Implementation

	go_back
			-- Called by `select_actions' of `go_back_button'.
	local
		menu_window: HX_G_MAIN_MENU_SCREEN
	do
		create menu_window.make(main_ui)
		menu_window.show
		destroy
	end

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


end
