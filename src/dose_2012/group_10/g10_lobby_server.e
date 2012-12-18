note
	description: "Summary description for {G10_ROOT_SERVER}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	G10_LOBBY_SERVER
inherit
	THREAD_CONTROL
	G10_NET_COM_FUNCS
	redefine
		handle_connect_message, handle_disconnect_message
	end
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
			create thread.make(soc2, Current, id)
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

			--lobby_logic :=  thread.get_lobby_server.get_lobby_logic			
			--server.add_to_socket_list (soc2)
			from
				count := 0
			until
				count = 15
			loop
				process(soc, count)
				count := count + 1
			end
			join_all
			server.close_socket
		end



	msg_handler (socket : NETWORK_STREAM_SOCKET) : STRING
	do
		message_recv := server.receive_msg (socket)
		if message_recv /= void
		then
			print("Receive messages from " + "%"" + message_recv.get_sender.get_id + "%"" +"  started...%N")
			Result := ""
			lobby_logic.add_player_to_list (message_recv.get_sender)

			if attached {G10_CRSN_MESSAGE} message_recv as normal_msg
			then
				if normal_msg.get_id.is_equal (message_CONNECT)
				then
					handle_connect_message( normal_msg.get_sender, socket)
				elseif normal_msg.get_id.is_equal (message_DISCONNECT)
				then
					Result := handle_disconnect_message( normal_msg.get_sender, socket)
					socket.close
				elseif normal_msg.get_id.is_equal (message_GET_USERS)
				then
					handle_get_users_msg(Current, normal_msg, socket)
				elseif normal_msg.get_id.is_equal (message_GET_GAMES)
				then
					handle_get_games_msg(Current, normal_msg, socket)
				end
			end

			if attached {G10_CRSN_DATA_MESSAGE} message_recv as dt_msg
			then
				if dt_msg.get_id.is_equal (message_CHAT)
				then
					handle_chat(Current, dt_msg, socket)
				end
			end

			if attached{G10_CRSN_SPECIAL_DATA_MESSAGE} message_recv as sp_msg
			then
				if sp_msg.get_id.is_equal (message_JOIN)
				then
					handle_join_msg(Current,sp_msg, socket)
				end
				if sp_msg.get_id.is_equal (message_CREATE)
				then
					 handle_create_msg (Current,sp_msg, socket)
				end
			end
		print("Message receiving finished ... %N")
		end
	end

feature
	interaction_for_disconnect
	do

	end
	interaction_for_connect
	do

	end
	interaction_for_ack
	do
	end
	receive_ack : BOOLEAN
	do
		Result := FALSE
	end

	handle_connect_message ( receiver : G10_NET_INFO sock : NETWORK_STREAM_SOCKET)
	do
		print (message_CONNECT + "received %N")
		server.send_msg (create {G10_CRSN_DATA_MESSAGE}.make_data_msg
				(message_ACK,lobby_logic.get_info, receiver,message_CONNECT ),sock)
	end


	handle_disconnect_message ( receiver : G10_NET_INFO sock : NETWORK_STREAM_SOCKET): STRING
	do
		print (message_DISCONNECT + "received %N")
		server.send_msg (create {G10_CRSN_DATA_MESSAGE}.make_data_msg
				(message_ACK,lobby_logic.get_info, receiver,message_DISCONNECT ),sock)
		sock.close
		Result := message_DISCONNECT
	end
feature --getters

	get_lobby_logic : G10_LOBBY_LOGIC
	do

		Result := lobby_logic
	end

	get_server : G10_SERVER
	do
		Result := server
	end
end

