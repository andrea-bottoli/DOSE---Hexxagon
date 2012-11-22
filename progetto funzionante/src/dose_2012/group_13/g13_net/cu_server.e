note
	description: "Summary description for {CU_SERVER}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	CU_SERVER

inherit

    SOCKET_RESOURCES

    STORABLE

    CU_OBSERVABLE

create
    make

feature

    make
    		-- Accept communication with client and exchange messages
	    require
	    	socket_ok: socket_ok
			not_socket_in_use: not socket_in_use
	    do

		ensure
			socket_in_use: socket_in_use
   		end


    process (soc1: NETWORK_STREAM_SOCKET)
			-- Receive a message, extend it, and send it back
		require
	    	not_connection_refused: not soc1.connection_refused
	    do

	    ensure
	    	is_connnected: soc1.is_connected
		end

	subscribe (new_ip: STRING)
			-- Subscribe a new Ip on the ip list
		require
			valid_ip: new_ip /= void
			not_registered_ip: not ip_list.has (new_ip)
		do
		ensure
			registered_ip: ip_list.has (new_ip)
		end

	unsubscribe (new_ip: STRING)
			-- Unsubscribe a new Ip on the ip list
		require
			valid_ip: new_ip /= void
			registered_ip: ip_list.has (new_ip)
		do
		ensure
			not_registered_ip: not ip_list.has (new_ip)
		end

	notify_all
			-- Notify to all observers/subscriptors a change of the state
		do
		end

feature {NONE}
	state: CU_GAME
		-- Represents the current state of the game

	ip_list: LINKED_LIST [STRING]
		-- List of Ip's of all subscriptors
end
