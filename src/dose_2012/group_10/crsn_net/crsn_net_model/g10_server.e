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
	list_of_players	:  ARRAYED_LIST[G10_NET_INFO]
	socket_list    :  ARRAYED_LIST[NETWORK_STREAM_SOCKET]
	server_soc		:  NETWORK_STREAM_SOCKET
	server_online 	:  BOOLEAN
	server_port		:  INTEGER

feature {NONE}

	make(port : STRING)
			-- Accept communication with client and exchange messages
		do

				create list_of_players.make (6)
				create socket_list.make(6)
				server_port := port.to_integer
				create server_soc.make_server_by_port (server_port)
				server_soc.listen (5)
				server_online := false

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

feature -- mutators

	kick_player(player_ip : STRING)
	require
		 ip_is_empty  : player_ip.is_empty
	local
		player_index : INTEGER
		tmp_player  : G10_NET_INFO
	do
			--player_index := get_specific_player(player_ip)
		--	tmp_player := list_of_players.array_at (player_index)
	--		list_of_players.prune (tmp_player)

	ensure
		item_removed : list_of_players.count = old list_of_players.count - 1
	end


	set_port( new_port : INTEGER)
	require
		new_port_is : new_port>1023 AND new_port < 65535
	do
			server_port := new_port
	ensure
		new_port_update : server_port = new_port
	end

	broadcast_msg_to_all (message : ANY)
			-- notifies all the players about changes
	require
	--	msg : message.
	local
		i : INTEGER
	do
		from
			i := 1
		until
			i > socket_list.count
		loop
			print("Broadcast loop %N")
			if socket_list.at (i) /= void then
				print ("Not void %N")
			if  socket_list.at (i).is_closed = false
				then
					print ("not closed %N")
					socket_list.at (i).independent_store (message)
				end
			end
			i := i + 1
		end
		print ("Successful end %N")
	end

	disconnect_all_players
			--end of the game and disconnection of all player
	local
		i: INTEGER
	do
		from
			i:= list_of_players.count
		until
			i = 0
		loop
			list_of_players.remove
			i := i + 1
			-- needed code here
		end
	ensure
		empty_ : list_of_players.is_empty
	end


	close_socket
		do
			server_soc.cleanup
			rescue
				if server_soc /= void then
					server_soc.cleanup
				end
		end
feature --sockets

	get_socket_list  :  ARRAYED_LIST[NETWORK_STREAM_SOCKET]
	do
		Result := socket_list
	end
	get_socket_list_at (i : INTEGER) : NETWORK_STREAM_SOCKET
	do
		Result := socket_list.at (i)
	end

	add_to_socket_list (sock : NETWORK_STREAM_SOCKET)
	do
		socket_list.put_front (sock)
	end

	remove_from_socket_array (sock : NETWORK_STREAM_SOCKET)
	do
		socket_list.prune_all (sock)
	end
end

