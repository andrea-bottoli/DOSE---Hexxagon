note
	description: "Summary description for {IG_DATAGRAM_WRITER}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	IG_DATAGRAM_WRITER

inherit
	POLL_COMMAND
		redefine
			active_medium
		end

create

	make

feature

	active_medium: NETWORK_DATAGRAM_SOCKET

	execute (arg: ANY)
		local
			sen_pack: DATAGRAM_PACKET
			i: INTEGER
		do
			io.put_string ("In SERVER_DATAGRAM_WRITER:execute%N")

				-- Make packet with 10 characters `a' in successive positions
			create sen_pack.make (10)
			from i := 0 until i > 9 loop
				sen_pack.put_element ('a', i)
				i := i + 1
			end
			sen_pack.set_packet_number (2)
			active_medium.send (sen_pack, 0)
		end

end
