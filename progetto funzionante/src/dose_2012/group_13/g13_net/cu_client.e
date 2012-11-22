note
	description: "Summary description for {CU_CLIENT}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	CU_CLIENT

inherit

    SOCKET_RESOURCES

    CU_OBSERVER
    redefine
    	update
    end

creation
    make

feature

    make
    		-- Establish communication with server, and exchange messages
	    require
	    	socket_ok: socket_ok
	    do

	    ensure
			socket_in_use: socket_in_use
	    end

    process (soc1: NETWORK_STREAM_SOCKET)
            -- Build a message to server, receive answer, build
            -- modified message from that answer, and print it.
	    require
	    	not_connection_refused: not soc1.connection_refused
	    do

	    ensure
	    	is_connnected: soc1.is_connected
	    end

    connect_to_server (ip: STRING; port: INTEGER)
    		-- Connect a client to the server
	    require
	    	valid_port: port > 0
	    	valid_ip: ip /= void
	    do
	    end

    retrive_state: CU_GAME
    		-- Send a state to the server for notify to all observers
	    do
		ensure
			changes_state: old state /= Result
	    end

	update (a_subject: CU_OBSERVABLE; a_mess: CU_MESSAGE)
			-- Set the old state with new state
		do
		end

feature {NONE}
	state: CU_GAME
		-- Represents the current state of the game

end


