note
	description: "contains all functionality for the host player"
	author: "John Voyatzis, Angel Kyriako"
	date: "14/12/2012"
	revision: "3.0"

class
	G10_HOST
inherit
	G10_LOBBY_USER
	redefine
		fire_event,handle_connect_message,handle_disconnect_message
	end

	THREAD_CONTROL

create
	make_host

feature {NONE}
	server				: G10_SERVER
	crsn_host_message	: G10_CRSN_MESSAGE
	t : G10_SERVER_THREAD

feature
	make_host (player : G10_LOBBY_USER)
	do
		print ("Host start %N")
		-- call super class
		make_user(player)

		--init server
		create server.make (player_info.get_port)

		-- init game logic
		 create crsn_game_logic.make_player_name_max_players_num ("", 3)



		create t.make(Current, 0)


		-- launch the game ui
		create crsn_game_ui.make(Current)
		crsn_game_ui.show
		crsn_lobby_ui.add_reference_to_game_window (crsn_game_ui)


		t.launch
--		t.join
--		-- start listening
--		start_host_server

		print ("Host Started Listening %N")
	end

feature

	start_host_server
	local
		soc, soc2 : NETWORK_STREAM_SOCKET
		count :	INTEGER
		thread : G10_THREAD
		str : STRING
	do
		soc := server.get_socket
		print ("Server runs at %NInternal IP : " + get_player_info.get_internal_ip +
							  "%NExternal IP: " + get_player_info.get_external_ip +
									" with port " + soc.port.out + "%N")
		from
			count := 0
		until
			count = 15
		loop

			soc.accept
			soc2 := soc.accepted
			print ("%NSomeone accepted... IP : " + soc2.peer_address.host_address.host_address +" %N")
		--	create thread.make (socket, Current, 5)
			str := host_msg_handler (soc2)
			--soc2.close
			count := count + 1

		end
		join_all
		server.close_socket
	end

	host_msg_handler ( socket : NETWORK_STREAM_SOCKET ) : STRING
	do

		print("Messages from client...  %N")
		crsn_host_message := server.receive_msg (socket)

		if attached {G10_CRSN_SPECIAL_DATA_MESSAGE} crsn_host_message as data_msg
		then

		if data_msg.get_id.is_equal (message_TILE)
			then
				handle_tile(Current,data_msg, socket)
			end
		else if attached {G10_CRSN_MESSAGE} crsn_host_message as norm_msg
		then
			if norm_msg.get_id.is_equal (message_CONNECT)
			then
			    Current.get_crsn_lobby_logic.get_game
			    (Current.get_player_info.get_internal_ip).add_a_joined_player (norm_msg.get_sender)
				handle_connect_message(norm_msg.get_sender, socket)
			elseif norm_msg.get_id.is_equal (message_DISCONNECT)
			then
				Current.get_crsn_lobby_logic.get_game (get_player_info.get_internal_ip).delete_a_joined_player (norm_msg.get_sender)
				Result := handle_disconnect_message(norm_msg.get_sender, socket)
			elseif norm_msg.get_id.is_equal (message_INIT) = true
			then
				handle_init(Current, norm_msg, socket)
			elseif norm_msg.get_id.is_equal (message_ENDTURN) then
				handle_end_turn(Current, norm_msg, socket)
			else
				-- ......
			end
		else
			--......
		end

				end
		print ("Exiting now... %N ")
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



feature
handle_connect_message ( receiver : G10_NET_INFO sock : NETWORK_STREAM_SOCKET)
	do
		print (message_CONNECT + "received %N")
			server.send_msg (create {G10_CRSN_DATA_MESSAGE}.make_data_msg
					(message_ACK,get_player_info, receiver,message_CONNECT ),sock)
	end
	handle_disconnect_message ( receiver : G10_NET_INFO sock : NETWORK_STREAM_SOCKET) : STRING
	do
		print (message_DISCONNECT + "received %N")
		server.send_msg (create {G10_CRSN_DATA_MESSAGE}.make_data_msg
			(message_ACK,get_player_info, receiver,message_DISCONNECT ),sock)
			--sock.close
		Result := message_DISCONNECT
	end

	get_host_server : G10_SERVER
	do
		Result := server
	end

end
