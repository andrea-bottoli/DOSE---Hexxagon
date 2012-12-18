note
	description: "represents the graphic interface of the list of online users "
	author: "Angel Kyriako"
	date: "27/11/2012"

class
	G10_LOBBY_ONLINE_PLAYERS
	----------------------------------
inherit
	EV_LIST
	G10_LOBBY_CONSTANTS
		undefine
			default_create, copy, is_equal
		end
	----------------------------------
create make_online_users
	----------------------------------

feature {NONE}
-- add what is needed
	----------------------------------

feature {ANY} --constructor

	make_online_users(lobby: G10_LOBBY_MAIN)
	do
		default_create
		add_all_users(lobby.get_lobby_logic)
		pointer_enter_actions.extend (agent enter_online_players_notify(lobby) )
		pointer_leave_actions.extend (agent enter_online_players_notify(lobby) )
		lobby.get_background.extend_with_position_and_size (Current, online_users_Start_width, online_users_Start_height, online_users_width, online_users_height)
	end
	----------------------------------

feature {NONE} -- mutators

	add_all_users(lobby_logic: G10_LOBBY_LOGIC)-- adds all users to the list
	local
		a_user: EV_LIST_ITEM
	do
		across lobby_logic.get_all_connected_players as a_connected_player
		loop
			create a_user.make_with_text (a_connected_player.item.get_id+", ip: "+a_connected_player.item.get_internal_ip+", port: "+ a_connected_player.item.get_port)
			extend(a_user)
		end
	end
	----------------------------------
	enter_online_players_notify(lobby: G10_LOBBY_MAIN) -- updates lobby
	do
		-- latest update		
		lobby.update_lobby
	end

feature{G10_LOBBY_MAIN}
	----------------------------------
	redraw_all_players(lobby_logic: G10_LOBBY_LOGIC) -- redraws all the online players
	do
		wipe_out
		add_all_users(lobby_logic)
		refresh_now
	end
end
