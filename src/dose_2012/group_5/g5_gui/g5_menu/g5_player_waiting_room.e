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
		do
			-- add main container with background
			create main_container
			put(main_container)
			main_container.set_background_pixmap (pix_background_w_room)

			-- add text box players number
			create list_of_players_text_box.make_with_text ("")
			list_of_players_text_box.set_minimum_width (400)
			list_of_players_text_box.disable_edit
			main_container.extend (list_of_players_text_box)
			main_container.set_item_position (list_of_players_text_box, 500,372)

		--	create list_of_players.make (0)

		end

feature {G5_IGUI_TO_NET}

	set_player_list(joined_players_name: ARRAY[STRING])
		-- sets the list of players that joint the game
		local
			temporary_string: STRING
			i: INTEGER
		do
			create temporary_string.make_empty
			from
				i:=1
			until
				i> joined_players_name.count
			loop
				temporary_string.append (joined_players_name[i])
				temporary_string.append (" | ")
		--		list_of_players.force (joined_players_name[i])

				i:=i+1
			end
			
			current.lock_update
			list_of_players_text_box.set_text (temporary_string)
			current.unlock_update
		end


feature {NONE}	-- Attributes

	main_container: EV_FIXED
		-- the main container of the window

	list_of_players: ARRAYED_LIST[STRING]
		-- the list of players that will be display

	list_of_players_text_box: EV_TEXT_FIELD
		-- the text box of the list of players that

	pix_background_w_room: EV_PIXMAP
			-- returns the background of the menu as a pixmap
		once
			create Result

			Result.set_with_named_file (file_system.pathname_to_string (img_background_host_w_room))
		end
end
