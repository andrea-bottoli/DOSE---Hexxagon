note
	description: "Summary description for {NET_CORE}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	G20_NET_CORE



create
	make

feature
	make
		do

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
