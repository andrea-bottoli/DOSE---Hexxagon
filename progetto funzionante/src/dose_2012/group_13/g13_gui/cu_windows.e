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
			initialize
		end
create
	make_window

feature -- make and Initialize

	make_window (controller:CU_INIT_CONTROLLER)
	do
		set_window_controller(controller)
		default_create
	end


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

				-- Set the title of the window
			set_title (window_title)

				-- Set the initial size of the window
			set_size (window_width, window_height)

				-- The user can't resize the window, it's predefined
			disable_user_resize
		end

feature {ANY} -- Implementation

	standard_menu_bar: EV_MENU_BAR
			-- Standard menu bar for this window.

	file_menu: EV_MENU
			-- "File" menu for this window (contains Create Game, Join Game, Quit Game)

	help_menu: EV_MENU
			-- "Help" menu for this window (contains Show Rules, About)

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

	request_close_window
		-- Destroy the window
		require
			not_destroyed: not is_destroyed
		do

		ensure
			destroyed: is_destroyed
		end
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

end
