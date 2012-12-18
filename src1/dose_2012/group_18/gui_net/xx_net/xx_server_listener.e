note
	description: "Thread used by the server; it manage the connections server side"
	author: "Team Milano2"
	date: "11-12-2012"
	revision: "0.1"

class
	XX_SERVER_LISTENER

inherit
	XX_SOCKET_INTERFACE

create
	make_server_thread

feature --Constructor of the class

	make_server_thread(a_net: XX_NET)
	do
		make
		net:=a_net
	end

feature {NONE} --Attributes

	net: XX_NET
	ip_client: STRING
	server_socket: NETWORK_STREAM_SOCKET
	client_socket: NETWORK_STREAM_SOCKET
	reader: SED_MEDIUM_READER_WRITER
	writer: SED_MEDIUM_READER_WRITER
	message: ANY
	continue: BOOLEAN

feature {XX_NET} --Methods used by XX_NET

	--Launches the thread
	execute
	do
		continue:=TRUE
		create server_socket.make_server_by_port (net.get_server_port)
		print("Server is up and wait%N")
		waiting
		setup_client_connected
		listening
	end

	--Writes
	write(a_message: ANY)
	do
		if(writer/=Void and writer.is_ready_for_writing)then
			store (a_message, writer)
		else
			print("writer vuoto%N")
		end
	end

	--Close the thread
	close
	do
		continue:=FALSE

		if(server_socket/=Void and client_socket/=Void)then
			server_socket.close_socket
			client_socket.close_socket
		end
	end

feature {NONE} --Private methods

	--Server is waiting for a connection
	waiting
	do
		server_socket.listen (1)
		server_socket.accept
	end

	--Sets the client connected to the socket
	setup_client_connected
	do
		client_socket:=server_socket.accepted
		ip_client:=client_socket.peer_address.host_address.host_address
		net.set_client_ip (ip_client)
		create_socket_agents
		net.send_request_client_name_player
	end

feature{NONE}

	--Creates socket agents
	create_socket_agents
	do
		create writer.make (client_socket)
		create reader.make (client_socket)

		reader.set_for_reading
		writer.set_for_writing
	end

	--Loop that listens the stream
	listening
	do
		from
			continue:=TRUE
		until
			not continue
		loop
			if(reader/=Void and reader.is_ready_for_reading)then
				message:=retrieved(reader, TRUE)
				if (message/=Void) then
					net.parser (message)
				end
			end
			sleep (1000000)
		end
	end

end
