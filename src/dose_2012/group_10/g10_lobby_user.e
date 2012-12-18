note
	description: "Includes the functionality of a joined player"
	author: "John Voyatzis, Angel Kyriako"
	date: "14/12/2012"
	revision: "3.0"

class
	G10_LOBBY_USER
inherit
	G10_NET_COM_FUNCS

create
	make

feature {NONE} --attributes
	-- interaction with other components
	main_ui				  : MAIN_WINDOW
	crsn_lobby_entrance_ui: G10_LOBBY_ENTRANCE_SCREEN
	crsn_lobby_ui		  : G10_LOBBY_MAIN
	crsn_lobby_logic	  : G10_LOBBY_LOGIC
	crsn_game_ui	  	  : G10_GUI_GAME_MAIN
	crsn_game_logic		  : G10_LOGIC_GAME_MAIN
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

feature

	interaction_for_disconnect
	do
		lobby_client.send_message_to_server (create {G10_CRSN_MESSAGE}.make_msg   --server closes client's socket
							 (message_DISCONNECT, player_info, crsn_lobby_logic.get_info))
	end
	interaction_for_connect
	do
		lobby_client.send_message_to_server (create {G10_CRSN_MESSAGE}.make_msg   --server closes client's socket
							 (message_CONNECT, player_info, crsn_lobby_logic.get_info))
	end

	receive_ack : BOOLEAN
	local
		temp_soc : NETWORK_STREAM_SOCKET
	do
		temp_soc := lobby_client.get_socket
		Result := false
		if attached {G10_CRSN_DATA_MESSAGE} temp_soc.retrieved as data_msg
		then
			if data_msg.get_data.is_equal(message_CONNECT) = true
			then
				print ("ACK received.Connected!%N")
			elseif data_msg.get_data.is_equal (message_DISCONNECT) = true
			then
				print ("Ack Received.Disconnected! %N")
				lobby_client.get_socket.close_socket
			end
			Result := true
		else
			print ("Ack received. Successful request! %N")
			Result := true
		end
	end



feature{NONE} -- connect with lobby server


feature{NONE} -- private methods

	launch_crsn_entrance_screen -- launch the carcassonne entrance lobby window
	do
		-- initialize my info
		create player_info.make_player
		-- create the interance window need to let the user inform the programm about the above
		create crsn_lobby_entrance_ui.make (Current)
		crsn_lobby_entrance_ui.show
		main_ui.add_reference_to_game (crsn_lobby_entrance_ui)
	end


feature{G10_LOBBY_ENTRANCE_SCREEN} -- used in lobby_entrance

	launch_as_single_player(player_username: STRING) -- creates a carcassonne main game window //practice i think
	do
		-- initializtation of logic with player name , max players and default chips and score.
		create crsn_game_logic.make_player_name_max_players_num(player_username, 6)
		crsn_game_logic.add_player_to_list_name ("lefas", 2)
		crsn_game_logic.add_player_to_list_name ("malakas", 3)
		-- initialization of gui with logics first player name , max player num and default score and chips number.
		create crsn_game_ui.make_2(Current ,crsn_game_logic.get_first_player_name ,6)
		crsn_game_ui.show

		crsn_game_ui.add_player ("lefas", 6)
		crsn_game_ui.add_player ("antonistis", 6)
		crsn_game_ui.update_current_player_tile (crsn_game_logic.get_current_player_tile_id)
	end

	launch_crsn_lobby(id, ip, port: STRING) -- launch the carcassonne main lobby window
	do
		-- connection to lobby
		create lobby_client.connect(get_crsn_lobby_logic.get_port.to_integer, ip)
		Current.interaction_for_connect
		if receive_ack = false
		then
			print ("Error in connection %N")
		end

-- TEST
--			Current.interaction_for_disconnect
--			if receive_ack = false
--			then
--						print ("Error in connection %N")
--			end
		update_lobby (Current, void)

		-- launch the lobby main window
		create crsn_lobby_ui.make (Current)
		crsn_lobby_ui.show
		main_ui.add_reference_to_game (crsn_lobby_ui)
	end

feature{G10_LOBBY_MAIN} -- used in lobby main

	launch_host(game_title, player_num: STRING) -- creates a host player
	require
		args_not_empty: (not game_title.is_empty) and (not player_num.is_empty)
		player_num_is_valid: player_num.is_integer and player_num.to_integer >= 2 and player_num.to_integer <= 6
	local
		host_player : G10_HOST
	do
		if interaction_with_lobby_for_create(Current,game_title, player_num.to_integer) = false
		then
		 	print ("Error creating game ... %N")
		end
		create host_player.make_host(Current)
	end

	launch_joined_player(game_id: INTEGER) -- creates a joined player
	require
		arg_valid: game_id > 0
	local
		joined_player : G10_JOINED_PLAYER
	do
		create joined_player.make_joined_player(Current, interaction_with_lobby_for_join(Current,game_id) )
	end

feature{G10_GUI_GAME_MAIN} -- event handler
	fire_event (an_event : STRING  tile_row , tile_col : INTEGER) -- event handler to be called for every game event
	do
		if (an_event.is_equal ("rotate")) then
			-- rotation in logic
			crsn_game_logic.rotate_current_players_tile
			-- rotation in gui regarding the logic
			crsn_game_ui.rotate_current_player_tile(crsn_game_logic.get_current_player_tile_state)

			--test an douleyei perase
			--crsn_game_ui.draw_terrain_from_logic(crsn_game_logic)
		elseif(an_event.is_equal ("put_tile_to_terrain")) then
			-- an ginei match me to terrain tote mpainei allios den mpainei tpt.
			if(crsn_game_logic.tile_matches_terrain_item (crsn_game_logic.get_current_player_tile , tile_row, tile_col) = true )then
				io.put_string ("i insert egine lol match : ")
				io.put_new_line

				-- bazo to tile sto logic.
				crsn_game_logic.insert_tile_to_terrain (crsn_game_logic.get_current_player_tile, tile_row, tile_col)

				-- edo testaro na do ama exo patisei follower na iparxei apo to gui
				if(crsn_game_ui.has_drawed_tile_follower = true) then
					-- ean nai tote ton bazo kai sto logic sto antistoixo tile.
					--arg1 to tile pou tha mpei o follower , arg 2 to part pou tha mpei (1-9)
					crsn_game_logic.insert_follower_to_tile (crsn_game_logic.get_terrain_item (tile_row, tile_col), crsn_game_ui.get_drawed_tile_follower_id )

					--na kano decrement tous followers sto gui kai sto logic mazi
					crsn_game_logic.decrement_current_player_followers
					crsn_game_ui.decrement_followers(crsn_game_logic.get_current_player_id)

					--working good tests
--					crsn_game_ui.set_score (crsn_game_logic.get_current_player_id, 50)
--					crsn_game_ui.set_followers_num(crsn_game_logic.get_current_player_id, 150)
				end

				-- edo epitelous zografizo to tile pou mpike prin sto logic , tora sto gui.
				crsn_game_ui.draw_tile_to_terrain (crsn_game_logic.get_current_player_tile_id, crsn_game_logic.get_current_player_tile_state, tile_row, tile_col)

				--edo prepei na kaleso tin methodo gia na ftiakso ta scores.
				--crsn_game_ui.set_score (crsn_game_logic.get_current_player_id, crsn_game_logic.get_current_player.get_score)
				crsn_game_ui.update_scores (crsn_game_logic.update_game_state(tile_row , tile_col))
				-- INTERACTION FOR WITH HOST
				-- this routine removes a follower from a tile in the terrain.
				--crsn_game_ui.remove_followers_from_tile (tile_row,tile_col)

				-- edo ginetai i allagi ti current player tile , logic kai gui mazi.
				if(crsn_game_logic.is_tile_pull_empty = false) then
					crsn_game_logic.generate_current_player_tile
					crsn_game_ui.update_current_player_tile (crsn_game_logic.get_current_player_tile_id)
				else
					-- ean adeiase to pile tou logic tote den zografizo tpt kai prepei na teleiosei to paixnidi!
					crsn_game_ui.destroy_current_player_tile
				end
				-- dilosi oti o giros exei teleiosei!
				crsn_game_logic.end_turn

				--INTERACTION FOR END TURN
				if(crsn_game_logic.get_current_player_id /= 1) then
					bot_play
				end

--				if(crsn_game_logic.get_current_player_id /= 1) then
--					bot_play
--				end
				--crsn_game_ui.draw_terrain_from_logic(crsn_game_logic)

			else
				io.put_string ("arxidia insert ekane")
				io.put_new_line
			end

		end
	end

	bot_play -- carcasone ai
	local
		a_tile : G10_LOGIC_TILE
		i , j , tries: INTEGER
		putted : BOOLEAN
	do
		-- when bot player then the drawed tile cannot be displayed. itan tha teleiosei tin paikia prepei na to ksanaemfanisei
		crsn_game_ui.destroy_current_player_tile

		a_tile := crsn_game_logic.get_current_player_tile
	--	crsn_game_logic.insert_tile_to_terrain_random (a_tile)
--		crsn_game_ui.draw_terrain_from_logic(crsn_game_logic)

		io.put_string ("paizei to bot! id : ")
		io.put_integer (crsn_game_logic.get_current_player_id)
		io.put_new_line

		from tries := 1 until tries >= 3
		loop
			from i := 2 until i >= 39 or putted = true
			loop
				from j := 2 until j >=39 or putted = true
				loop
					if(crsn_game_logic.get_terrain_attr.tile_matches_terrain_item (a_tile, i, j) = true) then
						crsn_game_logic.get_terrain_attr.insert_tile_to_terrain (a_tile, i, j)
						crsn_game_ui.draw_tile_to_terrain (crsn_game_logic.get_tile_id (a_tile), crsn_game_logic.get_tile_state (a_tile), i, j)
						putted := true
						tries := 5
					end
					j := j + 1
				end
				i := i + 1
			end
			a_tile.rotate
			tries := tries + 1
		end


		-- edo exei teleiosei to turn to bot kai ksana einai i seira tou paixti.
		crsn_game_logic.end_turn
		if(crsn_game_logic.get_current_player_id = 1) then
			crsn_game_ui.update_current_player_tile (crsn_game_logic.get_current_player_tile_id)
		else
			bot_play
		end
	end

feature {ANY} --mutators

	set_logic_game_main(updated_logic: G10_LOGIC_GAME_MAIN)
	do
		crsn_game_logic := updated_logic
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

	get_crsn_game_logic: G10_LOGIC_GAME_MAIN
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
