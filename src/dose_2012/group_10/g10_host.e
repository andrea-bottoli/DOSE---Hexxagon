note
	description: "Summary description for {G10_HOST}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	G10_HOST
inherit
	THREAD_CONTROL
create
	make
feature {NONE}
	crsn_host_info 			: G10_NET_PLAYER_INFO
	crsn_host				: G10_SERVER
	crsn_host_message		: G10_CRSN_MESSAGE

	-- Logic & GUI objects are needed


feature
	make (port,ip,id : STRING)
	local
		do
			print ("Host start %N")
			create	crsn_host_info.make (port,ip, id)
			create crsn_host.make (port)
			start_host_server
			print ("Host end %N")
		end

feature
	start_host_server
	local
		soc, soc2 : NETWORK_STREAM_SOCKET
		count :	INTEGER
	do
			soc := crsn_host.get_socket
			print ("Server runs at IP : " + crsn_host_info.get_ip +
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

			crsn_host.close_socket
		end


-- possible messages
-- tile height - width		--> special_data_message
-- tile box				   	--> special_data_message with one integer used
-- action					--> message (normal)
-- object = any				--> data or special data message



	host_msg_handler ( socket : NETWORK_STREAM_SOCKET )
	do
		print("Messages from client...  %N")
		crsn_host_message := crsn_host.receive_msg (socket)
		if attached {G10_CRSN_MESSAGE} crsn_host_message as norm_msg
		then
			print("Message type : CRSN_MESSAGE %N" + "Message id : " + norm_msg.get_id)
			io.put_new_line

			if norm_msg.get_id.is_equal ("Join Game")
			then
				crsn_host.add_new_player (crsn_host_message.get_sender) -- add to list
				-- update gui
				-- send list to player to update his own gui
				-- create a thread for player
			end

			print ("Sending message to client with ID: " + crsn_host_message.get_sender.get_id + "%N")
			crsn_host.send_msg (create {G10_CRSN_MESSAGE}.make_msg
			 ("Response for .. ",crsn_host_info,crsn_host_message.get_sender), socket)
		end
		print ("Exiting now... %N ")
	end


end
