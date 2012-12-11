note
	description: "Summary description for {G5_PLAYER_WAITING_ROOM}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	G5_PLAYER_WAITING_ROOM
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

	make
			-- Creation procedure
		do
			-- Create the main menù window.
			make_with_title ("Dominion - Waiting Room")
		end

	initialize
			-- Build the window
		do
			Precursor {EV_TITLED_WINDOW}
			set_size(1000,563)
			close_request_actions.extend (agent request_close_window)
			container_initialization
		end

feature {NONE} -- Implementation, Close events

	request_close_window
			-- The user wants to close the window using X button
		local
			impossible_to_exit_dialog: EV_INFORMATION_DIALOG
		do
			create impossible_to_exit_dialog.make_with_text ("You can't exit now, please wait.")
			impossible_to_exit_dialog.set_title ("Impossible to exit")
			impossible_to_exit_dialog.show_modal_to_window (current)
		end

	container_initialization
		-- Used to initialize the content of the window
		do
			-- add main container with background
			create main_container
			put(main_container)
			main_container.set_background_pixmap (pix_background_w_room)
		end

feature {NONE}	-- Attributes

	main_container: EV_FIXED
		-- the main container of the window

	pix_background_w_room: EV_PIXMAP
			-- returns the background of the menu as a pixmap
		once
			create Result

			Result.set_with_named_file (file_system.pathname_to_string (img_background_player_w_room))
		end
end
