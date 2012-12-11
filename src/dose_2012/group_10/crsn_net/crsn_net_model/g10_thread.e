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

feature
	dflt_make
	do

	end
	old_make (a_soc: NETWORK_STREAM_SOCKET; a_msg: STRING)
	do
		thread_make
		soc		:= a_soc
		msg		:= a_msg
	end

	make_host ( a_host : G10_HOST)
	require
	not_void: a_host /= void
	do
			thread_make
			host := a_host

	ensure
		update_host : host = a_host
	end

	make_lobby (a_lobby : G10_LOBBY_SERVER)
	require
		not_void : a_lobby /= void
	do
			thread_make
			lobby := a_lobby
	ensure
		update_lobby : lobby = a_lobby
	end

feature
	execute
	do
		if attached {STRING} soc.retrieved as l_msg then
			io.putstring (l_msg + " eee %N")
			io.new_line
			soc.independent_store (l_msg + "%N" + msg)
			soc.close
		end
	end





end
