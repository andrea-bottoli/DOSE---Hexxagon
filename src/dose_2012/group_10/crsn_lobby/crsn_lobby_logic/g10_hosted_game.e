note
	description: "Summary description for {G10_HOSTED_GAME}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	G10_HOSTED_GAME

create
	dflt_make, make

feature {NONE}--attributes
	host_player 			: G10_NET_INFO
	socket_list     		:  ARRAYED_LIST[NETWORK_STREAM_SOCKET]
	list_of_joined_players	: ARRAYED_LIST[G10_NET_INFO]
	game_id					: INTEGER
	game_title				: STRING

feature

	dflt_make
	do
		host_player := void
		list_of_joined_players := void
		game_id	:= -1
		game_title := void
	end

	make (player_info : G10_NET_INFO title : STRING player_num, next_game_id : INTEGER)
	require
		player_is : player_info /= void
		title_is  : title.is_empty = false
	do
		create list_of_joined_players.make (player_num)
		host_player := player_info
		game_id := next_game_id
		game_title := title
	ensure
		number_of_players : list_of_joined_players.capacity = player_num
		g_title 		  : game_title = title
		host_player_is 	  : host_player = player_info
	end

feature -- mutators
	add_a_joined_player (a_player : G10_NET_INFO)
	require
		a_player_not_null: a_player /= void
	do
--		if player_exists(a_player.get_id) = false
--		then
			list_of_joined_players.put_front (a_player)
--		end
			print ("Inserteddd %N")
	ensure
		player_count_raised: list_of_joined_players.count = old list_of_joined_players.count + 1
	end


	delete_a_joined_player ( a_player : G10_NET_INFO)
	require
		a_player_not_null: a_player /= void
	do
		if player_exists(a_player.get_id) = true then
			list_of_joined_players.prune_all (a_player)
		end
	ensure
		--player_count_decreased: list_of_joined_players.count = old list_of_joined_players.count - 1
	end

	set_a_host ( a_host : G10_NET_INFO)
	require
		a_host_not_null: a_host /= void
	do
		host_player := a_host
	ensure
		host_really_changed: host_player /= old host_player
	end

feature --other
	player_exists (p_id : STRING) : BOOLEAN
	require
		pID_is : p_id.is_empty = false
	local
		i : INTEGER
		do
			from  i := 1; Result := false
			until i > list_of_joined_players.count AND Result = true
			loop
				if list_of_joined_players.at (i).get_id.is_equal (p_id) = true
				then
					Result := true
				end
				i := i + 1
			end
		end

feature -- accessors
	get_game_title : STRING
	do
		Result := game_title

	ensure
		title : Result = game_title
	end

	get_max_player_num : INTEGER
	do
		Result := list_of_joined_players.capacity
	ensure
		max : Result = list_of_joined_players.capacity
	end

	get_game_id: INTEGER
	do
		Result := game_id
	ensure
		id: Result = game_id
	end

	get_host_player : G10_NET_INFO
	do
		Result := host_player
	ensure
		result_is : Result /= void
	end

	get_joined_player(player_id : STRING) : G10_NET_INFO
	require
		player_id_not_null: player_id /= void
		player_id_not_empty: not player_id.is_empty
	local
		i : INTEGER
	do
		from  i := 1
		until list_of_joined_players.at (i).get_id.is_equal (player_id) = True
		loop
			Result := list_of_joined_players.at (i)
		 	i := i + 1
		end
	end

	get_all_joined_players : ARRAYED_LIST[G10_NET_INFO]
	do
		Result :=  list_of_joined_players
	ensure
		result_is : Result /= void  AND Result = list_of_joined_players
	end

	feature --sockets

	get_socket_list  :  ARRAYED_LIST[NETWORK_STREAM_SOCKET]
	do
		Result := socket_list
	ensure
		return : Result = socket_list
	end
	get_socket_list_at (i : INTEGER) : NETWORK_STREAM_SOCKET
	do
		Result := socket_list.at (i)

	ensure
		return : Result = socket_list.at (i)
	end

	add_to_socket_list (sock : NETWORK_STREAM_SOCKET)
	do
		socket_list.put_front (sock)
	ensure
		list_soc : socket_list.has (sock ) = true
	end

	remove_from_socket_array (sock : NETWORK_STREAM_SOCKET)
	do
		socket_list.prune_all (sock)
	ensure
		list_soc : socket_list.has (sock) = false
	end
end
