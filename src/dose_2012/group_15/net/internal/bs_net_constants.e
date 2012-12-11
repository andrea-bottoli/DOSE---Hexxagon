note
	description: "Summary description for {BS_NET_CONSTANTS}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

deferred class
	BS_NET_CONSTANTS

feature

	socket_accept_timeout_millis : INTEGER
	once
		result := 10000 -- 3600000; -- One hour
	end

	socket_timeout_secs : INTEGER -- Testing has shown that this parameter is in fact ignored
	once
		result := 100
	end

	socket_pending_connections : INTEGER
	once
		result := 4
	end



end
