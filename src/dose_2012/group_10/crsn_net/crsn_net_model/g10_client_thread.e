note
	description: "Summary description for {G10_CLIENT_THREAD}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	G10_CLIENT_THREAD

inherit
	THREAD
	rename
		make as thread_make
	end

create
	dflt_make, make_user, old_make

feature
	soc			: NETWORK_STREAM_SOCKET
	user 		: G10_LOBBY_USER
	id			: INTEGER

feature
	dflt_make
	do

	end
	old_make (a_soc: NETWORK_STREAM_SOCKET; a_msg: STRING) -- apla yparxei
	do
		thread_make
		soc		:= a_soc
	end

	make_user (a_soc : NETWORK_STREAM_SOCKET  a_user : G10_LOBBY_USER  t_id :INTEGER)
	require

	do
			thread_make
			user := a_user
			soc := a_soc
			id := t_id

	end

feature
	execute
	local
		i : INTEGER
		str : STRING
	do
		if id = 0
		then

		  --user.create_lobby_ui
		 -- user.get_crsn_lobby_ui.show
		 -- user.get_main_ui.add_reference_to_game (user.get_crsn_lobby_ui)

		end

       if (id = 1)
       then


		from i := 0
		until i = 2
		loop
			user.keep_lobby_updated
			i := i + 1
		end
	 end
	end

	get_thread_id : INTEGER
	do
		Result := id
	end
	geet_thread_socket : NETWORK_STREAM_SOCKET
	do
		Result := soc
	end
	get_user : G10_LOBBY_USER
	do
		Result := user
	end

end
