note
	description: "Summary description for {G10_NET_COM_FUNCS}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

deferred class
	G10_NET_COM_FUNCS
inherit
	G10_NET_COM_PROTOCOL


feature {G10_LOBBY_SERVER, G10_LOBBY_USER}

	handle_connect_message ( receiver : G10_NET_INFO sock : NETWORK_STREAM_SOCKET)
	do
	end


	handle_disconnect_message ( receiver : G10_NET_INFO sock : NETWORK_STREAM_SOCKET) : STRING
	do
	end

feature {G10_LOBBY_USER,G10_JOINED_PLAYER}
	interaction_for_disconnect
	deferred

	end
	interaction_for_connect
	deferred

	end
	receive_ack : BOOLEAN
	deferred
	end
feature {G10_LOBBY_USER,G10_LOBBY_MAIN} -- only for lobby user


	interaction_with_lobby_for_create ( lobby_user : G10_LOBBY_USER  game_title : STRING max_num : INTEGER) : BOOLEAN
	require
		instance : lobby_user /= void
		title 	 : game_title /= void OR game_title.is_empty = false
		max_num  : max_num > 1 AND max_num <= 6
	do
		Result := false

		lobby_user.get_lobby_client.send_message_to_server (create {G10_CRSN_SPECIAL_DATA_MESSAGE }.make_special_data_msg
							(message_CREATE, lobby_user.get_player_info,lobby_user.get_crsn_lobby_logic.get_info, game_title,max_num, -1))
		print (" Send message : " + message_CREATE + "%N")

		Result := lobby_user.receive_ack
	end

	interaction_with_lobby_for_join	( lobby_user : G10_LOBBY_USER game_id : INTEGER): G10_NET_INFO
	require
		instance : lobby_user /= void
		id		 : game_id > 0
	do
			lobby_user.get_lobby_client.send_message_to_server (create
			{G10_CRSN_SPECIAL_DATA_MESSAGE}.make_special_data_msg
			(message_JOIN, lobby_user.get_player_info, lobby_user.get_crsn_lobby_logic.get_info, void,game_id, -1))
			print (" Send message : " + message_JOIN + "%N")

			Result := receive_host_info_from_lobby(lobby_user)
	ensure
		host_not_void : Result /= void
	end

	interaction_with_lobby_for_get_games ( lobby_user : G10_LOBBY_USER)
	require
		instance : lobby_user /= void
	do
		lobby_user.get_lobby_client.send_message_to_server (create {G10_CRSN_MESSAGE}.make_msg
			(message_GET_GAMES, lobby_user.get_player_info, lobby_user.get_crsn_lobby_logic.get_info))
		print (" Send message : " + message_GET_GAMES + "%N")
	end

	interaction_with_lobby_for_get_users (lobby_user : G10_LOBBY_USER)
	require
		instance : lobby_user /= void
	do

		lobby_user.get_lobby_client.send_message_to_server (create {G10_CRSN_MESSAGE}.make_msg
								(message_GET_USERS, lobby_user.get_player_info, lobby_user.get_crsn_lobby_logic.get_info))
		print (" Send message : " + message_GET_USERS + "%N")
	end

	interaction_with_lobby_for_chat (lobby_user : G10_LOBBY_USER msg : STRING)
	require
		instance : lobby_user /= void
	do
		if msg/= void then

			print ("message : " + msg)

		end

		lobby_user.get_lobby_client.send_message_to_server (create {G10_CRSN_DATA_MESSAGE}.make_data_msg
				(message_CHAT, lobby_user.get_player_info, lobby_user.get_crsn_lobby_logic.get_info,msg))
	end

-- RECEIVE FUNCTIONS
-- Responsed from lobby_server

	receive_games_from_lobby (lobby_user : G10_LOBBY_USER) : BOOLEAN
	require
		instance : lobby_user /= void
	local
		temp_soc : NETWORK_STREAM_SOCKET
	do
		Result := false
		temp_soc := lobby_user.get_lobby_client.get_socket

		if (temp_soc.ready_for_reading = true)
		then
			if attached {G10_CRSN_DATA_MESSAGE} temp_soc.retrieved as data_msg
			then
				if data_msg.get_id.is_equal (message_ACK) = true
				then
					if attached {ARRAYED_LIST[G10_HOSTED_GAME] } data_msg.get_data as game_arr_list
					then --if ack
						print ("Receiving Games List ... %N")
						lobby_user.get_crsn_lobby_logic.set_new_games_list (game_arr_list)
						Result := true
					end
				end
			end
		end
	end

	receive_users_from_lobby (lobby_user : G10_LOBBY_USER) : BOOLEAN
	require
		instance : lobby_user /= void
	local
		temp_soc : NETWORK_STREAM_SOCKET
	do
		Result := false
		temp_soc := lobby_user.get_lobby_client.get_socket
		if (temp_soc.ready_for_reading = true)
		then
			if attached {G10_CRSN_DATA_MESSAGE} temp_soc.retrieved as data_msg
			then
				if attached {ARRAYED_LIST[G10_NET_INFO] } data_msg.get_data as con_arr_list
				then -- if ack
					if data_msg.get_id.is_equal (message_ACK) = true
					then
						print("Receiving Connected Players List... %N")
						lobby_user.get_crsn_lobby_logic.set_new_players_list (con_arr_list)
						Result := true
					end
				end
			end
		end
	end

	update_lobby (lobby_user : G10_LOBBY_USER message : STRING)
	require
		instance : lobby_user /= void
	do

		interaction_with_lobby_for_get_games(lobby_user)
		if receive_games_from_lobby(lobby_user) = false
		then
			print ( "Error receiving GAME LIST. %N")
			print ("Stop executing... %N")
		end

		interaction_with_lobby_for_get_users(lobby_user)
		if receive_users_from_lobby(lobby_user) = false
		then
			print ( "Error receiving PLAYER LIST %N")
			print ("Stop executing... %N")
		end

		interaction_with_lobby_for_chat(lobby_user, message)
		if receive_chat_from_lobby (lobby_user) = false
		then
			print ("Eroor receiving CHAT LIST %N")
			print ("Stop executing %N")
		end
	end

	receive_host_info_from_lobby (lobby_user : G10_LOBBY_USER) : G10_NET_INFO
	require
		instance : lobby_user /= void
	local
	temp_soc : NETWORK_STREAM_SOCKET
	do
		temp_soc := lobby_user.get_lobby_client.get_socket

		if (temp_soc.ready_for_reading = true)
		then

		  if attached {G10_CRSN_DATA_MESSAGE} temp_soc.retrieved as data_msg
			then --if ack
			 	if attached data_msg.get_id.is_equal (message_ACK) = true
			 	then
					if attached {G10_NET_INFO } data_msg.get_data as info_host
					then
						print("Receiving Host info... %N")
						print ("Host id : " + info_host.get_id + "%N")
						Result := info_host
					end
				end
			end
		end
	end

	receive_chat_from_lobby (lobby_user : G10_LOBBY_USER) : BOOLEAN
	local
	temp_soc : NETWORK_STREAM_SOCKET
	do
		temp_soc := lobby_user.get_lobby_client.get_socket
		Result := false
		if (temp_soc.ready_for_reading = true)
		then
		  if attached {G10_CRSN_DATA_MESSAGE} temp_soc.retrieved as data_msg
			then --if ack
			 	if attached data_msg.get_id.is_equal (message_ACK) = true
			 	then
					if attached {ARRAYED_LIST[STRING] } data_msg.get_data as chat_list
					then
						print("Receiving Chat List info... %N")
						lobby_user.get_crsn_lobby_logic.set_new_chat_list (chat_list)
						Result := true
					end
				end
			end
		end

	 end
-- functions that are only accessible from lobby_server.
-- they handle the request from lobby_users
feature {G10_LOBBY_SERVER}

-- MESSAGE AND SOCK dont need check

	handle_get_games_msg (lobby_server : G10_LOBBY_SERVER msg : G10_CRSN_MESSAGE; sock : NETWORK_STREAM_SOCKET)
	require
		instance : lobby_server /= void
	do
		--print (message_GET_GAMES + " received %N")
		if msg.get_id.is_equal (message_GET_GAMES)
		then
			lobby_server.get_server.send_msg (create {G10_CRSN_DATA_MESSAGE}.make_data_msg
				(message_ACK,
					lobby_server.get_lobby_logic.get_info, msg.get_sender,
						 lobby_server.get_lobby_logic.get_all_games), sock)
		end
	end
	handle_get_users_msg (lobby_server : G10_LOBBY_SERVER msg : G10_CRSN_MESSAGE; sock : NETWORK_STREAM_SOCKET)
	require
		instance : lobby_server /= void
	do
		--print (message_GET_USERS + " received %N")
		if msg.get_id.is_equal (message_GET_USERS)
		then
			lobby_server.get_server.send_msg (create {G10_CRSN_DATA_MESSAGE}.make_data_msg
				(message_ACK,
					lobby_server.get_lobby_logic.get_info, msg.get_sender,
						lobby_server.get_lobby_logic.get_all_connected_players), sock)
		end
	end

	handle_create_msg (lobby_server : G10_LOBBY_SERVER msg : G10_CRSN_SPECIAL_DATA_MESSAGE; sock : NETWORK_STREAM_SOCKET)
	require
		instance : lobby_server /= void
	do
		--print (message_CREATE + " received %N")
		if attached{STRING} msg.get_data as title_str
		then
			lobby_server.get_lobby_logic.add_game_to_list
				(msg.get_sender, title_str, msg.get_first_integer)

			lobby_server.get_server.send_msg
			(create {G10_CRSN_MESSAGE}.make_msg (message_ACK,lobby_server.get_lobby_logic.get_info, msg.get_sender), sock)
		end

	end
	handle_join_msg (lobby_server : G10_LOBBY_SERVER msg : G10_CRSN_SPECIAL_DATA_MESSAGE; sock : NETWORK_STREAM_SOCKET)
	require
		instance : lobby_server /= void
	do
		--print (message_JOIN + " received %N")
		lobby_server.get_lobby_logic.get_game_by_number (msg.get_first_integer).add_a_joined_player (msg.get_sender)
		lobby_server.get_server.send_msg (create {G10_CRSN_DATA_MESSAGE}.make_data_msg
			(message_ACK,lobby_server.get_lobby_logic.get_info, msg.get_sender,
				lobby_server.get_lobby_logic.get_game_by_number (msg.get_first_integer).get_host_player), sock)
	end

	handle_chat (lobby_server : G10_LOBBY_SERVER msg: G10_CRSN_DATA_MESSAGE	sock : NETWORK_STREAM_SOCKET)
	do


		if attached {STRING} msg.get_data as str_msg
		then
			lobby_server.get_lobby_logic.add_text_msg_to_log (str_msg)

		else
		end

		lobby_server.get_server.send_msg (create {G10_CRSN_DATA_MESSAGE}.make_data_msg
			(message_ACK, lobby_server.get_lobby_logic.get_info, msg.get_sender,
			lobby_server.get_lobby_logic.get_global_chat_log), sock)
	end
-- the below feature contains methods that send request to host for game
-- only joined players have access

feature {G10_JOINED_PLAYER}

	interaction_with_host_for_init (joined_player : G10_JOINED_PLAYER)
	require
		instance : joined_player /= void
	do
		print (message_INIT + " sent %N")
		joined_player.get_host_client.send_message_to_server
			(create {G10_CRSN_MESSAGE}.make_msg
				(message_INIT,joined_player.get_player_info, joined_player.get_host_info))
	end

	interaction_with_host_for_tile(joined_player : G10_JOINED_PLAYER tile : G10_LOGIC_TILE width,height : INTEGER) -- needs filling?
	require
		instance : joined_player /= void
		tile_is  : tile /= void
		row_is   : width > 0 AND width <= 72
		col_is 	 : height > 0 AND height <= 72
	do
		joined_player.get_host_client.send_message_to_server
			(create {G10_CRSN_SPECIAL_DATA_MESSAGE}.make_special_data_msg
				(message_TILE,joined_player.get_player_info, joined_player.get_host_info, tile, width, height))
	end

	interaction_with_host_for_end_turn(joined_player : G10_JOINED_PLAYER)
	require
		instance : joined_player /= void
	do
		joined_player.get_host_client.send_message_to_server
			(create {G10_CRSN_MESSAGE}.make_msg
				(message_ENDTURN,joined_player.get_player_info, joined_player.get_host_info))
	end



-- the methods below get messages - responses from server

	receive_init_from_host (joined_player : G10_JOINED_PLAYER) : BOOLEAN
	require
		instance : joined_player /= void
	local
	temp_soc : NETWORK_STREAM_SOCKET
	do
		Result := false
		temp_soc := joined_player.get_host_client.get_socket
		if (temp_soc.ready_for_reading = true)
		then
			if attached {G10_CRSN_DATA_MESSAGE} temp_soc.retrieved as data_msg
		 	then
		 		print ("Data msg %N")
				if data_msg.get_id.is_equal (message_ACK) = true
				then
					print ("ACK ok %N")
					if attached {G10_LOGIC_GAME_MAIN } data_msg.get_data as game_init
					then
						print("Receiving Game initilization... %N")
--						joined_player.set_logic_game_main (game_init)
						Result := true
					end
				end
			end
		end
	end


	receive_tile_from_host (joined_player : G10_JOINED_PLAYER) : BOOLEAN
	require
		instance : joined_player /= void
	local
		temp_soc : NETWORK_STREAM_SOCKET
		do
			Result := false
			temp_soc := joined_player.get_host_client.get_socket
			if (temp_soc.ready_for_reading = true)
			then
			  if attached {G10_CRSN_DATA_MESSAGE} temp_soc.retrieved as data_msg
				then --if ack na valw
					if data_msg.get_id.is_equal (message_ACK) = true
					then
						if attached {G10_LOGIC_TILE } data_msg.get_data as new_tile
						then
							print("Receiving TILE... %N")
							Result := true
--							joined_player.get_crsn_game_logic.insert_tile_to_terrain (a_tile, row, col)-- ta row k col einai ta first  k second integer
						end
					end
				end
			end
		end


	receive_next_player_from_host (joined_player : G10_JOINED_PLAYER) : BOOLEAN
	require
		instance : joined_player /= void
		local
			temp_soc : NETWORK_STREAM_SOCKET
			do
				Result := false
				temp_soc := joined_player.get_host_client.get_socket
				if (temp_soc.ready_for_reading = true)
				then
				  if attached {G10_CRSN_DATA_MESSAGE} temp_soc.retrieved as data_msg
					then --if ack na valw
						if data_msg.get_id.is_equal (message_ACK)
						then
							if attached {G10_LOGIC_PLAYER } data_msg.get_data as next_player      -----ti vazw edw
							then
								print("Receiving NEXT PLAYER... %N")
--								joined_player.get_crsn_game_logic.set_current_player(next_player)
								Result := true
							end
						end
					end
				end
			end



-- methods that handle the messages that server receives from players
-- access: only host

feature {G10_HOST}

	-- MSG AND SOC DONT NEED CHECK

	handle_end_turn (host : G10_HOST  msg : G10_CRSN_MESSAGE soc : NETWORK_STREAM_SOCKET)
	require
		instance : host /= void
	do
		--to msg exei ton current
		print (message_ENDTURN + " received %N")
		host.get_crsn_game_logic.end_turn
		host.get_host_server.send_msg (create {G10_CRSN_DATA_MESSAGE}.make_data_msg (message_ACK,
		host.get_player_info, msg.get_sender,host.get_crsn_game_logic.get_current_player), soc)

	end


	handle_init (host : G10_HOST msg : G10_CRSN_MESSAGE soc : NETWORK_STREAM_SOCKET)
	require
		instance : host /= void
	do
			print (message_INIT + " received  %N")
			host.get_host_server.send_msg (create {G10_CRSN_DATA_MESSAGE}.make_data_msg
			(message_ACK, host.get_player_info, msg.get_sender, host.get_crsn_game_logic),soc)
	end


	handle_tile (host : G10_HOST msg : G10_CRSN_DATA_MESSAGE soc : NETWORK_STREAM_SOCKET)
	require
		instance : host /= void
	local
  		a_test_tile: G10_LOGIC_TILE  -- Edw 8eloume 3 orismata ena G10_LOGIC_TILE ena row kai ena col !
 	do
  		create a_test_tile.make_available
		print (message_TILE + " received %N")
		host.get_host_server.send_msg (create {G10_CRSN_DATA_MESSAGE}.make_data_msg  -- vale special
		 (message_ACK, host.get_player_info, msg.get_sender, a_test_tile), soc)
	end

end
