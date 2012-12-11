note
	description: "Summary description for {MY_THREAD}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	B8_MY_THREAD
inherit
	THREAD
		rename
			make as thread_make
		end
create
	make

feature
	sockets:ARRAY[NETWORK_STREAM_SOCKET] --Array containing all the threads of the server
	my_mutex:MUTEX
	make(a_id:INTEGER;a_soc:  NETWORK_STREAM_SOCKET)
	do
		create my_mutex.make
		my_mutex.lock
		thread_make
		soc1:=a_soc
		id:=a_id
		create my_mutex.make
		if(sockets=Void) then
			create sockets.make(1,3)
		end

		sockets.put(soc1,id)
		my_mutex.unlock
	end
	execute --feature called when thread is launched
        do


            if attached{STRING} soc1.retrieved as l_msg then --incoming message from client
            	io.put_string (l_msg+" Thread "+id.out+" reporting%N")
            end



            soc1.independent_store ("Got it!") --message sent to the client

            soc1.close
            --end
        end

feature{NONE}
	id:INTEGER --id of the thread
	soc1:  NETWORK_STREAM_SOCKET --socket which the thread manipulates
end
