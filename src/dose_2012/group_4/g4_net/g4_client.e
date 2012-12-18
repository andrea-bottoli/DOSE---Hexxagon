note
	description: "Network client used to send messages. Based in G1 and G10 network codes."
	author: "Group 4 Brazil team"
	date: "$Date$"
	revision: "$Revision$"

class
	G4_CLIENT

inherit
	SOCKET_RESOURCES
	SED_STORABLE_FACILITIES

-- Same trick used by group 10. When creating the object it directly connects to the server :)
create
	connect

feature

	-- create and connect sockect to the server
	connect(ip : STRING port : INTEGER playerID : STRING )
	do
		clientID := playerID
		create socket.make_client_by_port (port, ip)
		socket.connect
		socket.independent_store (clientID + "|SYN")
	end

	-- release socket
	release()
	do
		socket.independent_store (clientID + "|FIN")
		socket.cleanup
		socket.close
	end

	receive() : STRING
	do
		Result := ""
		if socket.ready_for_reading = true
		then
      		if attached {STRING} socket.retrieved as data
      		then
      			Result := data
      		end
		end

		-- TODO: the game logic get the string and parse it as it desires
	end

	send(data: STRING )
	do
		socket.independent_store (data)
	end



feature{NONE}
	socket : NETWORK_STREAM_SOCKET
	clientID : STRING
end
