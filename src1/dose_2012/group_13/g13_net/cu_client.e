note
	description: "Summary description for {CU_CLIENT}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	CU_CLIENT

inherit

    SOCKET_RESOURCES

    STORABLE

creation
    make

feature {NONE}

    make
    		-- Establish communication with server, and exchange messages
--	    require
--	    	socket_ok: socket_ok
		local
            soc1: detachable NETWORK_STREAM_SOCKET
        do
        	create soc1.make_client_by_port (server_port, server_ip)
            soc1.connect
            process (soc1) -- See below
            soc1.cleanup
--	    ensure
--			socket_in_use: socket_in_use
        rescue
            if soc1 /= Void then
                soc1.cleanup
            end
        end


    process (soc1: NETWORK_STREAM_SOCKET)
            -- Build a message to server, receive answer, build
            -- modified message from that answer, and print it.
	    require
	    	not_connection_refused: not soc1.connection_refused
		local
            our_list: CU_NET_MESSAGE
            message: LINKED_LIST [STRING]
            ip_id: STRING
        do
            create our_list.make

            
            our_list.independent_store (soc1)

            if attached {CU_NET_MESSAGE} our_list.retrieved (soc1) as l_our_new_list then
            	io.put_string ("Connection established")
            	io.new_line
            end

--	    ensure
--	    	is_connnected:
	    end


    retrive_state (a_state: CU_GAME)
    		-- Recibe un estado proveniente del cliente que esta modificando el juego corriente
    	require
    		a_state_not_empty: a_state /= void
	    do
	    	state := a_state
		ensure
			update_state: state = a_state
	    end

	send_state: CU_GAME
		do
			--obtener_ip
			--state.current_player.obtener_ip
			--Subir estado de juego desde este ip
		ensure
			send_state: state /= void
		end

feature {NONE}
	state: CU_GAME
		-- Represents the current state of the game

	server_port: INTEGER = 2000

	server_ip: STRING =  "192.168.0.101"
end
