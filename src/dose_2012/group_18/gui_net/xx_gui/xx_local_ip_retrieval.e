note
	description: "Summary description for {XX_LOCAL_IP_RETRIEVAL}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	XX_LOCAL_IP_RETRIEVAL

create
	default_create

feature

	get_local_ip: STRING
	local
	   socket_in,socket_out: NETWORK_STREAM_SOCKET
	   intern_ip_address: STRING
	do
	   create socket_in.make_server_by_port (1027)
	   socket_in.listen(1)
	   socket_in.set_non_blocking
	   socket_in.accept
	   create socket_out.make_client_by_port (1027, "127.0.0.1")
	   socket_out.connect
	   intern_ip_address := socket_out.address.host_address.host_address
	   socket_out.close_socket
	   socket_in.close_socket

	   Result:= intern_ip_address
	end

end
