note
	description: "Summary description for {G10_ROOT_SERVER}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	G10_LOBBY_SERVER
inherit
	THREAD_CONTROL
	G10_CRSN_MESSAGE_PROTOCOL
create
	make
feature {NONE}
	lobby_logic		 	: G10_LOBBY_LOGIC
	message_recv 		: G10_CRSN_MESSAGE
	server				: G10_SERVER
	my_mutex			: MUTEX

feature
	make(id, int_ip, ext_ip, port : STRING)
	local

	do
		print (id+" server start: %N")
		print("with ip "+int_ip+"%N")
		print("with port "+port+"%N")
		create server.make(port)
		create lobby_logic.make(id,int_ip, ext_ip, port)
		start_server

		io.put_string ("Lobby Server end %N")
	end

	process (soc1: NETWORK_STREAM_SOCKET id : INTEGER)
			-- Receive a message, extend it, and send it back.
		local
			soc2: NETWORK_STREAM_SOCKET
			thread: G10_THREAD
			str_msg : STRING
		do

			soc1.accept
			soc2 := soc1.accepted
			print ("%NSomeone accepted " + soc2.peer_address.host_address.host_address +" Thread id : "+ id.out + " %N")
			server.add_to_socket_list (soc2)
			create thread.make_lobby(soc2, Current, id)
			thread.launch

			print ("%N %N %N")
			--lobby_logic :=  thread.get_lobby_server.get_lobby_logic



		end

	start_server
	local
		soc, soc2 : NETWORK_STREAM_SOCKET
		count :	INTEGER
		thread : G10_THREAD
	do

				soc := server.get_socket

			--print ("Server runs at: "  + " with port " + soc.port.out + "%N")
			--lobby_logic :=  thread.get_lobby_server.get_lobby_logic			
			--server.add_to_socket_list (soc2)
			from
				count := 0
			until
				count = 15
			loop
				soc.accept
				soc2 := soc.accepted
				server.add_to_socket_list (soc2)
				print ("%NSomeone accepted " + soc2.peer_address.host_address.host_address + "%N")
				create thread.make_lobby(soc2, Current, count)
				thread.launch
				count := count + 1
				print ("%N %N %N")
			end
			join_all
			server.close_socket
		end
handle_get_message(msg : G10_CRSN_MESSAGE; sock : NETWORK_STREAM_SOCKET)
do
			print ("Message sender : " + message_recv.get_sender.get_id
			 + "%NMessage ID : " + msg.get_id + "%N")
			if msg.get_id.is_equal ("Get")
			then
				server.send_msg (create {G10_CRSN_DATA_MESSAGE}.make_data_msg
				("Response to Get Lists| Games List ",
				lobby_logic.get_info, message_recv.get_sender, lobby_logic.get_all_games), sock)

				--print ("Games Arrayed_List sent%N")

				server.send_msg (create {G10_CRSN_DATA_MESSAGE}.make_data_msg
				("Response to Get Lists| Connected Players List",lobby_logic.get_info,
				 message_recv.get_sender, lobby_logic.get_all_connected_players), sock)
--				 server.broadcast_msg_to_all (create {G10_CRSN_DATA_MESSAGE}.make_data_msg
--				("Response to Get Lists| Connected Players List",lobby_logic.get_info,
--				 message_recv.get_sender, lobby_logic.get_all_connected_players))

				--print ("Players Arrayed_List sent%N")
			end
end

handle_join_message (msg : G10_CRSN_SPECIAL_DATA_MESSAGE sock : NETWORK_STREAM_SOCKET)
do
		print ("Message sender : "+ message_recv.get_sender.get_id
		+ "%NMessage ID : " + msg.get_id + "%N")

		if msg.get_id.is_equal ("Join")
		then
--			server.send_msg (create {G10_CRSN_DATA_MESSAGE}.make_data_msg
--				("Response to Create new Game| Games List ",lobby_logic.get_info,
--					message_recv.get_sender, lobby_logic.get_all_games), sock)


--			server.send_msg (create {G10_CRSN_DATA_MESSAGE}.make_data_msg
--				("Response to Join Game",lobby_logic.get_info,
--					 message_recv.get_sender, lobby_logic.get_all_connected_players), sock)


			server.send_msg (create {G10_CRSN_DATA_MESSAGE}.make_data_msg
				("Response to Join| Host ",lobby_logic.get_info, message_recv.get_sender,
					lobby_logic.get_game_by_number (msg.get_first_integer)), sock)
			end
end

handle_create_message (msg : G10_CRSN_SPECIAL_DATA_MESSAGE sock : NETWORK_STREAM_SOCKET) : STRING
do

		if attached{STRING} msg.get_data as title_str
		then
			lobby_logic.add_game_to_list (message_recv.get_sender, title_str, msg.get_first_integer)
		end

--		server.send_msg (create {G10_CRSN_DATA_MESSAGE}.make_data_msg
--		("Response to Create new Game| Games List ",lobby_logic.get_info,
--		 message_recv.get_sender, lobby_logic.get_all_games), sock)

--		server.send_msg (create {G10_CRSN_DATA_MESSAGE}.make_data_msg
--		("Response to Create new Game| Connected Players List",lobby_logic.get_info,
--		message_recv.get_sender, lobby_logic.get_all_connected_players), sock)

		message_recv := server.receive_msg (sock)
		if attached {G10_CRSN_MESSAGE} message_recv as nrm_msg
		then
			if attached {STRING} nrm_msg.get_id
			then
				if nrm_msg.get_id.is_equal ("Disconnect")
				then
					Result := "Disconnect"
				end
			end
		end
end
	msg_handler (socket : NETWORK_STREAM_SOCKET) : STRING
	do
	--	print("Receive messages from client...  %N")
		message_recv := server.receive_msg (socket)

		if message_recv /= void
		then

		print ("Not voidddd %N")
			lobby_logic.add_player_to_list (message_recv.get_sender)
			Result := ""
			if attached {G10_CRSN_MESSAGE} message_recv as normal_msg
			then
				handle_get_message(normal_msg, socket)
			end
			if attached{G10_CRSN_SPECIAL_DATA_MESSAGE} message_recv as sp_msg
			then
				if sp_msg.get_id.is_equal ("Join")
				then
					handle_join_message(sp_msg, socket)
				end
				if sp_msg.get_id.is_equal ("Create")
				then
					Result := handle_create_message (sp_msg, socket)
				end


			end
		--	print ("There isn't other message to send. End here! %N")
		end
	end


feature --getters

	get_lobby_logic : G10_LOBBY_LOGIC
	do

		Result := lobby_logic
	end
end

