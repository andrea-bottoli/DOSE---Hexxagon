note
	description: "represents the graphic interface of the list of online users "
	author: "Angel Kyriako"
	date: "27/11/2012"

class
	G10_LOBBY_ONLINE_USERS_LIST
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
		add_all_users
		lobby.get_background.extend_with_position_and_size (Current, online_users_Start_width, online_users_Start_height, online_users_width, online_users_height)
	end
	----------------------------------

feature {NONE} -- adds all users to the list

	add_all_users
	local
		a_user: EV_LIST_ITEM
		i : INTEGER
	do
		from
			i := 1
		until
			i > 30
		loop
			create a_user.make_with_text ("Awesome troll bot "+ i.out)
			extend(a_user)
			i := i + 1;
		end
	end
	----------------------------------
end
