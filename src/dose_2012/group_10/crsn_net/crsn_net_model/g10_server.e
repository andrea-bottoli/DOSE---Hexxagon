note

	description:"Class with code for a server"
	author: "John Voyatzis"
	status: "Modifying";
	date: "11/11/2012 3:08am";
	revision: "Revision 1.0"

class G10_SERVER

inherit

	SOCKET_RESOURCES
	G10_NET
	THREAD_CONTROL

create

	make
feature {NONE}
	server_soc		:  NETWORK_STREAM_SOCKET
	server_online 	:  BOOLEAN
	server_port		:  INTEGER

feature {NONE}

	make(port : STRING)
			-- Accept communication with client and exchange messages
		do
				server_port := port.to_integer
				create server_soc.make_server_by_port (server_port)
				server_soc.listen (5)
				server_online := true

		end


feature -- accessors

	get_socket : NETWORK_STREAM_SOCKET
	do
		Result := server_soc
	end

	get_server_port : INTEGER
	do
		Result := server_soc.port
	end

feature

	

--	broadcast_msg_to_all (message : ANY)
--			-- notifies all the players about changes
--	require
--	--	msg : message.
--	local
--		i : INTEGER
--	do
--		from
--			i := 1
--		until
--			i > socket_list.count
--		loop
--			print("Broadcast loop %N")
--			if socket_list.at (i) /= void then
--				print ("Not void %N")
--			if  socket_list.at (i).is_closed = false
--				then
--					print ("not closed %N")
--					socket_list.at (i).independent_store (message)
--				end
--			end
--			i := i + 1
--		end
--		print ("Successful end %N")
--	end

--	disconnect_all_players
--			--end of the game and disconnection of all player
--	local
--		i: INTEGER
--	do
--		from
--			i:= list_of_players.count
--		until
--			i = 0
--		loop
--			list_of_players.remove
--			i := i + 1
--			-- needed code here
--		end
--	ensure
--		empty_ : list_of_players.is_empty
--	end

feature --{G10_LOBBY_SERVER, G10_HOST}
	close_socket
		do
			server_soc.cleanup
			rescue
				if server_soc /= void then
					server_soc.cleanup
				end
		end


feature

	set_port( new_port : INTEGER)
	require
		new_port_is : new_port>1023 AND new_port < 65535
	do
			server_port := new_port
	ensure
		new_port_update : server_port = new_port
	end


invariant
	server_port_is : server_port > 1023 AND server_port < 65536
end

