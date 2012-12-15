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
		fire_event
	end
	THREAD_CONTROL

create
	make_host

feature {NONE}
	server				: G10_SERVER
	crsn_host_message	: G10_CRSN_MESSAGE

feature
	make_host (player : G10_LOBBY_USER)
	do
		print ("Host start %N")
		-- call super class
		make_user(player)

		--init server
--		create server.make (player_info.get_port)

		-- init game logic
		-- create crsn_game_logic.make -- einai koroidia

		-- launch the game ui
		create crsn_game_ui.make(Current)
		crsn_game_ui.show
		crsn_lobby_ui.add_reference_to_game_window (crsn_game_ui)

		-- start listening
--		start_host_server
		print ("Host Started Listening %N")
	end

feature{NONE}

	start_host_server
	local
		soc, soc2 : NETWORK_STREAM_SOCKET
		count :	INTEGER
	do
		soc := server.get_socket
		print ("Server runs at %NInternal IP : " + get_player_info.get_internal_ip +
							  "%NExternal IP: " + get_player_info.get_external_ip +
									" with port " + soc.port.out + "%N")
		from
			count := 0
		until
			count = 8
		loop

			soc.accept
			soc2 := soc.accepted
			print ("%NSomeone accepted... IP : " + soc2.peer_address.host_address.host_address +" %N")
			host_msg_handler (soc2)
			soc2.close
			count := count + 1

		end

		server.close_socket
	end

	host_msg_handler ( socket : NETWORK_STREAM_SOCKET )
	do
		print("Messages from client...  %N")
		crsn_host_message := server.receive_msg (socket)
		if attached {G10_CRSN_MESSAGE} crsn_host_message as norm_msg
		then
			print("Message type : CRSN_MESSAGE %N" + "Message id : " + norm_msg.get_id)
			io.put_new_line

			if norm_msg.get_id.is_equal ("Join Game")
			then
				-- server.add_new_player (crsn_host_message.get_sender) -- add to list
				-- update gui
				-- send list to player to update his own gui
				-- create a thread for player
			end

			print ("Sending message to client with ID: " + crsn_host_message.get_sender.get_id + "%N")
			--server.send_msg (create {G10_CRSN_MESSAGE}.make_msg
			 --("Response for .. ",get_player_info,crsn_host_message.get_sender), socket)
		end
		print ("Exiting now... %N ")
	end

feature{G10_GUI_GAME_MAIN} -- event handler

	fire_event (an_event : STRING) -- event handler to be called for every game event
	do
		if (an_event.is_equal ("rotate")) then
			print("Dude I just rotated while I AM THE BOSS and it felt great !!!!%N")
		end
	end

end
