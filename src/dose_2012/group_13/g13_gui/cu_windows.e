note
	description: "Summary description for {CU_WINDOWS}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	CU_WINDOWS

inherit

	EV_TITLED_WINDOW
		redefine
			initialize,
			is_in_default_state
		end

	CU_GUI_CONSTANTS
		export
			{NONE} all
		undefine
			default_create, copy
		end
create
	make_window--, make_window_with_controller

feature -- make and Initialize

	make_window (a_main_ui_window: MAIN_WINDOW)
			-- Creation procedure
		do
				-- Store the main_ui object. We want to restore it later on (it's currently minimized).
			main_ui := a_main_ui_window

--				-- Create the Cluedo window.
			set_title_window ("Cluedo - Main Lobby")
			set_width_window (1100)
			set_height_window (650)
			make_with_title (window_title)
			set_size (window_width,window_height)
			create horizontal_separator
			create con_main
			create main_lobby
			con_main := main_lobby.make
			con_main.extend_with_position_and_size (horizontal_separator, 0, 0, 1100, 5)
			put (con_main)
			disable_user_resize
		end

--	make_window_with_controller (controller:CU_INIT_CONTROLLER)
--	do
--		set_window_controller(controller)
--		default_create
--	end


	set_title_window (new_title: STRING)
			-- Set title of the window
		do
			window_title := new_title
		end

	set_width_window (new_width: INTEGER)
			-- Set width of the window
		do
			window_width := new_width
		end

	set_height_window (new_height: INTEGER)
			-- Set height of the window
		do
			window_height := new_height
		end

	set_label (a_label: EV_LABEL)
			-- Set a label
		require
			non_empty_label: a_label /= void
		do
		ensure
			updated_label: a_label = label
		end

	initialize
			-- Build the interface for this window.
		do
			Precursor {EV_TITLED_WINDOW}

				-- Execute `request_close_window' when the user clicks
				-- on the cross in the title bar.
			close_request_actions.extend (agent request_close_window)

				-- Create and add the menu bar.
			build_standard_menu_bar
			set_menu_bar (standard_menu_bar)

		end

		is_in_default_state: BOOLEAN
			-- Is the window in its default state
			-- (as stated in `initialize')
		do
			Result := is_initialized
		end

----------------------------feature {ANY} -- Implementation

----------------------------	standard_menu_bar: EV_MENU_BAR
----------------------------			-- Standard menu bar for this window.

----------------------------	file_menu: EV_MENU
----------------------------			-- "File" menu for this window (contains Create Game, Join Game, Quit Game)

----------------------------	help_menu: EV_MENU
----------------------------			-- "Help" menu for this window (contains Show Rules, About)

----------------------------	build_standard_menu_bar
----------------------------			-- Create and populate `standard_menu_bar'.
----------------------------		do
----------------------------		end

----------------------------	build_file_menu
----------------------------			-- Create and populate `file_menu'.
----------------------------		do
----------------------------		end

----------------------------	build_help_menu
----------------------------			-- Create and populate `help_menu'.
----------------------------		do
----------------------------		end
feature{CU_MAIN_LOBBY}

--------------request_close_window
--------------			-- The user wants to close the window
--------------		local
--------------			question_dialog: EV_CONFIRMATION_DIALOG
--------------		do
--------------			create question_dialog.make_with_text (Quit_dialog_message)
--------------			question_dialog.show_modal_to_window (Current)

--------------			if question_dialog.selected_button.is_equal ((create {EV_DIALOG_CONSTANTS}).ev_ok) then
--------------					-- Restore the main UI which is currently minimized
--------------				if attached main_ui then
--------------					main_ui.restore
--------------					main_ui.remove_reference_to_game (Current)
--------------				end
--------------					-- Destroy the window
--------------				destroy
--------------			end
--------------		end


request_close_window
			-- The user wants to close the window
		local
			question_dialog: EV_CONFIRMATION_DIALOG
		do
			create question_dialog.make_with_text (Quit_dialog_message)
			question_dialog.show_modal_to_window (Current)

			if question_dialog.selected_button.is_equal ((create {EV_DIALOG_CONSTANTS}).ev_ok) then
					-- Destroy the window
				destroy;

					-- End the application
					--| TODO: Remove this line if you don't want the application
					--|       to end when the first window is closed..
				(create {EV_ENVIRONMENT}).application.destroy
			end
		end


--------------------------------------------------------------------------------------

feature {ANY}

	set_window_controller (controller: CU_INIT_CONTROLLER)
			-- Set the controller
		do
		ensure
			controller_uploaded: controller = window_controller
		end

	set_board (a_board: CU_BOARD)
			-- Set the board
		require
			board_not_null: board /= Void
		do
		ensure
			board_uploaded: board = a_board
		end

	set_message (a_message: STRING)
    	require
    		messagge_not_empty: a_message /= void
		do
			create message_label.default_create
			message_label.set_text (a_message)
		ensure
			message_updated: message_label.text.is_equal (a_message)
	    end

feature {EQA_TEST_SET} -- Menu Bar Implementation

	standard_menu_bar: EV_MENU_BAR
			-- Standard menu bar for this window.

	file_menu: EV_MENU
			-- "File" menu for this window (contains New, Open, Close, Exit...)

	help_menu: EV_MENU
			-- "Help" menu for this window (contains About...)

	build_standard_menu_bar
			-- Create and populate `standard_menu_bar'.
		do
				-- Create the menu bar.
			create standard_menu_bar

				-- Add the "File" menu
			build_file_menu
			standard_menu_bar.extend (file_menu)

				-- Add the "Help" menu
			build_help_menu
			standard_menu_bar.extend (help_menu)
		end

	build_file_menu
			-- Create and populate `file_menu'.
		local
			menu_item: EV_MENU_ITEM
			separator_item: EV_MENU_SEPARATOR
		do
			create file_menu.make_with_text (Menu_file_item)
			create menu_item.make_with_text (Menu_file_new_item)
			file_menu.extend (menu_item)
			create separator_item.default_create
			file_menu.extend (separator_item)
			create menu_item.make_with_text (Menu_file_exit_item)
			menu_item.select_actions.extend (agent request_close_window)
			file_menu.extend (menu_item)
		end

	build_help_menu
			-- Create and populate `help_menu'.
		local
			menu_item: EV_MENU_ITEM
		do
			create help_menu.make_with_text (Menu_help_item)
			create menu_item.make_with_text (Menu_help_about_item)
			create about_dialog.make
			menu_item.select_actions.extend (agent about_dialog.show)
			help_menu.extend (menu_item)
		end


feature {EQA_TEST_SET} -- Implementation / Constants

	window_title: STRING
			-- Title of the window.

	window_width: INTEGER
			-- Initial width for this window.

	window_height: INTEGER
			-- Initial height for this window.

	label: EV_LABEL
			-- Contains the text for each window.

	window_controller: CU_INIT_CONTROLLER
		-- Connection variable

	board: CU_BOARD
			-- Represent the board

	con_main: EV_FIXED
			-- the main, fixed-size container to which all other widgets are added
	con_game: EV_FIXED
			-- the container which holds the background

	pix_background: EV_PIXMAP
			-- returns the background for the active game
		once
			create Result
			Result.set_with_named_file (file_system.pathname_to_string (Img_background))
		end
	main_ui: MAIN_WINDOW

	btn_start: EV_BUTTON
			-- button to start a game
	btn_quit: EV_BUTTON
			-- button to quit the game

	about_dialog: CU_ABOUT_DIALOG

	main_bu: EV_BUTTON

	main_lobby: CU_MAIN_LOBBY

	main_container: EV_VERTICAL_BOX
			-- Main container (contains all widgets displayed in this window)

	build_main_container
			-- Create and populate `main_container'.
		require
			main_container_not_yet_created: main_container = Void
		do
			create main_container

			main_container.extend (create {EV_TEXT})
		ensure
			main_container_created: main_container /= Void
		end

	horizontal_separator: EV_HORIZONTAL_SEPARATOR

	message_label: EV_LABEL

end
