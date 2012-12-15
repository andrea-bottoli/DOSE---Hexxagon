note
	description:
		"Client root-class for the two_mach example."
	legal: "See notice at end of class.";

	status: "See notice at end of class.";
	date: "$Date: 2009-05-08 11:53:02 -0700 (Fri, 08 May 2009) $";
	revision: "$Revision: 78576 $"

class G10_CLIENT

inherit
	SOCKET_RESOURCES
	G10_NET

create
	connect

feature{NONE}
	client_soc : NETWORK_STREAM_SOCKET
feature

	connect(port : INTEGER ip : STRING)
		do
					create client_soc.make_client_by_port (port, ip)
					client_soc.connect
		end



feature --accessors
	get_socket : NETWORK_STREAM_SOCKET
	do
		Result := client_soc
	end

	close_client_socket
		do
			client_soc.cleanup
			rescue
				if client_soc /= void then
					client_soc.cleanup
				end
		end

feature
	disconnect_player ( socket : NETWORK_STREAM_SOCKET)
	do
		io.put_string ("Player disconnecting ... %N")
		socket.independent_store ("Message to inform server of closing socket %N")
		socket.cleanup
		socket.close
	end

	send_message_to_server( msg_to_send : ANY)
	require
		msg_not_void : msg_to_send /= void
		do
			client_soc.independent_store (msg_to_send)
		end

end

