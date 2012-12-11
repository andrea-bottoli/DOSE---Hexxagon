note
	description: "Summary description for {NET_CORE}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	G20_NET_CORE


inherit

    SOCKET_RESOURCES

    STORABLE

create
	make

feature

    soc1: detachable NETWORK_DATAGRAM_SOCKET

    make
            -- Accept communication with client and exchange messages.
        do
            create soc1.make_server_by_port (2000)
                
        end


feature {ANY}--G20_CORE,G20_NETWORKMANAGER}

	peers : ARRAY[G20_NETWORKPLAYER]

	discover_peers : INTEGER
		do
			create peers.make_empty
			Result := 0  --number of peers
		end


	keep_alive
		do

		end







end
