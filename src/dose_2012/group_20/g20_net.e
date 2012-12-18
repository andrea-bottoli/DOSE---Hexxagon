note
	description: "Summary description for {G20_NET}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	G20_NET

create
	make

feature {NONE} -- Initialization

	make (numberOfPlayers: INTEGER)
			-- Initialization for `Current'.
		local

			players_ip : ARRAY [STRING_8]

			udp_send_thread : G20_NET_THREAD_UDP_1
			netmanager:G20_NETWORKMANAGER
		do
--			create netmanager.make
--		numberOfPlayers := numberOfPlayers -1
--            create udp_send_thread.make (numberOfPlayers)
--            udp_send_thread.launch
--            players_ip := udp_send_thread.read_op

		end

end
