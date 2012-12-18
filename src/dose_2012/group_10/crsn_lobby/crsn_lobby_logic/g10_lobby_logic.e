note
	description: "Contains functionality of the lobby's logic component"
	author: "John Voyatzis"
	date: "30/11/2012"
	revision: "1.0"

class
	G10_LOBBY_LOGIC

inherit
	SOCKET_RESOURCES
	THREAD_CONTROL
	STORABLE
create
	make
------------------------------------------------------------------
feature{NONE} -- attributes

	list_of_games 				: ARRAYED_LIST[G10_HOSTED_GAME]
	list_of_connected_players	: ARRAYED_LIST[G10_NET_INFO]
	global_chat_log				: ARRAYED_LIST[STRING]
	lobby_info 					: G10_NET_INFO
	current_game_id   			: INTEGER
	random_gen 					: RANDOM

------------------------------------------------------------------
feature{ANY} -- constructor

	make(an_id, int_ip, ext_ip, a_port :STRING)
	do
		 create list_of_games.make (50)
		 create list_of_connected_players.make (50)
		 create global_chat_log.make (100)
		 create lobby_info.make_lobby(an_id, int_ip,ext_ip, a_port)
		 current_game_id := 1
	end

------------------------------------------------------------------
feature{ANY} -- mutators

	add_game_to_list ( host : G10_NET_INFO title : STRING num : INTEGER)
	require
		host_not_null : host /= void
	do
		if game_exists (title) = false
		then
			list_of_games.force (create {G10_HOSTED_GAME}.make(host, title, num, current_game_id))
			if (list_of_games.count = list_of_games.capacity) then
				list_of_games.resize (2*list_of_games.capacity)
			end
			current_game_id := current_game_id + 1
		end
	end

	add_player_to_list (a_player : G10_NET_INFO)
	require
		player_not_null : a_player /= void
	do
		if player_exists(a_player.get_id) = false then
			list_of_connected_players.put_front (a_player)
			if (list_of_connected_players.count = list_of_connected_players.capacity)
		     then
				list_of_connected_players.resize (2*list_of_connected_players.capacity)
			end
		end
	end

	add_text_msg_to_log(text_msg: STRING) -- inserts a text msg into the chat log data structure, the capacity is raised if needed
	require
		text_msg_valid: text_msg /= void and not text_msg.is_empty
	do
		global_chat_log.put_front (text_msg)
		if (global_chat_log.count = global_chat_log.capacity) then
			global_chat_log.resize (2*global_chat_log.capacity)
--			global_chat_log.duplicate (50)
		end
	ensure
		--insert_successful: global_chat_log.count = global_chat_log.count + 1
	end

	remove_game_from_list (a_game : G10_HOSTED_GAME)
	require
		game_not_void : a_game /= void
	do
		list_of_games.prune_all (a_game)
	ensure
		removed : list_of_games.has (a_game) = false
	end

	game_exists ( g_title : STRING) : BOOLEAN
	require
		gameID_is : g_title.is_empty = false
	local
		i : INTEGER
	do
		from  i := 1; Result := false
		until i > list_of_games.count
		loop
			if list_of_games.at (i).get_game_title.is_equal (g_title) = true
			then
				Result := true
			end
			i := i + 1
		end
	end

	player_exists (p_id : STRING) : BOOLEAN
	require
		player_id_is : p_id.is_empty = false
	--	player_list : list_of_connected_players.count > 0
	local
		i : INTEGER
	do
		from 	i := 1; Result := false
		until	i > list_of_connected_players.count
		loop
			if list_of_connected_players.at (i).get_id.is_equal (p_id)
			then
				Result := true
			end
			i := i + 1
		end
	end

	set_new_chat_list ( chat : ARRAYED_LIST[STRING])
	do
		global_chat_log := chat
	end
	set_new_games_list ( new_list : ARRAYED_LIST[G10_HOSTED_GAME])
	do
		list_of_games := new_list
	ensure
		update : list_of_games = new_list
	end

	set_new_players_list (new_list : ARRAYED_LIST [G10_NET_INFO] )
	do
		list_of_connected_players := new_list
	ensure
		update :list_of_connected_players = new_list
	end

------------------------------------------------------------------
feature{ANY} -- accessors

	get_game (game_ip : STRING) : G10_HOSTED_GAME
	require
		game_ip_not_null: game_ip /= void
		game_ip_not_empty: not game_ip.is_empty
	local
		i : INTEGER
	do
		from  i := 1
		until i > list_of_games.count
		loop
			if list_of_games.at (i).get_host_player.get_internal_ip.is_equal (game_ip) = True then
				Result := list_of_games.at (i)
			end
		end
	end

	get_all_games : ARRAYED_LIST[G10_HOSTED_GAME]
	do
		Result := list_of_games

	ensure
		new_list : Result.is_equal (list_of_games) = True AND Result /= void
	end

	get_connected_player (player_id : STRING) : G10_NET_INFO
	require
		player_id_not_null: player_id /= void
		player_id_not_empty: not player_id.is_empty
	local
		i : INTEGER
	do
		from
			i := 1
		until
			i > list_of_connected_players.count
		loop
			if list_of_connected_players.at (i).get_id.is_equal (player_id) = True
			then
				Result := list_of_connected_players.at (i)
			end
			--io.put_string (list_of_connected_players.at (i).get_player_id + " " + player_id)
			i := i + 1
		end
	end

	get_all_connected_players : ARRAYED_LIST[G10_NET_INFO]
	do
		Result := list_of_connected_players
	ensure
		result_is : result/= void AND Result.is_equal (list_of_connected_players) = True
	end

	get_global_chat_log: ARRAYED_LIST[STRING] --gets the global_chat_log
	do
		Result := global_chat_log
	end

	get_global_chat_log_msg(index: INTEGER): STRING -- gets a text message of the chat log
	do
		Result := global_chat_log.at(index)
	end

	get_active_games_no : INTEGER
	do
		Result := list_of_games.count
	end

	get_connected_player_no : INTEGER
	do
		Result := list_of_connected_players.count
	end

	get_game_by_number(num : INTEGER) : G10_HOSTED_GAME
	do
		Result := list_of_games.at (num)
	end

	get_info: G10_NET_INFO
	do
		Result := lobby_info
	end

	get_internal_ip: STRING
	do
		Result := lobby_info.get_internal_ip
	end

	get_external_ip : STRING
	do
		Result := lobby_info.get_external_ip
	end

	get_port: STRING
	do
		Result := lobby_info.get_port
	end
end
