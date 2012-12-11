note
	description : "Thread for the client"
	author		: "George Vardakis"
	date        : "6/12/2012"
	revision    : "0.0.1"

class
	B8_MY_THREAD_CLIENT --the class for the thread of the client
inherit
	THREAD
		rename
			make as thread_make
		end
create
	make

feature
	make(a_port_number:INTEGER;a_ip_address:STRING)
	do

		new_data:=1
		port_number:=a_port_number
		ip_address:=a_ip_address
		thread_make

	end
	execute
		local
			i:INTEGER
		do
			create soc.make_client_by_port(port_number,ip_address)--the ip in this prototype is hardcoded-must change depending on the server
			--soc.is
			soc.connect
			soc.independent_store ("This is a test")--message sent to the server
			from
				i:=0
			until
				i=1
			loop



			 		if attached{STRING} soc.retrieved as l_msg then--message retrieved from the server
			 			io.putstring (l_msg)
					end
            end
            			soc.cleanup

			rescue
				if soc/=Void then
					soc.cleanup
				end
            soc.close
		end

feature
	ip_address:STRING
	port_number:INTEGER
	soc:NETWORK_STREAM_SOCKET
	new_data:INTEGER
end
