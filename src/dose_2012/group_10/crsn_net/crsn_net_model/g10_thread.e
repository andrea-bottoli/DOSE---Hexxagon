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
	G10_NET_COM_PROTOCOL
	export
	{NONE} message_DISCONNECT
	end
create
	dflt_make,make

feature
	msg			: STRING
	soc			: NETWORK_STREAM_SOCKET
	object 		: ANY
	id			: INTEGER

feature
	dflt_make
	do

	end


	make (a_soc : NETWORK_STREAM_SOCKET  an_obj : ANY  t_id :INTEGER)
	do
			thread_make
			object := an_obj
			soc := a_soc
			id := t_id

	end

feature
	execute
	do
		print ("hello from thread  " + id.out + "%N")
		if attached {G10_HOST} object as host_server
		then
			execute_host_server (host_server)
		end

		if attached{G10_LOBBY_SERVER} object as lobby_server
		then
			execute_lobby_server (lobby_server)
		end

	end

	execute_lobby_server(lobby : G10_LOBBY_SERVER)
	local
		i : INTEGER
		str : STRING
	do
		from  str := ""
		until str = message_DISCONNECT
		loop
			  str := lobby.msg_handler (soc)
		end

--		if str = "Disconnect"
--		then
--			--soc.close
--		end
	end
	execute_host_server( host : G10_HOST)
	local
		i : INTEGER
		str  : STRING
	do

		print ("EEEEEEEEEEEEEEEEEEEEEEEEEEEEE %N")
	str:=	host.host_msg_handler (soc)
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
