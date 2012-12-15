note
	description : "TripleTriad application root class"
	date        : "$Date$"
	revision    : "$Revision$"

class
	G21_NET

inherit
	ARGUMENTS
	SOCKET_RESOURCES
	THREAD_CONTROL

create
	newServer,
	newClient

feature
	-- Attributes
	msgListener: ARRAYED_LIST[G21_MSG_LISTENER]
	notifyListener: ARRAYED_LIST[G21_NOTIFYLISTENER]
	net_in: CHARACTER[]
	net_out: CHARACTER[]
	packet_out : PACKET
	packet_in : PACKET
	port: INTEGER
	IP: STRING
	socket : NETWORK_STREAM_SOCKET

feature
	-- Constructor for server
	newServer(a_port:INTEGER)
		require
			a_port > 0
			a_port < 65535
		do
			socket.make_server_by_port(a_port)
			socket.listen(1)
			socket.accept
		ensure
			net_in /= '%U'
			net_out /= '%U'
		end

	--Constructor for client
	newClient(a_IP:STRING;a_port:INTEGER)
		require
			a_port > 0
			a_port < 65535
			a_IP /= ""
		do
			socket.make_client_by_port(a_port, a_IP)
			socket.connect
		ensure
			port > 0
			port < 65535
			IP /= Void
			net_in /= '%U'
			net_out /= '%U'
		end

	send2Net(msg_a : CHARACTER[])
		require
			msg_a /= '%U'
		local
			send : G21_SEND_THREAD
		do
			create send.make(msg_a, socket)
			send.launch
		end

	addMsgListener(listener : G21_MSG_LISTENER)
		require
			msgListener /= Void
			listener /= Void
		local
			receive : G21_RECEIVE_THREAD
		do
			msgListener.force(listener)
			create receive.make(socket, listener)
			receive.launch
		ensure
			 msgListener.has(listener)
		end

	addNotifyListener(listener : G21_NOTIFYLISTENER)
		require
			notifyListener /= Void
			listener /= Void
		do
			notifyListener.force(listener)
		ensure
			notifyListener.has(listener)
		end

	terminateConnection
		do
			socket.close
			net_in := '%U'
			net_out := '%U'
		ensure
			net_in = '%U'
			net_out = '%U'
		end

feature {G21_NET}
--	receive():CHARACTER[]
--		require
--			net_in.item /= '%U'
--		do
--			net_in.make_empty
--			packet_in.copy(socket.read(65535))
--			from
--				i := 0
--			until
--				i = packet_in.count
--			loop
--				net_in.force(i) := packet_in.element(i)
--			end
--			Result net_in
--		ensure
--			Result /= '%U'
--		end

	ckeckConnection(): BOOLEAN
		require
			net_in.item /= '%U'
			net_out.item /= '%U'
		do

		end

	reconnect(): BOOLEAN
		require
			port >= 0
			IP /= Void
		do

		end

	notifyError(error_a : STRING)
		require
			error /= Void
		local
			i : INTEGER
		do
			from
				i := 0
			until
				i = notifyListener.count
			loop
				notifyListener.at(i).errorMessage(error_a)
			end
		end

	notifyMsg(msg_a : STRING_8)
		require
			msg_a /= Void
		local
			i : INTEGER
		do
			from
				i := 0
			until
				i = notifyListener.count
			loop
				notifyListener.at(i).message(msg_a)
			end
		end

end

