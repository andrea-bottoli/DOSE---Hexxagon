note
	description: "Summary description for {G5_HOST_WAITING_ROOM}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	G5_HOST_WAITING_ROOM
inherit
	G5_PLAYER_WAITING_ROOM
	redefine
			container_initialization, pix_background_w_room
	end

create
	make

feature {NONE} -- Implementation, Close events

	container_initialization
		-- Used to initialize the content of the window
		do
			-- add main container with background
			create main_container
			put(main_container)
			main_container.set_background_pixmap (pix_background_w_room)

			-- add text box players number
			create list_of_players_text_box
			list_of_players_text_box.set_minimum_width (400)
			list_of_players_text_box.disable_edit
			main_container.extend (list_of_players_text_box)
			main_container.set_item_position (list_of_players_text_box, 500,372)

			list_of_players:= ""
		end

feature {G5_IGUI_TO_NET}

	add_player_to_the_list(a_player_name: STRING)
		-- add a new name to the list of players registered for the match
		do
			list_of_players.append(a_player_name)
			list_of_players.append ("  ")
			list_of_players_text_box.set_text (list_of_players)
			--list_of_players_text_box.text.append_string (a_player_name)
			--list_of_players_text_box.text.append_string ("  ")
		end

feature {NONE}	-- Attributes

	list_of_players: STRING
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
