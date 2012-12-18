note
	description: "Summary description for {G3_NETWORK_RIO_CUARTO_6}."
	author: "Gastón Scilingo"
	date: "$15 Dec.$"
	revision: "$1.0$"

class
	G3_NETWORK_RIO_CUARTO_6

inherit
	G3_INETWORK

	STORABLE

	THREAD
		rename
			make as make_thread
		end

create
	make_thread



feature{G3_CONTROLLER}

	connect (ip : STRING ; message : G3_MESSAGE) : G3_MESSAGE
			-- this feature shall be called by client controller to register on the remote game
		do
			print ("connecting for register ...")
			io.new_line
			server_mode := false
			ip_number_of_server := ip
			create socket.make_client_by_port (11001, ip_number_of_server)
			socket.connect
			message.independent_store (socket)
			if attached {G3_MESSAGE} message.retrieved (socket) as message_back then
				Print ("My new id is : "+message_back.receiver_id.id.out)
				id_client_mode := message_back.receiver_id.id
				Result := message_back
			end
			print ("end registering process and close port ")
			io.new_line
			socket.close
		end

	send_to_server (message : G3_MESSAGE)
			-- send message to server controller registered after invoking feature connect
		do
			Print ("send_to_server : "+ip_number_of_server)
			create socket.make_client_by_port (11001, ip_number_of_server)
			socket.connect
			message.independent_store (socket)
			io.new_line
			Print ("end send_to_server ")
			socket.close
		end

	run_server_mode
			-- set the component ready to receive conections
		do
			server_mode := true
			connected := 0
			create ip_numbers_of_players.make(1,4)
		end

	send_to_client (message : G3_MESSAGE)
			-- send message to registered client
		local
			client_ip : STRING
			dest_port : INTEGER
		do
			client_ip := ip_numbers_of_players.at (message.receiver_id.id)
			dest_port := 11000+message.receiver_id.id
			create socket.make_client_by_port (dest_port, client_ip)
			io.new_line
			print ("send_to_client : ip "+client_ip+" dest port : "+dest_port.out)
			io.new_line
			socket.connect
			message.independent_store (socket)
			socket.close
		end

	execute
		local
			socket_to_client : NETWORK_STREAM_SOCKET
			message : G3_MESSAGE
			something : ANY
			i : INTEGER
			port : INTEGER
		do
			if server_mode then

				create socket.make_server_by_port (11001)

				from
					accept_messages := true
					socket.listen (200)
					i := 2
				until
					not accept_messages or connected = 3
				loop
					socket.accept
					if attached socket.accepted as new_socket_to_client then
						socket_to_client := new_socket_to_client
						something := retrieved(socket_to_client)
						if (attached {G3_MESSAGE} something as incomming_message) then
							io.new_line
							print ("Message send by new player : "+incomming_message.sender_id.id.out)
							print (" Addres of new player : ")
							print (new_socket_to_client.peer_address.host_address.host_name)
							io.new_line
							message := controller.register_players (incomming_message)
							print ("CONTROLLER return register number : "+message.receiver_id.id.out)
							io.new_line
							print ("sending message ....")
							io.new_line
							message.independent_store (new_socket_to_client)
							print ("sended message to ip :"+new_socket_to_client.peer_address.host_address.host_name+" successful" )
							io.new_line
							-- address of client storing for future connections
							ip_numbers_of_players.enter (new_socket_to_client.peer_address.host_address.host_name, i)
							i := i +1
							connected := connected + 1
							-- if needed close port here TODO????
						end
					end
				end--end loop for register players

				controller.special (message)

				print_registered_ips -- TODO remove line

				-- keep alive for eternity, loop for receive comunications on game
				from
					accept_messages := true
				until
					not accept_messages
				loop
					io.new_line
					io.put_string ("I AM HERE wait for a message !!!!!!!")
					io.new_line
					socket.accept
					io.new_line
					Print("------------New Message arrived !!!-----------")
					if attached socket.accepted as new_socket_to_client then
						socket_to_client := new_socket_to_client
						something := retrieved(socket_to_client)
						if (attached {G3_MESSAGE} something as incomming_message) then
							io.new_line
							print ("Message send by player : ")
							print (incomming_message.sender_id.id.out)
							io.new_line
							controller.receive (incomming_message)
						end
					end

				end --end loop receive registered players
			else
				-- on client mode
				print ("NET running on client mode ")
				from
					port := 11000+id_client_mode
					create socket.make_server_by_port (port)
					accept_messages := true
					socket.listen (3)
				until
					not accept_messages
				loop
					io.new_line
					io.put_string ("NET client running on port : "+port.out)
					io.new_line
					socket.accept
					if attached socket.accepted as new_socket_to_client then
						socket_to_client := new_socket_to_client
						something := retrieved(socket_to_client)
						if (attached {G3_MESSAGE} something as incomming_message) then
							controller.receive (incomming_message)
						end
					end
				end	--end loop

			end
			io.new_line
			io.put_string ("The thread end ....")
			io.new_line
			rescue
				Print ("Se Pudrió el queso !!!!")
				--retry
		end


	set_ip_numbers_of_players (ip_of_players : ARRAY[STRING])
		do
			ip_numbers_of_players := ip_of_players
		end

	ip_numbers_of_players : ARRAY [STRING]
		-- ip numbers of players that registered

	set_ip_number_of_server(number : STRING)
		do
			ip_number_of_server := number
		end

	ip_number_of_server : STRING


feature{NONE}

	server_mode : BOOLEAN

	accept_messages : BOOLEAN

	connected : INTEGER





	socket : detachable NETWORK_STREAM_SOCKET

	id_client_mode : INTEGER


feature{NONE} -- internal features

	print_registered_ips
		local
			i : INTEGER
		do
			from
				i := 1
			until
				i = 5
			loop
				io.new_line
				Print ("Player : ")
				Print (i)
				print (" ")
				Print (ip_numbers_of_players.at (i))
				io.new_line
				i := i +1
			end
		end


end
