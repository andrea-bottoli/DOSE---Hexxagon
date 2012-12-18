note
	description: "The main menu of the game."
	author: "Gabriele Fanchini"
	date: "27.11.2012"
	revision: "1.0"

class
	G5_MAIN_MENU
inherit
	EV_TITLED_WINDOW
		redefine
			initialize
		end

	G5_GUI_CONSTANTS
		export
			{NONE} all
		undefine
			default_create, copy
		end

create
	make

feature {NONE}	-- Initialization

	make(a_main_ui_window: MAIN_WINDOW; launcher: G5_LAUNCHER)
			-- Creation procedure
		do
			-- Store the main_ui object. We want to restore it later on (it's currently minimized).
			main_ui := a_main_ui_window
			app_launcher := launcher
			-- Create the main menù window.
			make_with_title (window_title)
		end

	initialize
			-- Build the window
		do
			Precursor {EV_TITLED_WINDOW}
			set_size(1000,563)

			close_request_actions.extend (agent request_close_window)
			create_container_main_menu

		end

feature {G5_MAIN_MENU, G5_IGUI_TO_NET, G5_CREATE_GAME_MENU} -- initialize the container of the main menu

	create_container_main_menu
		-- the constructor of the main menu container
		do
			create con_main
			put(con_main)
			con_main.set_background_pixmap (pix_background_menu)

			-- add the image that will be the "Create new game" button
			create create_game_button
			create create_game_button_pixmap_pointer_in
			create create_game_button_pixmap_pointer_out
			create_game_button_pixmap_pointer_out.set_with_named_file (file_system.pathname_to_string (img_create))
			create_game_button_pixmap_pointer_in.set_with_named_file (file_system.pathname_to_string (img_create_hover))

			create_game_button.set_background_pixmap (create_game_button_pixmap_pointer_out)
			create_game_button.pointer_enter_actions.extend (agent pointer_enter_area(create_game_button))
			create_game_button.pointer_leave_actions.extend (agent pointer_leave_area(create_game_button))
			con_main.extend_with_position_and_size (create_game_button, 593, 262, 345, 85)
			create_game_button.pointer_button_release_actions.extend (agent request_create_menu(?, ?, ?, ?, ?, ?, ?, ?))


			-- add the image that will be the "Join a game" button
			create join_game_button
			create join_game_button_pixmap_pointer_in
			create join_game_button_pixmap_pointer_out
			join_game_button_pixmap_pointer_out.set_with_named_file (file_system.pathname_to_string (img_join))
			join_game_button_pixmap_pointer_in.set_with_named_file (file_system.pathname_to_string (img_join_hover))

			join_game_button.set_background_pixmap (join_game_button_pixmap_pointer_out)
			join_game_button.pointer_enter_actions.extend (agent pointer_enter_area(join_game_button))
			join_game_button.pointer_leave_actions.extend (agent pointer_leave_area(join_game_button))
			con_main.extend_with_position_and_size (join_game_button, 586, 350, 291, 92)
			join_game_button.pointer_button_release_actions.extend (agent request_join_menu(?, ?, ?, ?, ?, ?, ?, ?))


			-- add the image that will be the "Quit" button
			create quit_button
			create quit_button_pixmap_pointer_in
			create quit_button_pixmap_pointer_out
			quit_button_pixmap_pointer_out.set_with_named_file (file_system.pathname_to_string (img_quit))
			quit_button_pixmap_pointer_in.set_with_named_file (file_system.pathname_to_string (img_quit_hover))

			quit_button.set_background_pixmap (quit_button_pixmap_pointer_out)
			quit_button.pointer_enter_actions.extend (agent pointer_enter_area(quit_button))
			quit_button.pointer_leave_actions.extend (agent pointer_leave_area(quit_button))
			con_main.extend_with_position_and_size (quit_button, 640, 444, 248, 73)
			quit_button.pointer_button_release_actions.extend (agent request_quitting(?, ?, ?, ?, ?, ?, ?, ?))

		end


feature {NONE} -- Implementation, Close events

	pointer_enter_area (a_area: EV_FIXED)
			-- the pointer is entering the area used as a button
		do
			if a_area = create_game_button then
				create_game_button.set_background_pixmap (create_game_button_pixmap_pointer_in)
			elseif a_area = join_game_button then
				join_game_button.set_background_pixmap (join_game_button_pixmap_pointer_in)
			elseif a_area = quit_button then
				quit_button.set_background_pixmap (quit_button_pixmap_pointer_in)
			end
		end

	pointer_leave_area (a_area: EV_FIXED)
			-- the pointer is leaving the area used as a button
		do
			if a_area = create_game_button then
				create_game_button.set_background_pixmap (create_game_button_pixmap_pointer_out)
			elseif a_area = join_game_button then
				join_game_button.set_background_pixmap (join_game_button_pixmap_pointer_out)
			elseif a_area = quit_button then
				quit_button.set_background_pixmap (quit_button_pixmap_pointer_out)
			end
		end

	request_quitting(a_a, a_b, a_c: INTEGER_32; a_d, a_e, a_f: REAL_64; a_g, a_h: INTEGER_32)
			-- The user wants to close the window using quit button
		local
			question_dialog: EV_CONFIRMATION_DIALOG
		do
			create question_dialog.make_with_text (Quit_dialog_message)
			question_dialog.show_modal_to_window (Current)

			if question_dialog.selected_button.is_equal ((create {EV_DIALOG_CONSTANTS}).ev_ok) then
					-- Restore the main UI which is currently minimized
				if attached main_ui then
					main_ui.restore
					--main_ui.remove_reference_to_game (Current)
				end
					-- Destroy the window
				destroy
			end
		end

	request_close_window
			-- The user wants to close the window using X button
		local
			question_dialog: EV_CONFIRMATION_DIALOG
		do
			create question_dialog.make_with_text (Quit_dialog_message)
			question_dialog.show_modal_to_window (Current)

			if question_dialog.selected_button.is_equal ((create {EV_DIALOG_CONSTANTS}).ev_ok) then
					-- Restore the main UI which is currently minimized
				if attached main_ui then
					main_ui.restore
					main_ui.remove_reference_to_game (Current)
				end
					-- Destroy the window
				destroy
			end
		end


	request_create_menu(a_a, a_b, a_c: INTEGER_32; a_d, a_e, a_f: REAL_64; a_g, a_h: INTEGER_32)
		-- The user wants to create a new game
		do
			create con_create_menu.make(current)
			replace(con_create_menu)

		end

	request_join_menu(a_a, a_b, a_c: INTEGER_32; a_d, a_e, a_f: REAL_64; a_g, a_h: INTEGER_32)
		-- The user wants to join a game
		do
			create con_join_menu.make(current)
			replace(con_join_menu)

		end


feature -- feature used by submenu that will be displayed in this window

	request_return_main_menu(a_a, a_b, a_c: INTEGER_32; a_d, a_e, a_f: REAL_64; a_g, a_h: INTEGER_32)
		-- The user wants to return to the main menu
		do
			create_container_main_menu
		end

	submit_request_join_to_game(name,ip: STRING; port: INTEGER)
		-- The user submitted and confirmed informations about his intent to join a game
		do
			app_launcher.submitting_as_a_client(ip, name, port)

			-- Destroy the window
--			destroy
		end

	submit_request_create_new_game(name, game_type: STRING; port, players_number: INTEGER; set_cards: ARRAY[STRING])
		-- The user submitted and confirmed informations about his intent to create a game
		do
--			app_launcher.submitting_as_a_host(port, players_number, name, game_type)
			app_launcher.submitting_as_a_host(port, players_number, name, game_type, set_cards)

			-- Destroy the window
--			destroy
		end


feature {NONE}	-- Attributes

	main_ui: MAIN_WINDOW
		-- the main ui, i.e. the game selector
		-- we need this reference to bring back (i.e. maximize) the game selector once the user quits tictactoe

	app_launcher: G5_LAUNCHER
		-- the launcher of the app that will take initialization informations needed to play

-- ### containers
	con_main: EV_FIXED
		-- the main, fixed-size container to which all other widgets are added

	con_create_menu: G5_CREATE_GAME_MENU
		-- the main, fixed-size container to which all other widgets are added

	con_join_menu: G5_JOIN_GAME_MENU
		-- the main, fixed-size container to which all other widgets are added

-- ### containers END


-- ### buttons
	create_game_button: EV_FIXED
		-- the button used to create a new game (the area of the button)

	create_game_button_pixmap_pointer_out: EV_PIXMAP
	create_game_button_pixmap_pointer_in: EV_PIXMAP
		-- images thats will be the button


	join_game_button: EV_FIXED
		-- the button used to join an existing game

	join_game_button_pixmap_pointer_out: EV_PIXMAP
	join_game_button_pixmap_pointer_in: EV_PIXMAP
		-- images thats will be the button


	quit_button: EV_FIXED
		-- the button used to join an existing game

	quit_button_pixmap_pointer_out: EV_PIXMAP
	quit_button_pixmap_pointer_in: EV_PIXMAP
		-- images thats will be the button
-- ### buttons END


	pix_background_menu: EV_PIXMAP
			-- returns the background of the menu as a pixmap
		once
			create Result

			Result.set_with_named_file (file_system.pathname_to_string (img_background_menu))
		end

end
