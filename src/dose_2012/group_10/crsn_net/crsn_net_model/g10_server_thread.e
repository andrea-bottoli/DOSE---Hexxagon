note
	description: "Summary description for {MY_THREAD}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	G10_SERVER_THREAD

inherit
	THREAD
	rename
		make as thread_make
	end

create
	dflt_make,make

feature
	msg			: STRING
	soc			: NETWORK_STREAM_SOCKET
	object 		: G10_HOST
	id			: INTEGER

feature
	dflt_make
	do

	end


	make (  an_obj : G10_HOST  t_id :INTEGER)
	do
			thread_make
			object := an_obj

			id := t_id

	end

feature
	execute
	do
		print ("hello from SERVER THREAD   " + id.out + "%N")
		object.start_host_server

	end


	get_thread_id : INTEGER
	do
		Result := id
	end


end
