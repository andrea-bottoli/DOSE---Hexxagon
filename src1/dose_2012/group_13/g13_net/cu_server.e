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
create
    make

feature

            soc1: detachable NETWORK_STREAM_SOCKET
    make
    		-- Accept communication with client and exchange messages
--	    require
--	    	socket_ok: socket_ok
--			not_socket_in_use: not socket_in_use
	   local
            count: INTEGER
        do
        	create ip_list.make_filled ("", 0, 5)
            create soc1.make_server_by_port (server_port)
--            io.put_string ("es inicializado")
--            from
                soc1.listen (1)
--                count := 0
--            until
--                count = 50
--            loop
                process-- (soc1) -- See below
--                count := count + 1
--            end
            soc1.cleanup
--		ensure
--			socket_in_use: socket_in_use
        rescue
            if soc1 /= Void then
                soc1.cleanup
            end
   		end


    process --(soc1: NETWORK_STREAM_SOCKET)
			-- Receive a message, extend it, and send it back
		require
	    	not_connection_refused: not soc1.connection_refused
	    local
	    	message: LINKED_LIST [STRING]
	    	i: INTEGER
	     do
            soc1.accept
            create message.make
            if attached soc1.accepted as l_soc2 then
				subscribe (l_soc2.address.host_address.host_address)
                if attached {CU_NET_MESSAGE} retrieved (l_soc2) as l_our_new_list then
					subscribe (l_soc2.peer_address.host_address.host_address)
					set_state (l_our_new_list.return_state)
--					from
--						i := 0
--					until
--						i >= ip_list.count
--					loop
--						io.put_string (ip_list.item (i))
--						io.new_line
--						i := i + 1
--					end
                    l_our_new_list.independent_store (l_soc2)
                end
                l_soc2.close
            end
	    ensure
	    	is_connnected: NOT soc1.is_closed
		end

	set_state (a_state: CU_GAME)
	do
		state := a_state
	end

	subscribe (new_ip: STRING)
			-- Subscribe a new Ip on the ip list
		require
			valid_ip: new_ip /= void
			not_registered_ip: not ip_list.has (new_ip)
		local
			index: INTEGER
			inserted: BOOLEAN
		do
			inserted := False
			from
				index := 0
			until
				index >= ip_list.count or inserted
			loop
				if ip_list.item (index).is_equal ("") and not suscripted (new_ip) then
					ip_list.item (index) := new_ip
					inserted := True
				end
				index := index + 1
			end
		ensure
--			registered_ip: ip_list.has (new_ip)
		end

	suscripted (new_ip:STRING): BOOLEAN
		local
			index: INTEGER
			exists: BOOLEAN
		do
			from
				index := 0
				exists := False
			until
				index >= ip_list.count or exists
			loop
				if new_ip.is_equal (ip_list.item (index)) then
					exists := True
				end
				index := index + 1
			end
			Result := exists
		end

	unsubscribe (new_ip: STRING)
			-- Unsubscribe a new Ip on the ip list
		require
			valid_ip: new_ip /= void
			registered_ip: ip_list.has (new_ip)
		local
			index_aux, index: INTEGER

		do
			from
				index := 0
			until
				index >= ip_list.count
			loop
				if ip_list.at (index).is_equal (new_ip) then
					from
						index_aux := index
					until
						index_aux >= ip_list.count - 1
					loop
						ip_list.at (index_aux) := ip_list.at (index_aux + 1)
						index_aux  := index_aux + 1
					end
				end
				index := index + 1
			end
			ip_list.remove_tail (1)
		ensure
			not_registered_ip: not ip_list.has (new_ip)
		end

	notify_all
			-- Notify to all observers/subscriptors a change of the state
		do
		end

	list_of_connected_players:  ARRAY [STRING]
	do
		Result := ip_list
	end

feature {NONE}
	state: CU_GAME
		-- Represents the current state of the game

--	ip_list: LINKED_LIST [STRING]
	ip_list: ARRAY [STRING]
		-- List of Ip's of all subscriptors

	server_port: INTEGER = 2000
end
