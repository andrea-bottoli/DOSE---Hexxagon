note
	description: "contains the functionality of the game's south panel on the lobby window -> 1)hosted game info or 2)global chat"
	author: "Angel Kyriako"
	date: "10/12/2012"
	revision: "2.0"

class
	G10_LOBBY_SOUTH_PANEL
inherit
	EV_FIXED
	G10_LOBBY_CONSTANTS
	undefine
		copy , is_equal, default_create
	end

create
	make

-- attributes
feature {NONE}
	chat_area: G10_LOBBY_GLOBAL_CHAT
	info_area: G10_LOBBY_NEW_GAME_INFO

feature {ANY}-- constructor

	make(lobby : G10_LOBBY_MAIN)
	require
		lobby_not_null : lobby /= void
	do
		-- create the panel
		default_create
		-- and add it to the background of lobby
		lobby.get_background.extend_with_position_and_size (current, south_panel_start_width, south_panel_start_height,
																	 south_panel_width, south_panel_height)
		-- create the info panel
		create info_area.make(lobby)
		-- create an empty panel
		create chat_area.make(lobby)
		-- starting with empty panel
		paint_global_chat_panel(lobby)
	end


feature {G10_LOBBY_ALL_BUTTONS, G10_LOBBY_MAIN} -- mutators

	paint_new_game_info_panel(lobby : G10_LOBBY_MAIN)
	require
		panel_not_void: current /= void
	do
		if ( not identifier_name.is_equal("info_area") ) then
			set_identifier_name ("info_area")
			wipe_out
			set_extend (info_area)
			refresh_now
		end
	end

	paint_global_chat_panel(lobby : G10_LOBBY_MAIN)
	require
		panel_not_void: current /= void
	do
		if ( not identifier_name.is_equal("chat_area") ) then
			set_identifier_name ("chat_area")
			wipe_out
			set_extend (chat_area)
			refresh_now
		end
	end

feature{G10_LOBBY_MAIN}

	get_global_chat: G10_LOBBY_GLOBAL_CHAT
	do
		Result := chat_area
	end

end
