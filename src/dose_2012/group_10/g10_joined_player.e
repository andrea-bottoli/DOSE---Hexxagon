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
		fire_event
	end

create
	make_joined_player

feature{NONE} -- attributes
	host_info: G10_NET_INFO

feature{G10_GUI_GAME_MAIN} -- constructor

	make_joined_player (a_player : G10_LOBBY_USER a_hosts_info: G10_NET_INFO)
	do
		print ("Joined player start %N")
		-- call super class
		make_user(a_player)

		-- init host info		
		host_info := a_hosts_info

		-- send request to get the game logic from host


		-- launch the game ui
		create crsn_game_ui.make(Current)
		crsn_game_ui.show
		crsn_lobby_ui.add_reference_to_game_window (crsn_game_ui)

		print ("Joined player end %N")
	end

feature{NONE} -- regarding network

	interaction_with_host_for_join ( target : G10_NET_INFO) -- kai xwris orisma ginetai an to valoume san attribute
	require
		target_not_void : target /= void
	local
		sock : NETWORK_STREAM_SOCKET
	do
		lobby_client.connect (target.get_port.to_integer, target.get_internal_ip)
		sock := lobby_client.get_socket
		lobby_client.send_message_to_server (create {G10_CRSN_MESSAGE}.make_msg("Join Game", player_info, host_info ))
		print ("Message for join sent to host with IP : " + host_info.get_internal_ip + "and port: " + host_info.get_port)

		if attached {G10_CRSN_MESSAGE} sock.retrieved as norm_msg
		then
			print ("Message received... %NMessage type : CRSN_MESSAGE%NMessage ID: " + norm_msg.get_id)

			-- 8a milhsoume gia edw

		end
	end

feature{G10_GUI_GAME_MAIN} -- event handler

	fire_event (an_event : STRING) -- event handler to be called for every game event
	do
		if (an_event.is_equal ("rotate")) then
			print("Dude I just rotated while I JOINED to a faggot and it felt great !!!!%N")
		end
	end

feature {ANY} -- accessors

	get_host_info: G10_NET_INFO
	do
		Result := host_info
	end

end
