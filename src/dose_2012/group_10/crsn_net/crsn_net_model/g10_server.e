note

	description:
		"Class with code for a server"

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
	list_of_players	:  ARRAYED_LIST[G10_NET_PLAYER_INFO]
	server_soc		:  NETWORK_STREAM_SOCKET
	server_online 	:  BOOLEAN
	server_port		:  INTEGER

feature {NONE}


	make(port : STRING)
			-- Accept communication with client and exchange messages
		do

				create list_of_players.make (6)
				server_port := port.to_integer
				create server_soc.make_server_by_port (server_port)
				server_soc.listen (5)
				print ("%NG10_server_class! IP : " + server_soc.address.host_address.host_name + "%N%N")
				server_online := false

		end


feature -- accessors

			--get all players that are connected to host
	get_connected_players	: LINKED_LIST[G10_NET_PLAYER_INFO]
	local
		i : INTEGER
		list_of_connected_players : LINKED_LIST[G10_NET_PLAYER_INFO]
	do
			from
				i := 1
			until
				i = list_of_players.count
			loop
				list_of_connected_players.put (list_of_players.array_at (i))
				i := i + 1
			end

			Result := list_of_connected_players
	ensure
		list_not_empty:	list_of_players.is_empty
	end


		-- returns the array's list element of a specific player
	get_specific_player(player_ip : STRING)	:INTEGER
	require
		not_empty : player_ip.is_empty
	local
		index : INTEGER
	do
			from
			    index := 1
			until
				index > list_of_players.count
			loop

				if list_of_players.array_at (index).get_ip = player_ip
				then
				 	Result := index
				end
				index := index + 1
			end
	ensure
		player_return_is : Result > 0 AND Result < list_of_players.count

	end

	get_list_of_players : ARRAYED_LIST[G10_NET_PLAYER_INFO]
	do
		Result := list_of_players
	ensure
		res_ok : Result /= void
	end

	get_socket : NETWORK_STREAM_SOCKET
	do
		Result := server_soc
	end

	get_server_port : INTEGER
	do
		Result := server_soc.port
	end

feature -- mutators

	add_new_player( a_player : G10_NET_PLAYER_INFO)
	require
		player_not_null : a_player /= void
		list_not_full :  list_of_players.full = false
	do
		list_of_players.put_front (a_player)

	ensure
		player_added : list_of_players.has (a_player)
		count_is_ : list_of_players.count = old list_of_players.count + 1
	end


	kick_player(player_ip : STRING)
	require
		 ip_is_empty  : player_ip.is_empty
	local
		player_index : INTEGER
		tmp_player  : G10_NET_PLAYER_INFO
	do
			player_index := get_specific_player(player_ip)
			tmp_player := list_of_players.array_at (player_index)
			list_of_players.prune (tmp_player)

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

	broadcast_msg_to_all (message : G10_CRSN_MESSAGE sock : NETWORK_STREAM_SOCKET)
			-- notifies all the players about changes
	require
	--	msg : message.
	local
		i : INTEGER
	do
		from
			i := 1
		until
			i > list_of_players.count
		loop
			-- needed code here
			i := i + 1
		end
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

end

