note
	description: "Thread used by the client; it manage the connections client side"
	author: "Team Milano2"
	date: "11-12-2012"
	revision: "0.1"

class
	XX_CLIENT_CONNECT

inherit
	XX_SOCKET_INTERFACE

create
	make_client_thread

feature --Constructor of the class

	make_client_thread(a_net: XX_NET)
	do
		make
		net:=a_net
	end

feature {NONE} --Attributes

	net: XX_NET
	client_socket: NETWORK_STREAM_SOCKET
	reader: SED_MEDIUM_READER_WRITER
	writer: SED_MEDIUM_READER_WRITER
	message: ANY
	continue: BOOLEAN

feature{XX_NET} --Methods used by XX_NET

	--Launches the thread
	execute
	do
		continue:=TRUE
		create client_socket.make_client_by_port (net.get_server_port, net.get_server_ip)
		client_socket.connect
		create_socket_agents
		listening
	end

	--Writes
	write(a_message: ANY)
	do
		if(writer/=Void and writer.is_ready_for_writing)then
			store (a_message, writer)
		else
			print("writer empty%N")
		end
	end

	--Closes the thread
	close
	do
		continue:=FALSE

		if (client_socket/=Void) then
			client_socket.close_socket
		end
	end

feature {NONE} --Private methods

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
