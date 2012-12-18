note
	description: "Summary description for {MY_THREAD}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	G10_THREAD

inherit
	THREAD
	rename
		make as thread_make
	end

create
	dflt_make, make_host, make_lobby, old_make

feature
	msg			: STRING
	soc			: NETWORK_STREAM_SOCKET
	host 		: G10_HOST
	lobby 		: G10_LOBBY_SERVER
	id			: INTEGER

feature
	dflt_make
	do

	end
	old_make (a_soc: NETWORK_STREAM_SOCKET; a_msg: STRING) -- apla yparxei
	do
		thread_make
		soc		:= a_soc
		msg		:= a_msg
	end

	make_host (a_soc : NETWORK_STREAM_SOCKET  a_host : G10_HOST  t_id :INTEGER)
	require
	not_void: a_host /= void
	do
			thread_make
			host := a_host
			soc := a_soc
			id := t_id

	ensure
		update_host : host = a_host
	end

	make_lobby (a_soc : NETWORK_STREAM_SOCKET a_lobby : G10_LOBBY_SERVER t_id :INTEGER)
	require
		not_void : a_lobby /= void
	do

			thread_make
			id := t_id
			lobby := a_lobby
			soc := a_soc

	ensure
		update_lobby : lobby = a_lobby
	end

feature
	execute
	local
		i : INTEGER
		str : STRING
	do
		print ("hello from thread  " + id.out + "%N")
		from
			str := ""
		until
			str = "Disconect"
		loop

			  str := lobby.msg_handler (soc)
		end
		if str = "Disconnect"
		then
			--soc.close
		end

--	from
--		i := 0; str := ""
--	until
--		str.is_equal ("stop") = true
--	loop
--		print ("In loop%N")
--		if soc.ready_for_reading = true
--		then
--			print("Ready for reading true %N")
--			if attached {STRING} soc.retrieved as l_msg then
--				str  := l_msg
--				print ("Retrieved ok%N")
--					io.putstring (l_msg + "%N")
--					io.new_line
--					soc.independent_store (l_msg + "%N" )
--				end
--				i := i + 1
--				--soc.close
--			end
--		end
--		if str.is_equal("stop") = true
--		then
--			--soc.close	
--		end
	end


	get_lobby_server : G10_LOBBY_SERVER
	do
		Result := lobby
	end
	get_host_server : G10_HOST
	do
		Result := host
	end
	get_thread_id : INTEGER
	do
		Result := id
	end
	geet_thread_socket : NETWORK_STREAM_SOCKET
	do
		Result := soc
	end

end
