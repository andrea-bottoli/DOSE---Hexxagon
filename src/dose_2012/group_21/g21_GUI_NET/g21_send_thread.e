note
	description: "Summary description for {G21_SEND_THREAD}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	G21_SEND_THREAD
inherit
	THREAD
	rename make as thread_make end

create
	make

feature {G21_NET}
	make(msg_a : CHARACTER[]; socket : NETWORK_STREAM_SOCKET)
		do
			thread_make
			msg := msg_a
		end

	execute
	do
		from
			i := 1
		until
			msg.next = '%U'
		loop
			packet_out.put_element (msg, i)
		end

		--socket. write(packet_out)
	end

feature {G21_SEND_THREAD}
		msg : CHARACTER[]
		packet_out : PACKET
		i: INTEGER
end
