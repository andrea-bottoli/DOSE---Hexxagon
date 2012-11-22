note
	description: "Main window of the game dominion."
	author: "Alejandro Yaciuk"
	date: "07/11/12"
	revision: "0.0"

class
	DO_MAIN_WINDOW

	inherit

	EV_TITLED_WINDOW
		rename
			put as put_ev
		export
			{EQA_TEST_SET} is_initialized
		redefine
			initialize,
			is_in_default_state
		end

	DO_INTERFACE_NAMES
		export
			{NONE} all
		undefine
			default_create,
			copy
		end

--	ABSTRACT_OBSERVER
--		undefine
--			default_create,
--			copy
--		end

	EXECUTION_ENVIRONMENT
		rename
			put as put_exec_env
		undefine
			default_create,
			copy
		end

create
	default_create

feature {EQA_TEST_SET} -- make and Initialize

	initialize
			-- Build the interface for this window.
		do
			Precursor {EV_TITLED_WINDOW}

				-- Create and add the menu bar.
			build_standard_menu_bar
			set_menu_bar (standard_menu_bar)

				-- Create and add the toolbar.
			build_standard_toolbar
			upper_bar.extend (create {EV_HORIZONTAL_SEPARATOR})
			upper_bar.extend (standard_toolbar)

				-- Create and add the status bar.
			build_standard_status_bar
			lower_bar.extend (standard_status_bar)

				--Create the main container
			build_main_container_default
			extend (main_container)

				-- Execute `request_close_window' when the user clicks
				-- on the cross in the title bar.
			close_request_actions.extend (agent request_close_window)

				-- Set the title of the window
			set_title (Window_title)

				-- Set the initial size of the window
			set_size (Window_width, Window_height)

				-- The user can't resize the window, it's predefined
			disable_user_resize
		end

feature -- Status report

	is_in_default_state: BOOLEAN
			-- Is the window in its default state
		do

		end

feature {EQA_TEST_SET} -- Menu Implementation

	standard_menu_bar: EV_MENU_BAR
			-- Standard menu bar for this window.

	file_menu: EV_MENU
			-- "File" menu for this window (contains New, Open, Close, Exit...)

	help_menu: EV_MENU
			-- "Help" menu for this window (contains About...)

	setting_menu: EV_MENU
			-- "Setting" menu for this window (contains Game Setting...)

	build_standard_menu_bar
			-- Create and populate `standard_menu_bar'.
		do

		end

	build_file_menu
			-- Create and populate `file_menu'.
		do

		end

	build_help_menu
			-- Create and populate `help_menu'.
		do

		end

		-- NEW

	build_setting_menu
			-- Create and populate `setting_menu'.
		do

		end

feature {EQA_TEST_SET} -- ToolBar Implementation

	standard_toolbar: EV_TOOL_BAR
			-- Standard toolbar for this window

	build_standard_toolbar
			-- Create and populate the standard toolbar.
		do
		end

feature {EQA_TEST_SET} -- StatusBar Implementation

	standard_status_bar: EV_STATUS_BAR
			-- Standard status bar for this window

	standard_status_label: EV_LABEL
			-- Label situated in the standard status bar.
			--
			-- Note: Call `standard_status_label.set_text (...)' to change the text
			--       displayed in the status bar.

	build_standard_status_bar
			-- Create and populate the standard toolbar.
		do

		end

feature {ANY} -- Implementation, Close event

	request_close_window
		-- Destroy the window
		require
			not_destroyed: not is_destroyed
		do

		ensure
			destroyed: is_destroyed
		end

feature {ANY} -- Implementation, New Game Event

	request_new_game (settings: DO_SETTINGS)
		-- Reset the main container
		require
			not_destroyed: not is_destroyed
		do

		ensure
			valid_game:
		end

feature {ANY} -- Implementation, About event

	on_about
			-- Display the About dialog.
		do

		end

feature {EQA_TEST_SET} -- Implementation

	main_container: EV_VERTICAL_BOX
			-- Main container (contains all widgets displayed in this window)

	l_table: EV_TABLE
			-- This table contains the grid with the cells
	build_main_container_default
			-- Create and populate `default_main_container'.
		do

		end

	build_main_container (setting: DO_SETTINGS)
			-- Create and populate `main_container'.
		do

		end

	build_main_board
	do

	end

feature {EQA_TEST_SET} -- Methods that print the window.

	on_update
		-- Implementation of feature inherited of ABSTRACT_OBSERVER
		-- This method reflects changes of the model to the window.
		require else
			valid_list:
		do

		end

feature {EQA_TEST_SET} -- Implementation / Constants

	Window_title: STRING = "Dominion"
			-- Title of the window.

	Window_width: INTEGER = 600
			-- Initial width for this window.

	Window_height: INTEGER = 600
			-- Initial height for this window.

	board: DO_BOARD
			-- Represent the board containing the mines

feature {ANY}

	rebuild_main_container (setting: DO_SETTINGS)
		-- Restart the game using the defined settings
		do

		end

	set_board (card_board: DO_BOARD)
		-- Set the board
		require
			board_not_null: board /= Void
		do

		end

end
