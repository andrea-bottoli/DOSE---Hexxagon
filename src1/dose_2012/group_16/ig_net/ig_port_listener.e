note
	description: "Summary description for {IG_PORT_LISTENER}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	IG_PORT_LISTENER

create
	make

feature

	make
		do
			create server_socket.make_server_by_port (49567)
			server_socket.set_blocking
			server_socket.set_accept_timeout (180000)	--3 Minutes
			server_socket.set_timeout (180)				--3 Minutes
			server_socket.listen (15)

		end

	get : NETWORK_STREAM_SOCKET
		do
			server_socket.accept

			Result := server_socket.accepted
		end

	server_socket: NETWORK_STREAM_SOCKET

end
