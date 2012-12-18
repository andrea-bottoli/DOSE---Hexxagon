note
	description: "Summary description for {G1_NET_SERVER_LISTENING}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	G1_NET_SERVER_LISTENING
inherit
	THREAD
	rename
		make as make_thread
	end
	SED_STORABLE_FACILITIES
	SOCKET_RESOURCES

create
	make

feature
	l_server: G1_NET_SERVER_SINGLE
	l_logic_server: G1_LOGIC_SERVER
	l_medium: SED_MEDIUM_READER_WRITER

	make(server: G1_NET_SERVER_SINGLE; logic_server:G1_LOGIC_SERVER; medium:SED_MEDIUM_READER_WRITER)
	do
		make_thread
		l_server := server
		l_logic_server := logic_server
		l_medium := medium
	end

	execute
		do
			l_medium.set_for_reading
			if attached {G1_MESSAGE} retrieved (l_medium, True) as message then
					l_logic_server.receive_message (message)
			end
		end
end
