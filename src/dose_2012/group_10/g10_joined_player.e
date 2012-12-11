note
	description: "Includes the functionality of a joined player"
	author: "John Voyatzis, Angel Kyriako"
	date: "7/12/2012"
	revision: "2.0"

class
	G10_JOINED_PLAYER
create
	make
feature {NONE} --attributes
	main_ui				  : MAIN_WINDOW
	crsn_lobby_entrance_ui: G10_LOBBY_ENTRANCE_SCREEN
	crsn_lobby_ui		  : G10_LOBBY_MAIN
	crsn_game_ui	  	  : G10_GUI_GAME_MAIN
	crsn_lobby_logic	  : G10_LOBBY_LOGIC
	crsn_game_logic		  : G10_GAME

	player_info		      : G10_NET_PLAYER_INFO -- mpainei logic
	host_info			  : G10_NET_PLAYER_INFO -- mpainei logic
	root_server_info	  : G10_NET_PLAYER_INFO
	client 				  : G10_CLIENT
	obj		: ANY
	i,j :	INTEGER

feature{G10_CARCASSONNE_LAUNCHER} --constructor

	make(main_window : MAIN_WINDOW)
	require
		main_window_not_null: main_window /= void
		do
			print ("Joined Player starts here %N")
			-- keep reference of dose main window
			main_ui := main_window
			-- create the lobby logic
			create crsn_lobby_logic.make
			--launch the entrance screen
		--	launch_crsn_entrance_screen

			create player_info.make ("1234", "192.168.1.1", "Player 1")
			create root_server_info.make ("2614", "192.168.1.1", "Lobby")

		-- for angel
		print ("Random : " + crsn_lobby_logic.random_port_generator.out + "%N")
		print ("Random : " + crsn_lobby_logic.random_port_generator.out + "%N")
		print ("Random : " + crsn_lobby_logic.random_port_generator.out + "%N")


-----------------------------------------------------
-- MHN KSEXNATE TA COMMENT PAPARES AN DEN YPARXOUN --
-- xaxa gelaaaaawwww							   --
-----------------------------------------------------
		    -- create client.connect(6666, "192.168.1.1") -- connection to lobby
			-- create client.connect(6666, "192.168.1.65") -- connection to lobby
			-- interaction_with_lobby_for_get
			-- interaction_with_lobby_for_create
			-- host_info := interaction_with_lobby_for_join

			-- client.close_socket 	-- close connection
			print ("Joined Player END %N")
		end


feature{ANY} -- mutators

interaction_with_lobby_for_create
	local
		temp_soc : NETWORK_STREAM_SOCKET
		msg : G10_CRSN_MESSAGE
		do
			temp_soc := client.get_socket
			create msg.make_msg("Create", player_info, root_server_info)
			client.send_message_to_server (msg)

			--wait for game list
			if attached {G10_CRSN_DATA_MESSAGE} temp_soc.retrieved as data_msg
			then
				print ("Message type : DATA_MESSAGE! %N" + "ID : " + data_msg.get_id + "%N")
				if attached {ARRAYED_LIST[G10_HOSTED_GAME] } data_msg.get_data as game_arr_list
				then
					print ("Receiving Games List ... %N")
					crsn_lobby_logic.set_new_games_list (game_arr_list)
				end
				-- wait for players list
				if attached {G10_CRSN_DATA_MESSAGE} temp_soc.retrieved as data_msg2
				then
					if attached {ARRAYED_LIST[G10_NET_PLAYER_INFO] } data_msg2.get_data as con_arr_list
					then
						print("Receiving Connected Players List... %N")
						print ("Connected count : " + con_arr_list.count.out + "%N")
						io.put_new_line
						crsn_lobby_logic.set_new_players_list (con_arr_list)
					end
				end

			--  test
			--	print ("Games " + crsn_lobby_logic.get_active_games_no.out + "  Connected  " +
			--	crsn_lobby_logic.get_connected_player_no.out +"%N" )
				-- FOR AGGELOS
				-- update lobby gui
				-- edw 8a prepei na ftiaxoume enan host, h 8a feugei apo ton player h mesa ston player.
			end
			temp_soc.close
		end

	interaction_with_lobby_for_join : G10_NET_PLAYER_INFO
	local
		temp_soc : NETWORK_STREAM_SOCKET
		msg		 : G10_CRSN_SPECIAL_DATA_MESSAGE
		do
			temp_soc :=  client.get_socket
			create msg.make_special_data_msg ("Join", player_info,root_server_info,void,1, -1)
			client.send_message_to_server (msg)

			--wait for game list
			if attached {G10_CRSN_DATA_MESSAGE} temp_soc.retrieved as data_msg
			then
				print ("Message type : DATA_MESSAGE! %N" + "ID : " + data_msg.get_id + "%N")
				if attached {ARRAYED_LIST[G10_HOSTED_GAME] } data_msg.get_data as game_arr_list
				then
					print ("Receiving Games List ... %N")
					crsn_lobby_logic.set_new_games_list (game_arr_list)
				end

				-- wait for players list
				if attached {G10_CRSN_DATA_MESSAGE} temp_soc.retrieved as data_msg2
				then
					if attached {ARRAYED_LIST[G10_NET_PLAYER_INFO] } data_msg2.get_data as con_arr_list
					then
						print("Receiving Connected Players List... %N")
						print ("Connected count : " + con_arr_list.count.out + "%N")
						io.put_new_line
						crsn_lobby_logic.set_new_players_list (con_arr_list)
					end
				end

				if attached {G10_CRSN_DATA_MESSAGE} temp_soc.retrieved as data_msg3
				then
					if attached {G10_NET_PLAYER_INFO } data_msg3.get_data as info_host
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
			temp_soc.close
		end


	interaction_with_lobby_for_get
	local
		temp_soc : NETWORK_STREAM_SOCKET
		msg 	 : G10_CRSN_MESSAGE
		do
			temp_soc := client.get_socket
			create msg.make_msg("Get", player_info, root_server_info)
			client.send_message_to_server (msg)

			--wait for game list
			if attached {G10_CRSN_DATA_MESSAGE} temp_soc.retrieved as data_msg
			then
				print ("Message type : DATA_MESSAGE! %N" + "ID : " + data_msg.get_id + "%N")
				if attached {ARRAYED_LIST[G10_HOSTED_GAME] } data_msg.get_data as game_arr_list
				then
					print ("Receiving Games List ... %N")
					crsn_lobby_logic.set_new_games_list (game_arr_list)
				end
				-- wait for players list
				if attached {G10_CRSN_DATA_MESSAGE} temp_soc.retrieved as data_msg2
				then
					if attached {ARRAYED_LIST[G10_NET_PLAYER_INFO] } data_msg2.get_data as con_arr_list
					then
						print("Receiving Connected Players List... %N")
						crsn_lobby_logic.set_new_players_list (con_arr_list)
					end
				end

			--  test
			--	print ("Games " + crsn_lobby_logic.get_active_games_no.out + "  Connected  " +
			--	crsn_lobby_logic.get_connected_player_no.out +"%N" )
				-- FOR AGGELOS
				-- update lobby gui
				-- edw 8a prepei na ftiaxoume enan host, h 8a feugei apo ton player h mesa ston player.
			end
			temp_soc.close
		end


	launch_crsn_entrance_screen -- creates the carcassonne entrance lobby window
	do
		-- create a reference for the player's info(usrname, ip, port)
		create player_info.dflt_make
		-- create the interance window need to let the user inform the programm about the above
		create crsn_lobby_entrance_ui.make (Current)
		crsn_lobby_entrance_ui.show
		main_ui.add_reference_to_game (crsn_lobby_entrance_ui)
	end

	launch_crsn_lobby(id, ip, port: STRING) -- creates the carcassonne main lobby window
	local
		fault_dialog: EV_CONFIRMATION_DIALOG
	do

		-- HERE WE MUST ADD A METHOD THAT CONTAINS THE ABOVE CODE WITH THE MESSAGING BETWEEN THE ROOT SERVER AND THE PLAYER !!!!

		--  create player net, info and root server attributes (they need to be summarized somehow!!! )


		-- HERE WE MUST CHECK IF THE USERNAME IS INCLUDED IN THE LOBBY LOGIC AND IF IP AND PORT IS VALID AND IF NOT WE LAUNCH AGAIN THE ENTRANCE WINDOW!!!!
		-- dummy example
																-- lauch again every time user fucks up
--		if (port.is_empty or ip.is_empty or id.is_empty ) then -- check if also port is not integer
--			launch_crsn_entrance
--			create fault_dialog.make_with_text ("Dude put some legit info !")
--			fault_dialog.show_modal_to_window (crsn_lobby_entrance)
--		else 													-- if port and id are cool proceed to the main lobby			
--			create root_server_info.make(2614, "Root Server", "192.168.1.1")

			-- launch the lobby main window
			create crsn_lobby_ui.make (Current)
			crsn_lobby_ui.show
			main_ui.add_reference_to_game (crsn_lobby_ui)
--		end

	end

	launch_crsn_game -- creates the carcassonne main game window
	do
		create crsn_game_ui.make(Current)
		crsn_game_ui.show
		crsn_lobby_ui.add_reference_to_game_window (crsn_game_ui)
	end


feature --for connection with host

	interaction_with_host_for_join ( target : G10_NET_PLAYER_INFO) -- kai xwris orisma ginetai an to valoume san attribute
	require
		target_not_void : target /= void
	local
		sock : NETWORK_STREAM_SOCKET
	do
		client.connect (target.get_port.to_integer, target.get_ip)
		sock := client.get_socket
		client.send_message_to_server (create {G10_CRSN_MESSAGE}.make_msg("Join Game", player_info, host_info ))
		print ("Message for join sent to host with IP : " + host_info.get_ip + "and port: " + host_info.get_port)

		if attached {G10_CRSN_MESSAGE} sock.retrieved as norm_msg
		then
			print ("Message received... %NMessage type : CRSN_MESSAGE%NMessage ID: " + norm_msg.get_id)

			-- 8a milhsoume gia edw

		end
		client.close_socket
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

	get_player_info: G10_NET_PLAYER_INFO
	require
		player_info_not_null: player_info /= void
	do
		Result := player_info
	end

	get_host_info: G10_NET_PLAYER_INFO
	do
		Result := host_info
	end

	get_root_server_info: G10_NET_PLAYER_INFO
	do
		Result := root_server_info
	end


end
