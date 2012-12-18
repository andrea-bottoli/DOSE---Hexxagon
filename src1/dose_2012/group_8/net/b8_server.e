note
	description: "Server of the game"
	authors: "George Vardakis"
	date: "6/12/2012"
	revision: "0.0.1"

class
    B8_SERVER
inherit
	SOCKET_RESOURCES
	THREAD_CONTROL
--	B8_GAME_MODE
create
    make_server

feature

    make_server(a_players:INTEGER;a_port_number:INTEGER;a_logic:B8_LOGIC)
            -- Accept communication with client and exchange messages
        local
            --count: INTEGER
            id:INTEGER --The id of each thread
            soc:  NETWORK_STREAM_SOCKET --the socket
            thread:B8_MY_THREAD_SERVER --the created thread
            soc2:NETWORK_STREAM_SOCKET
            thread_available:INTEGER --the position available to put a thread in the array

        do
			logic:=a_logic
			players:=a_players
        	thread_available:=0
        	--create threads.make(1,3) Stefano: there was a warning which says that this is an Obsolete Call
        	create threads.make_filled(Void,1,players)
        	id:=1
				port_number:=a_port_number
				--create sockets.make(1,players) Stefano: there was a warning which says that this is an Obsolete Call
				create sockets.make_filled(Void,1,players) --create the array which contains the sockets that the server handles
				--create soc.make_server_by_port(port_number)
        		logic.set_player_id (0) --Start the game

        		if players=4 then
      				logic.set_game_mode (0)
      			else
      				logic.set_game_mode (1)
      			end
        		logic.start_game
				from
        			--soc.listen(5)
        			id:=1
        		until
        			id=players
        		loop
        			--soc.accept
        			--soc2:=soc.accepted
        			thread_available:=thread_available+1
        			create thread.make(id,players,soc2)
        			threads.put (thread, thread_available)
        			sockets.put(soc2,id)--put the socket in the array
        			thread.launch
					id:=id+1

        		end

        end

feature
	threads:ARRAY[B8_MY_THREAD_SERVER] --Array of the threads the server uses
	sockets:ARRAY[NETWORK_STREAM_SOCKET]
	players:INTEGER
	port_number:INTEGER
	logic:B8_LOGIC
	mode:B8_MULTI_MODE
end
