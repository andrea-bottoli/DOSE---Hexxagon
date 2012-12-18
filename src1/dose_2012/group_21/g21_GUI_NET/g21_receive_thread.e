note
	description: "Summary description for {G21_RECEIVE_THREAD}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	G21_RECEIVE_THREAD

inherit
	THREAD
	rename make as thread_make end

create
	make

feature {G21_NET}
	make(socket_a : NETWORK_STREAM_SOCKET; listener_a: G21_MSG_LISTENER)
		do
			thread_make
			socket := 	socket_a
			listener := listener_a
		end

	execute
		local
			active : BOOLEAN
			i : INTEGER
		do
			active := true
			from
				active := true
			until
				active = false
			loop

				--net_in := '%U'
				packet_in.copy(socket.read(65535))
				net_in.make_filled(packet_in.element(i),1,packet_in.count)

				--	from
				--		i := 0
				--	until
				--		i = packet_in.count
				--	loop
				--		net_in.make_filled(packet_in.element(i),1,packet_in.count)
				--		net_in.forth
				--	end

				listener.messageReceived(net_in)
			end
		end

feature {NONE}
		net_in : ARRAY[CHARACTER]
		packet_in : PACKET
		listener : G21_MSG_LISTENER
		socket : NETWORK_STREAM_SOCKET
end
