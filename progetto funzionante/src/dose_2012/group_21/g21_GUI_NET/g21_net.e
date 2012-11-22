note
	description : "TripleTriad application root class"
	date        : "$Date$"
	revision    : "$Revision$"

class
	G21_NET

inherit
	ARGUMENTS

create
	newServer,
	newClient
feature
	-- Attributes
	msgListener: ARRAYED_LIST[G21_MSGLISTENER]
	notifyListener: ARRAYED_LIST[G21_NOTIFYLISTENER]
	net_in: CHARACTER[]
	net_out: CHARACTER[]
	port: INTEGER
	IP: STRING

feature
	-- Constructor for server
	newServer(a_port:INTEGER)
		require
			a_port > 0
			a_port < 65535
		do

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
		do

		end

	addMsgListener(listener : G21_MSGLISTENER)
		require
			msgListener /= Void
			listener /= Void
		do

		ensure
			 msgListener.has(listener)
		end

	addNotifyListener(listener : G21_NOTIFYLISTENER)
		require
			notifyListener /= Void
			listener /= Void
		do

		ensure
			notifyListener.has(listener)
		end

	terminateConnection
		do

		ensure
			net_in = '%U'
			net_out = '%U'
		end

feature {G21_NET}
	receive():CHARACTER[]
		require
			net_in.item /= '%U'
		do

		ensure
			Result /= '%U'
		end

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

	notifyError(error : STRING)
		require
			error /= Void
		do

		end

	notifyMsg(msg_a : CHARACTER[])
		require
			msg_a.item /= '%U'
		do

		end

end
