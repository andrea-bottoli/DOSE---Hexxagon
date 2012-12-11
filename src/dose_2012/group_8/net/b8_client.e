note
	description : "Game client"
	author		: "George Vardakis"
	date        : "6/12/2012"
	revision    : "0.0.1"

class
	B8_CLIENT --the class which creates the thread of the client

inherit
	SOCKET_RESOURCES
	STORABLE
	THREAD_CONTROL
	B8_GAME_MODE
create
	make_client

feature


	make_client(a_ip_address:STRING;a_port_number:INTEGER)

	local
		soc:NETWORK_STREAM_SOCKET

			-- Run application.
		do

					ip_address:=a_ip_address
					port_number:=a_port_number
					create thread.make(port_number,ip_address)
					thread.launch

			end


feature
	ip_address:STRING
	port_number:INTEGER
	thread:B8_MY_THREAD_CLIENT
end
