note
	description: "Includes the functionality of a joined player"
	author: "John Voyatzis, Angel Kyriako"
	date: "14/12/2012"
	revision: "3.0"

class
	G10_LOBBY_USER
inherit
	G10_CRSN_MESSAGE_PROTOCOL

create
	make

feature {NONE} --attributes
	-- interaction with other components
	main_ui				  : MAIN_WINDOW
	crsn_lobby_entrance_ui: G10_LOBBY_ENTRANCE_SCREEN
	crsn_lobby_ui		  : G10_LOBBY_MAIN
	crsn_lobby_logic	  : G10_LOBBY_LOGIC
	crsn_game_ui	  	  : G10_GUI_GAME_MAIN
	crsn_game_logic		  : G10_GAME
	-- my attributes
	player_info		      : G10_NET_INFO
	lobby_client		  : G10_CLIENT
	timer				  : TIME

feature{G10_CARCASSONNE_LAUNCHER} --constructors

	make(main_window : MAIN_WINDOW lobby_id, lobby_int_ip,lobby_ext_ip, lobby_port: STRING)-- normal constructor
	require
		main_window_not_null: main_window /= void
		do
			print ("Joined Player starts here %N")

			create timer.make_now --start from current time
			create crsn_lobby_logic.make(lobby_id,lobby_int_ip,lobby_ext_ip, lobby_port) -- initialize the lobby logic

			main_ui := main_window -- keep reference of dose main window
			launch_crsn_entrance_screen

			print ("Joined Player END %N")
		end

	make_user(a_player : G10_LOBBY_USER) -- constructor used by the inherited classes host and joined
	require
		arg_not_null: a_player /= void
	do
		main_ui := a_player.get_main_ui
		crsn_lobby_entrance_ui := void
		crsn_lobby_ui := a_player.get_crsn_lobby_ui
		crsn_lobby_logic := a_player.get_crsn_lobby_logic
		crsn_game_ui := void
		crsn_game_logic	 := void
		player_info	:= a_player.get_player_info
		lobby_client := a_player.get_lobby_client
		timer := a_player.get_timer
	end


feature{NONE} -- connect with lobby server

	interaction_with_lobby_for_create(game_title : STRING max_num : INTEGER)
	do
			lobby_client.send_message_to_server (create {G10_CRSN_SPECIAL_DATA_MESSAGE }.make_special_data_msg
							("Create", player_info, crsn_lobby_logic.get_info, game_title,max_num, -1))

			print("create message sent to lobby server from lobby user.. %N")
			interaction_with_lobby_for_disconnect
	end

	receive_host_info_from_lobby : G10_NET_INFO
	local
		temp_soc : NETWORK_STREAM_SOCKET
	do
		if attached {G10_CRSN_DATA_MESSAGE} temp_soc.retrieved as data_msg3
		then
			if attached {G10_NET_INFO } data_msg3.get_data as info_host
			then
				print("Receiving Host info... %N")
				print ("Host id : " + info_host.get_id + "%N")
				Result := info_host
				--client.close_socket
				--client.connect (info_host.get_port, info_host.get_ip)
				--the above probably will be not here
				-- i added them in order to have an idea abou the continue of code from here
			end
		end
	end

	interaction_with_lobby_for_join : G10_NET_INFO
	do
		lobby_client.send_message_to_server (create
		{G10_CRSN_SPECIAL_DATA_MESSAGE}.make_special_data_msg
		("Join", player_info, crsn_lobby_logic.get_info, void,1, -1))

		print("join message sent to lobby server from lobby user.. %N")

		Result := receive_host_info_from_lobby

	ensure
		host_not_void : Result /= void
	end

	interaction_with_lobby_for_disconnect
	do
		lobby_client.send_message_to_server (create {G10_CRSN_MESSAGE}.make_msg   --server closes client's socket
					 ("Disconnect", player_info, crsn_lobby_logic.get_info))
	end

	interaction_with_lobby_for_connect
	do
		lobby_client.send_message_to_server (create {G10_CRSN_MESSAGE}.make_msg   --server closes client's socket
						 (message_CONNECT, player_info, crsn_lobby_logic.get_info))
	end

	interaction_with_lobby_for_ack
	do
		lobby_client.send_message_to_server (create {G10_CRSN_MESSAGE}.make_msg   --server closes client's socket
						 (message_OK, player_info, crsn_lobby_logic.get_info))
	end

	interaction_with_lobby_for_get
		do
			lobby_client.send_message_to_server (create {G10_CRSN_MESSAGE}.make_msg
								("Get", player_info, crsn_lobby_logic.get_info))
				print("Waiting for message from server.. %N")

--				if receive_game_list_from_lobby = false
--				then
--					print ( "Error receiving GAME LIST. %N")
--					print ("Stop executing... %N")
--				end
--				if receive_connected_players_list_from_lobby = false
--				then
--					print ( "Error receiving PLAYER LIST %N")
--					print ("Stop executing... %N")
--				end
		end


feature {NONE} --receiving from lobby server


	receive_game_list_from_lobby : BOOLEAN
	local
		temp_soc : NETWORK_STREAM_SOCKET
	do
		Result := false
		temp_soc := lobby_client.get_socket
		if attached {G10_CRSN_DATA_MESSAGE} temp_soc.retrieved as data_msg
		then
			if attached {ARRAYED_LIST[G10_HOSTED_GAME] } data_msg.get_data as game_arr_list
			then
				print ("Receiving Games List ... %N")
				crsn_lobby_logic.set_new_games_list (game_arr_list)
				Result := true
			end
		end
	end

	receive_connected_players_list_from_lobby  : BOOLEAN
	local
		temp_soc : NETWORK_STREAM_SOCKET
	do
		Result := false
		temp_soc := lobby_client.get_socket
		if (temp_soc.ready_for_reading = true)
		then
			if attached {G10_CRSN_DATA_MESSAGE} temp_soc.retrieved as data_msg
			then
				if attached {ARRAYED_LIST[G10_NET_INFO] } data_msg.get_data as con_arr_list
				then
					print("Receiving Connected Players List... %N")
					crsn_lobby_logic.set_new_players_list (con_arr_list)
					Result := true
				end
			end
		end
	end

	receive_ack_from_lobby : BOOLEAN
	local
		temp_soc : NETWORK_STREAM_SOCKET
	do
		Result := false
		if attached {G10_CRSN_MESSAGE} temp_soc.retrieved as norm_msg
		then
			if norm_msg.get_id.is_equal (message_OK)
			then
				Result := true
			end
		end
	end

feature{G10_LOBBY_MAIN}

	keep_lobby_updated
	do
			if receive_game_list_from_lobby = false
			then
				print ( "Error receiving GAME LIST. %N")
				print ("Stop executing... %N")
			end
			interaction_with_lobby_for_get
			if receive_connected_players_list_from_lobby = false
			then
				print ( "Error receiving PLAYER LIST %N")
				print ("Stop executing... %N")
			end
	end

feature{NONE} -- private methods

	launch_crsn_entrance_screen -- launch the carcassonne entrance lobby window
	do
		-- initialize my info
		create player_info.make_player ("Kyr Lefteris")
		-- create the interance window need to let the user inform the programm about the above
		create crsn_lobby_entrance_ui.make (Current)
		crsn_lobby_entrance_ui.show
		main_ui.add_reference_to_game (crsn_lobby_entrance_ui)
	end


feature{G10_LOBBY_ENTRANCE_SCREEN} -- used in lobby_entrance

	launch_crsn_lobby(id, ip, port: STRING) -- launch the carcassonne main lobby window
	local
		fault_dialog: EV_CONFIRMATION_DIALOG
		i : INTEGER
	do
		if (port.is_empty or ip.is_empty or id.is_empty or (not port.is_integer) ) then
		-- lauch again the entrance every time user fucks up and check if also port is not integer

			launch_crsn_entrance_screen
			create fault_dialog.make_with_text ("Your ip and port do not seem legit !")
			fault_dialog.show_modal_to_window (crsn_lobby_entrance_ui)

		else -- port and id and ip are cool, proceed to the main lobby

			-- connection to lobby
			create lobby_client.connect(get_crsn_lobby_logic.get_port.to_integer, get_crsn_lobby_logic.get_internal_ip)
			interaction_with_lobby_for_get
			keep_lobby_updated

			-- launch the lobby main window
			create crsn_lobby_ui.make (Current)
			crsn_lobby_ui.show
			main_ui.add_reference_to_game (crsn_lobby_ui)
		end
	end

feature{G10_LOBBY_MAIN} -- used in lobby main

	launch_host(game_title, player_num: STRING) -- creates a host player
	require
		args_not_empty: (not game_title.is_empty) and (not player_num.is_empty)
		player_num_is_valid: player_num.is_integer and player_num.to_integer >= 2 and player_num.to_integer <= 6
	local
		host_player : G10_HOST
	do
--		interaction_with_lobby_for_create(game_title, player_num.to_integer)
		create host_player.make_host(Current)
	end

	launch_joined_player(host_ip, host_port: STRING) -- creates a joined player
	require
		args_not_empty: (not host_ip.is_empty) and (not host_port.is_empty)
		port_is_valid: host_port.is_integer and host_port.to_integer >= 10000 and host_port.to_integer <= 60000
	local
		joined_player : G10_JOINED_PLAYER
	do
		create joined_player.make_joined_player(Current, interaction_with_lobby_for_join)
	end

	launch_dummy -- creates a carcassonne main game window //practice i think
	do
		create crsn_game_logic.make
		crsn_game_logic.add_player_to_list_name (current.get_player_info.get_id)

		create crsn_game_ui.make_2(Current ,crsn_game_logic.get_first_player_name ,6)
		crsn_game_ui.show

		crsn_lobby_ui.add_reference_to_game_window (crsn_game_ui)
	end

feature{G10_GUI_GAME_MAIN} -- event handler
	fire_event (an_event : STRING) -- event handler to be called for every game event
	do
		if (an_event.is_equal ("rotate")) then
			print("Dude I just rotated while practicing and it felt great !!!!%N")
			-- call on void target! solve soon plz.														-- TODO:SENT EMAIL
			-- crsn_game_logic.rotate_current_players_tile_clockwise
			crsn_game_ui.rotate_current_player_tile
		end
	end

feature{ANY} -- accessors

	get_main_ui: MAIN_WINDOW
	require
		main_ui_not_null: main_ui /= void
	do
		Result := main_ui
	end

	get_crsn_lobby_entrance_ui: G10_LOBBY_ENTRANCE_SCREEN
	require
		crsn_lobby_entrance_not_null: crsn_lobby_entrance_ui /= void
	do
		Result := crsn_lobby_entrance_ui
	end

	get_crsn_lobby_ui: G10_LOBBY_MAIN
	require
		crsn_lobby_main_not_null: crsn_lobby_ui /= void
	do
		Result := crsn_lobby_ui
	end

	get_crsn_game_ui: G10_GUI_GAME_MAIN
	require
		crsn_game_main_not_null: crsn_game_ui /= void
	do
		Result := crsn_game_ui
	end

	get_crsn_lobby_logic: G10_LOBBY_LOGIC
	do
		Result := crsn_lobby_logic
	end

	get_crsn_game_logic: G10_GAME
	do
		Result := crsn_game_logic
	end

	get_player_info: G10_NET_INFO
	require
		player_info_not_null: player_info /= void
	do
		Result := player_info
	end

	get_lobby_client: G10_CLIENT
	do
		Result := lobby_client
	end

	get_timer: TIME
	do
		Result := timer
	end

end
