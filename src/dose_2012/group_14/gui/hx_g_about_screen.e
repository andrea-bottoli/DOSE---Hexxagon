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

--	text : STRING

	-- Displays description of the project
	 make(a_main_ui : MAIN_WINDOW )
	 local
		--	internal_pixmap: EV_PIXMAP
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
			create l_ev_fixed_1
			create about_pixmap
			create go_back_button

				-- Build widget structure.
			extend (l_ev_fixed_1)
			l_ev_fixed_1.extend (go_back_button)
			l_ev_fixed_1.extend (about_pixmap)

			l_ev_fixed_1.set_minimum_width (600)
			l_ev_fixed_1.set_minimum_height (600)
			l_ev_fixed_1.set_background_pixmap (pix_background)

			l_ev_fixed_1.set_item_x_position (go_back_button, 0130)
			l_ev_fixed_1.set_item_y_position (go_back_button, 0500)
			l_ev_fixed_1.set_item_height (go_back_button, 0025)

			about_pixmap.set_with_named_file ("dose_2012/images/group14/group14.png")
			l_ev_fixed_1.set_item_x_position (about_pixmap, 0000)
			l_ev_fixed_1.set_item_y_position (about_pixmap, 0000)


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
			set_title ("About window")

				-- Connect events.
			go_back_button.select_actions.extend (agent go_back)


		end
feature -- Access

	about_pixmap: EV_PIXMAP
	go_back_button: EV_BUTTON
	main_ui : MAIN_WINDOW
	internal_pixmap    : EV_PIXMAP

feature {NONE} -- Implementation

	l_ev_fixed_1: EV_FIXED

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

---Hover---

	pix_go_back_hover: EV_PIXMAP
			-- returns the go_back_button for the active game
	once
			create Result
			Result.set_with_named_file (file_system.pathname_to_string (img_go_back_button_2_hover))
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
