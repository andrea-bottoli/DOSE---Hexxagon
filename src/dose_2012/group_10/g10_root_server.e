note
	description: "Summary description for {G10_ROOT_SERVER}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	G10_LOBBY_SERVER
inherit
	THREAD_CONTROL
create
	make
feature {NONE}
	lobby_logic		 	: G10_LOBBY_LOGIC
	message_recv 		: G10_CRSN_MESSAGE
	server				: G10_SERVER
	sender				: G10_NET_PLAYER_INFO

feature
	make(port, ip, id : STRING)
	local

	do
		print (id+" start: %N")
		print("with ip "+ip+"%N")
		print("with port "+port+"%N")
		create server.make(port)
		create lobby_logic.make
		create sender.make ("2614","192.168.1.1", "Lobby")
		start_server
		io.put_string ("Root Server end %N")
	end

	process (soc1: NETWORK_STREAM_SOCKET; i:INTEGER)
			-- Receive a message, extend it, and send it back.
		local
			soc2: NETWORK_STREAM_SOCKET
			thread: G10_THREAD
		do
			soc1.accept
			soc2 := soc1.accepted
			--create thread.make(soc2, "Hello from thread " + i.out)
			thread.launch

		end

	start_server
	local
		soc, soc2 : NETWORK_STREAM_SOCKET
		count :	INTEGER
	do
			soc := server.get_socket
			print ("Server runs at IP : 192.168.1.1 "+ " with port " + soc.port.out + "%N")
			from
				count := 0
			until
				count = 8
			loop

				soc.accept
				soc2 := soc.accepted
				print ("%NSomeone accepted " + soc2.peer_address.host_address.host_address +" %N")
				msg_handler (soc2)
				soc2.close
				count := count + 1

			end

			server.close_socket
		end

	msg_handler (socket : NETWORK_STREAM_SOCKET)
	do
		print("Messages from client...  %N")
		message_recv := server.receive_msg (socket)
		lobby_logic.add_player_to_list (message_recv.get_sender)
		if attached {G10_CRSN_MESSAGE} message_recv as str_msg
		then

			print ("Message ID : " + str_msg.get_id + "%N")
			print("I will send to player with ID : " + message_recv.get_sender.get_id + " two Arrayed_Lists %N")
			if str_msg.get_id.is_equal ("Create")
			then

						lobby_logic.add_game_to_list (message_recv.get_sender)
					--  tests	
					--	print("Games number " + lobby_logic.get_active_games_no.out)
					--	new := lobby_logic.get_all_games
					--	print("Games number new " + new.count.out)
						print("Sending Arrayed_Lists %N")
						server.send_msg (create {G10_CRSN_DATA_MESSAGE}.make_data_msg
										("Response to Create new Game| Games List ",
										sender, message_recv.get_sender, lobby_logic.get_all_games), socket)

						print ("Games Arrayed_List sent%N")
						print ("Connected Players list count is : " + lobby_logic.get_all_connected_players.count.out + "%N")
						server.send_msg (create {G10_CRSN_DATA_MESSAGE}.make_data_msg
										("Response to Create new Game| Connected Players List",sender,
										 message_recv.get_sender, lobby_logic.get_all_connected_players), socket)
						print ("Players Arrayed_List sent%N")
			elseif str_msg.get_id.is_equal ("Get")
			then
					--  tests	
					--	print("Games number " + lobby_logic.get_active_games_no.out)
					--	new := lobby_logic.get_all_games
					--	print("Games number new " + new.count.out)
						print("Sending Arrayed_Lists %N")
						server.send_msg (create {G10_CRSN_DATA_MESSAGE}.make_data_msg
							("Response to Get Lists| Games List ",
							sender, message_recv.get_sender, lobby_logic.get_all_games), socket)

						print ("Games Arrayed_List sent%N")

						server.send_msg (create {G10_CRSN_DATA_MESSAGE}.make_data_msg
							("Response to Get Lists| Connected Players List",sender,
							 message_recv.get_sender, lobby_logic.get_all_connected_players), socket)

						print ("Players Arrayed_List sent%N")
			end
		end

		if attached{G10_CRSN_SPECIAL_DATA_MESSAGE} message_recv as sp_msg
		then
			if sp_msg.get_id.is_equal ("Join")
			then
					-- also the line below is for test, we will not add any game here
					lobby_logic.add_game_to_list (message_recv.get_sender)
				--  tests	
				--	print("Games number " + lobby_logic.get_active_games_no.out)
				--	new := lobby_logic.get_all_games
				--	print("Games number new " + new.count.out)

					print("Sending Arrayed_Lists %N")
					server.send_msg (create {G10_CRSN_DATA_MESSAGE}.make_data_msg
									("Response to Create new Game| Games List ",
									sender, message_recv.get_sender, lobby_logic.get_all_games), socket)

					print ("Games Arrayed_List sent%N")
					server.send_msg (create {G10_CRSN_DATA_MESSAGE}.make_data_msg
									("Response to Create new Game| Connected Players List",sender,
									 message_recv.get_sender, lobby_logic.get_all_connected_players), socket)

					print ("Player Arrayed_List sent %N")
					server.send_msg (create {G10_CRSN_DATA_MESSAGE}.make_data_msg
													("Response to Join| Host ",sender,
													 message_recv.get_sender,
													  lobby_logic.get_game_by_number (sp_msg.get_first_integer)), socket)

					print ("Host info sent%N")
			end
		end
		print ("Exiting Now... %N")
	end
end
