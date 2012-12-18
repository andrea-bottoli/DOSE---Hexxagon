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
--	B8_GAME_MODE
create
	make_client

feature


	make_client(a_ip_address:STRING;a_port_number:INTEGER;a_logic:B8_LOGIC)



			-- Run application.
		do
					logic:=a_logic
					ip_address:=a_ip_address
					port_number:=a_port_number
					--create soc.make_client_by_port(port_number,ip_address)
					--soc.connect
					--soc.independent_store ("This is the client")--message sent to the server
					--Stefano: Try to comment this two lines and the client works, hence the problem is on thread
					create thread.make(port_number,ip_address,logic,soc)
					thread.launch

			end


feature
	ip_address:STRING
	port_number:INTEGER
	thread:B8_MY_THREAD_CLIENT
	logic:B8_LOGIC
	soc:NETWORK_STREAM_SOCKET
end
