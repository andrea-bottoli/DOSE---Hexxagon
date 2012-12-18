note
	description: "contains all functionality for the joined player"
	author: "Angel Kyriako"
	date: "13/12/2012"
	revision: "3.0"
class
	G10_JOINED_PLAYER
inherit
	G10_LOBBY_USER
	redefine
		fire_event, interaction_for_connect, receive_ack, interaction_for_disconnect
	end


create
	make_joined_player

feature{NONE} -- attributes
	host_info: G10_NET_INFO
	host_client : G10_CLIENT

feature{G10_GUI_GAME_MAIN} -- constructor

	make_joined_player (a_player : G10_LOBBY_USER a_hosts_info: G10_NET_INFO)
	do
		print ("Joined player start %N")
		-- call super class
		make_user(a_player)

		-- init host info		
		host_info := a_hosts_info
		print ("Host : %N"
		+ host_info.get_internal_ip + " "
		+ host_info.get_external_ip + " "
		+ host_info.get_port + " %N")
		-- send request to get the game logic from host
		make_connection_with_host

--		-- launch the game ui
--		create crsn_game_ui.make(Current)
--		crsn_game_ui.show
--		crsn_lobby_ui.add_reference_to_game_window (crsn_game_ui)

		print ("Joined player end %N")
	end

feature{NONE} -- regarding network
	interaction_for_connect
	do

		host_client.send_message_to_server (create {G10_CRSN_MESSAGE}.make_msg   --server closes client's socket
								 (message_CONNECT, player_info, host_info))
		print (message_CONNECT + " sent %N")
	end

	interaction_for_disconnect
	do

		host_client.send_message_to_server (create {G10_CRSN_MESSAGE}.make_msg   --server closes client's socket
								 (message_DISCONNECT, player_info, host_info))
		print (message_DISCONNECT + " sent %N")
	end
	receive_ack :BOOLEAN
	local
		temp_soc : NETWORK_STREAM_SOCKET
	do
		temp_soc := host_client.get_socket
		Result := false
		if attached {G10_CRSN_DATA_MESSAGE} temp_soc.retrieved as data_msg
		then
			if data_msg.get_data.is_equal(message_CONNECT) = true
			then
				print ("ACK received.Connected!%N")
			elseif data_msg.get_data.is_equal (message_DISCONNECT) = true
			then
				print ("Ack Received.Disconnected! %N")
			end
			Result := true
		else
			print ("Ack received. Successful request! %N")
			Result := true
		end
	end
	make_connection_with_host
	local
		sock : NETWORK_STREAM_SOCKET
	do
	--	print ("Message for join sent to host with IP : " +
	--	host_info.get_internal_ip + "and port: " +
	--	host_info.get_port + "%N")
		create host_client.connect (host_info.get_port.to_integer, host_info.get_internal_ip)


		-- CONNECTION COOL
		interaction_for_connect
		if receive_ack = false
		then
			print ("Error in connection %N") -- retry as poume
		end
		-- DISCONNECT ALSO
--		interaction_for_disconnect
--		if receive_ack = false
--		then
--			print ("Error in connection %N") -- retry as poume
--		end

		-- INIT OK
		interaction_with_host_for_init(Current)  -- HERE INIT RECEIVES A LOGIC_MAIN MESSAGE THAT MUST BE APPLIED INTO LOGIC KINEZE
		if receive_init_from_host (Current) = false
		then
			print ("Error receiving init....%N")
		end

		-- ante cool k auto ena emeine
--		interaction_with_host_for_tile (Current ,create {G10_LOGIC_TILE}.make_available, 0 ,1)
--		if receive_tile_from_host(Current) = false
--		then
--			print ("Error receiving tile ... %N")
--		end

--		interaction_with_host_for_end_turn(Current)
--		if receive_next_player_from_host (Current) = false
--		then
--			print ("Error receiving next player.... %N")
--		end


	end

feature{G10_GUI_GAME_MAIN} -- event handler

	fire_event (an_event : STRING  tile_row , tile_col : INTEGER) -- event handler to be called for every game event
	do
		if (an_event.is_equal ("rotate")) then
			-- rotation in logic
			crsn_game_logic.rotate_current_players_tile
			-- rotation in gui regarding the logic
			crsn_game_ui.rotate_current_player_tile(crsn_game_logic.get_current_player_tile_state)
		elseif(an_event.is_equal ("put_tile_to_terrain")) then
			-- 1. topothetisi sto terrain. crsn_game_ui.draw_tile_to_terrain("1" , "0" , 20 ,20)
			-- 2. topothetisi adion tile giro tou.
			-- 3. dimiourgia tou tile pou tha mpei basei tou drawed tile (tha pairno to id kai to rotation apo to logic kai tha ta dino sto gui san orismata).
			if(crsn_game_logic.tile_matches_terrain_item (crsn_game_logic.get_current_player_tile , tile_row, tile_col) = true )then
				io.put_string ("i insert egine lol match : ")
				io.put_boolean (crsn_game_logic.tile_matches_terrain_item (crsn_game_logic.get_current_player_tile , tile_row, tile_col))
				io.put_new_line
				crsn_game_logic.insert_tile_to_terrain (crsn_game_logic.get_current_player_tile, tile_row, tile_col)
				crsn_game_ui.draw_tile_to_terrain (crsn_game_logic.get_current_player_tile_id, crsn_game_logic.get_current_player_tile_state, tile_row, tile_col)

				-- drawed tile is changing regarding the logic's tile pull succesfully.
				if(crsn_game_logic.is_tile_pull_empty = false) then
					crsn_game_logic.generate_current_player_tile
					crsn_game_ui.update_current_player_tile (crsn_game_logic.get_current_player_tile_id)
				else
					crsn_game_ui.destroy_current_player_tile ()
				end
			else
				io.put_string ("arxidia insert ekane")
				io.put_new_line
			end

		end
	end

feature {ANY} -- accessors

	get_host_info: G10_NET_INFO
	do
		Result := host_info
	end
	get_host_client : G10_CLIENT
	do
		Result := host_client
	end
end
