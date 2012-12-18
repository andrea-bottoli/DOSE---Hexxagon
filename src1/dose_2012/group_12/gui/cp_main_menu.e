note
	description: "The class responsible for building the game main menu"
	author: "Christos Petropoulos"

class
	CP_MAIN_MENU
inherit
	EV_FIXED
	CP_MAIN_WINDOW_INTERFACES
	export
		{NONE} all
	undefine
		default_create, copy,is_equal
	end

create
	make

feature -- Initialization

	make(window_caller:CP_MAIN_WINDOW)
			--Initializes the main menu
		local
			white_color:EV_COLOR
			black_color:EV_COLOR
			font:EV_FONT
		do
			default_create
			create white_color.make_with_8_bit_rgb (255, 255, 255)
			create black_color.make_with_8_bit_rgb (0, 0, 0)
			window := window_caller
			set_background_color(white_color)
			create font.default_create
			font.set_height (14)

				-- Create the image container with the logo of the game
			create image_container
			image_container.set_background_color (white_color)
			image_container.set_background_pixmap (game_logo_image)
			extend_with_position_and_size (image_container,0, 100, 477, 335)

				-- Crete the main menu
			create menu_container
			menu_container.set_background_color (white_color)
			current.set_minimum_size (900, 600)

				-- Create the buttons of the main menu
			create create_game_button.make("Create Game")
			create join_game_button.make ("Join Game")
			create exit_game_button.make ("Exit Game")
			create start_game_button.make("Start (DEBUG)")	-- To be removed

			exit_game_button.on_click_do (agent request_close_window)
			join_game_button.on_click_do (agent window.set_view_to_join)
			create_game_button.on_click_do (agent window.set_view_to_create)
			start_game_button.on_click_do (agent window.set_view_to_game) -- To be removed

				-- Create the labels of the main menu
			create menu_title.make_with_text ("What would you like to do ?")
			menu_title.set_background_color (white_color)
			menu_title.set_font (font)
			menu_container.extend_with_position_and_size (menu_title, 100, 30, 200, 20)

				-- Crete the buttons of the main menu
			menu_container.extend_with_position_and_size (exit_game_button,137, 225, 125, 136)
			menu_container.extend_with_position_and_size (create_game_button,70, 90, 125, 136)
			menu_container.extend_with_position_and_size (join_game_button,225, 100, 125, 136)
			extend_with_position_and_size (start_game_button,255,  420, 125, 136) -- To be removed
			extend_with_position_and_size (menu_container, 477, 80, 423, 480)

				-- Create the bottom container
			create bottom_bar
			bottom_bar.set_background_color(black_color)
			create cop.make_with_text(copyright_str)
			cop.set_foreground_color (white_color)
			cop.set_background_color (black_color)
			create version.make_with_text(version_str)
			version.set_foreground_color (white_color)
			version.set_background_color (black_color)
			bottom_bar.extend_with_position_and_size (version, 0, 0, 100, 25)
			bottom_bar.extend_with_position_and_size (cop, 335, 0, 250, 25)
			extend_with_position_and_size (bottom_bar, 0, 585, 940,25)

				-- Create the top bar container
			create top_bar
			top_bar.set_background_color (black_color)
			create welcome_msg.make_with_text ("Welcome to the Hive Board Game !")
			welcome_msg.set_background_color (black_color)
			welcome_msg.set_foreground_color (white_color)
			top_bar.extend_with_position_and_size (welcome_msg,335,0,250,25)
		 	extend_with_position_and_size (top_bar,0,0,940,25)



		end


feature {NONE} -- About Dialog Implementation

	on_about
			-- Display the About dialog.
		local
			about_dialog: CP_ABOUT_DIALOG
		do
			create about_dialog
			about_dialog.show_modal_to_window (window)
		end


feature {NONE} -- Implementation, Close event

	request_close_window
			-- The user wants to close the window
		local
			question_dialog: EV_CONFIRMATION_DIALOG
		do
			create question_dialog.make_with_text (Label_confirm_close_window)
			question_dialog.show_modal_to_window (window)

			if question_dialog.selected_button.is_equal ((create {EV_DIALOG_CONSTANTS}).ev_ok) then
					-- Destroy the window
				window.destroy;

			end
		end

feature {NONE} -- Attributes


	-- The window caller
	window:CP_MAIN_WINDOW

	-- The images for the main menu
	game_logo_image: EV_PIXMAP
			-- The game logo
		once
			create Result

			Result.set_with_named_file (file_system.pathname_to_string (hive_logo_img))
		end

	-- The containers of the main menu
	image_container:EV_FIXED
	menu_container:EV_FIXED
	bottom_bar:EV_FIXED
	top_bar:EV_FIXED

	-- The buttons of the main menu
	create_game_button:CP_BUTTON
	join_game_button:CP_BUTTON
	exit_game_button:CP_BUTTON

	-- Button to be removed (only for debugging)
	start_game_button:CP_BUTTON


	-- The labels of the main menu
	menu_title:EV_LABEL
	version:EV_LABEL
	cop:EV_LABEL
	welcome_msg:EV_LABEL

end
