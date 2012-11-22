note
	description: "The main window of the Bang! game."
	author: "PUCRS6 & Crete12"
	date: "10.11.2012"
	revision: "0.1"

class
	BANG_MAIN_WINDOW

inherit
	EV_TITLED_WINDOW
		redefine
			initialize
		end

	BANG_GUI_CONSTANTS
		export
			{NONE} all
		undefine
			default_create, copy
		end

create
	make

feature {NONE}	-- Initialization

	make(a_main_ui_window: MAIN_WINDOW)
			-- Creation procedure

		local
			screen : EV_SCREEN
		do
				-- Store the main_ui object. We want to restore it later on (it's currently minimized).
				-- The true is this is a pointer for avoiding garbage collection issues,
				-- and that we will use if one of the requirements is to go back to the main app when quitting the game.
			main_ui := a_main_ui_window

				-- Create the Bang! window.
			make_with_title (window_title)

				-- the window should be centered in the screen
			screen := create {EV_SCREEN}
			set_x_position ((screen.width // 2) - (Window_width // 2))
			set_y_position ((screen.height // 2) - (Window_height // 2))

				-- set the size of the window
			set_height (Window_height)
			set_width (Window_width)

				-- disable user resizing for the window
			disable_user_resize

		end

	initialize
			-- Build the window
		do
				-- close_request_actions.extend (agent request_close_window)
			Precursor {EV_TITLED_WINDOW}

				-- add our event to the quit button on the top right :)
			close_request_actions.extend (agent request_close_window_top)

			-- CREATE BASIC BACKGROUND
				-- create the background
			create bang_background_area
				-- create a pixmap to load the background
			create bang_background_pixmap
				-- set the pixmap to be the background of the box
			bang_background_pixmap.set_with_named_file (file_system.pathname_to_string (bang_main_img_background))
			bang_background_area.set_background_pixmap (bang_background_pixmap)

			-- ADD QUIT BUTTON TO THE BACKGROUND
			-- create an EV_FIXED container for the "quit" button, set its events etc.
			create quit_area
			create quit_pixmap_pointer_in
			create quit_pixmap_pointer_out
			quit_pixmap_pointer_out.set_with_named_file (file_system.pathname_to_string (bang_img_quit_normal))
			quit_pixmap_pointer_in.set_with_named_file (file_system.pathname_to_string (bang_img_quit_hover))
			quit_area.set_background_pixmap (quit_pixmap_pointer_out)
			quit_area.pointer_enter_actions.extend (agent pointer_enter_area(quit_area))
			quit_area.pointer_leave_actions.extend (agent pointer_leave_area(quit_area))
			quit_area.pointer_button_release_actions.extend (agent request_close_window(?,?,?,?,?,?,?,?))
			bang_background_area.extend_with_position_and_size (quit_area, 20, 500, 137, 87)

			-- ADD CREDITS BUTTON TO THE BACKGROUND
			-- create an EV_FIXED container for the "quit" button, set its events etc.
			create credits_area
			create credits_pixmap_pointer_in
			create credits_pixmap_pointer_out
			credits_pixmap_pointer_out.set_with_named_file (file_system.pathname_to_string (bang_img_credits_normal))
			credits_pixmap_pointer_in.set_with_named_file (file_system.pathname_to_string (bang_img_credits_hover))
			credits_area.set_background_pixmap (credits_pixmap_pointer_out)
			credits_area.pointer_enter_actions.extend (agent pointer_enter_area(credits_area))
			credits_area.pointer_leave_actions.extend (agent pointer_leave_area(credits_area))
			credits_area.pointer_button_release_actions.extend (agent request_credits_dialog(?,?,?,?,?,?,?,?))
			bang_background_area.extend_with_position_and_size (credits_area, 20, 400, 137, 87)

			-- ADD RULES BUTTON TO THE BACKGROUND
			-- create an EV_FIXED container for the "quit" button, set its events etc.
			create rules_area
			create rules_pixmap_pointer_in
			create rules_pixmap_pointer_out
			rules_pixmap_pointer_out.set_with_named_file (file_system.pathname_to_string (bang_img_rules_normal))
			rules_pixmap_pointer_in.set_with_named_file (file_system.pathname_to_string (bang_img_rules_hover))
			rules_area.set_background_pixmap (rules_pixmap_pointer_out)
			rules_area.pointer_enter_actions.extend (agent pointer_enter_area(rules_area))
			rules_area.pointer_leave_actions.extend (agent pointer_leave_area(rules_area))
			rules_area.pointer_button_release_actions.extend (agent request_rules_dialog(?,?,?,?,?,?,?,?))
			bang_background_area.extend_with_position_and_size (rules_area, 20, 300, 137, 87)

			-- ADD NEW GAME BUTTON TO THE BACKGROUND
			-- create an EV_FIXED container for the "quit" button, set its events etc.
			create game_area
			create game_pixmap_pointer_in
			create game_pixmap_pointer_out
			game_pixmap_pointer_out.set_with_named_file (file_system.pathname_to_string (bang_img_game_normal))
			game_pixmap_pointer_in.set_with_named_file (file_system.pathname_to_string (bang_img_game_hover))
			game_area.set_background_pixmap (game_pixmap_pointer_out)
			game_area.pointer_enter_actions.extend (agent pointer_enter_area(game_area))
			game_area.pointer_leave_actions.extend (agent pointer_leave_area(game_area))
			game_area.pointer_button_release_actions.extend (agent request_new_game(?,?,?,?,?,?,?,?))
			bang_background_area.extend_with_position_and_size (game_area, 20, 200, 137, 87)

			-- GAME FRAME
			create game_panel
			bang_background_area.extend_with_position_and_size (game_panel, 10, 20, 180, 150)
			game_panel.hide

			-- FINISH
				-- add the background box to the current window
				-- notice the background has everything
			extend(bang_background_area)

		end

feature {NONE} -- Implementation

		-- quit on button destroying bang window and asking for user confirmation
	request_close_window(a_a, a_b, a_c: INTEGER_32; a_d, a_e, a_f: REAL_64; a_g, a_h: INTEGER_32)
			-- The user wants to close the window
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

	-- quit on window destroying bang window and asking for user confirmation
	request_close_window_top
			-- The user wants to close the window
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

	-- Credits dialog
	request_credits_dialog(a_a, a_b, a_c: INTEGER_32; a_d, a_e, a_f: REAL_64; a_g, a_h: INTEGER_32)
		local
			credits_dialog: BANG_CREDITS_DIALOG
		do
			create credits_dialog
			credits_dialog.show_modal_to_window (Current)
		end

	-- Rules dialog
	request_rules_dialog(a_a, a_b, a_c: INTEGER_32; a_d, a_e, a_f: REAL_64; a_g, a_h: INTEGER_32)
		local
			rules_dialog: BANG_RULES_DIALOG
		do
			create rules_dialog
			rules_dialog.show_modal_to_window (Current)
		end

	-- New Game
	request_new_game(a_a, a_b, a_c: INTEGER_32; a_d, a_e, a_f: REAL_64; a_g, a_h: INTEGER_32)
		local
			--game_frame: BANG_GAME_FRAME
		do
		--	create game_frame
		--	game_panel.extend_with_position_and_size(game_frame, 500, 500, 500, 500)
		--	game_panel.show
		end

	-- the pointer is entering the area used as a button
	pointer_enter_area (a_area: EV_FIXED)
	do
		if a_area = quit_area then
			quit_area.set_background_pixmap (quit_pixmap_pointer_in)
		elseif a_area = credits_area then
			credits_area.set_background_pixmap (credits_pixmap_pointer_in)
		elseif a_area = rules_area then
			rules_area.set_background_pixmap (rules_pixmap_pointer_in)
		elseif a_area = game_area then
			game_area.set_background_pixmap (game_pixmap_pointer_in)
		end
	end

		-- the pointer is leaving the area used as a button
	pointer_leave_area (a_area: EV_FIXED)
	do
		if a_area = quit_area then
			quit_area.set_background_pixmap (quit_pixmap_pointer_out)
		elseif a_area = credits_area then
			credits_area.set_background_pixmap (credits_pixmap_pointer_out)
		elseif a_area = rules_area then
			rules_area.set_background_pixmap (rules_pixmap_pointer_out)
		elseif a_area = game_area then
			game_area.set_background_pixmap (game_pixmap_pointer_out)
		end
	end


feature {NONE}	-- Attributes
		-- the main ui, i.e. the game selector
		-- we need this reference to bring back (i.e. maximize) the game selector once the user quits Bang!
	main_ui: MAIN_WINDOW

		-- Initial width for this window.
	Window_width: INTEGER = 800

		-- Initial height for this window.
	Window_height: INTEGER = 600

		-- the background area with the pixmap background image
	bang_background_area: EV_FIXED
	bang_background_pixmap: EV_PIXMAP

		-- the new game button
	game_area: EV_FIXED
	game_pixmap_pointer_in: EV_PIXMAP
	game_pixmap_pointer_out: EV_PIXMAP

		-- the rules button
	rules_area: EV_FIXED
	rules_pixmap_pointer_in: EV_PIXMAP
	rules_pixmap_pointer_out: EV_PIXMAP

		-- the credits button
	credits_area: EV_FIXED
	credits_pixmap_pointer_in: EV_PIXMAP
	credits_pixmap_pointer_out: EV_PIXMAP

		-- the quit button
	quit_area: EV_FIXED
	quit_pixmap_pointer_in: EV_PIXMAP
	quit_pixmap_pointer_out: EV_PIXMAP

		-- the game frame
	game_panel: EV_FIXED
end
