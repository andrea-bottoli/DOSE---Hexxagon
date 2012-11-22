note
	description: "Summary description for {G2_NET_CONNECTION_MGE}."
	author: "Rio Cuarto8"
	date: "05/11/2012"
	revision: "1.0"

class
	G2_NET_CONNECTION_MGE

inherit

	STORABLE

create
	make

feature

	make(ip: STRING; p: INTEGER)
		-- create a new instance of the class
	require
		valid_port: p>0
		--valid_ip_address:
	do

	ensure
		assing_ip: ip = ip_address
		assing_port: p = port
	end

feature -- Implementation

	ip_address: STRING
		-- ip address to connect

	port: INTEGER
		-- port to connect

end
