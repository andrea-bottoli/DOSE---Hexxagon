note
	description: "Summary description for {G4_SERVER}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	G4_SERVER

inherit
	SOCKET_RESOURCES
	SED_STORABLE_FACILITIES

create
	make

feature
	make(port : STRING)
	do
			create clients.make(8)
			create socket.make_server_by_port (1337)
	end

	-- add client to servers list
	addClient (s : NETWORK_STREAM_SOCKET)
	do
		clients.put_front (s)
	end

	-- remove client form servers list
	removeClient (s : NETWORK_STREAM_SOCKET)
	do
		clients.prune_all (s)
	end

	release()
	do
		broadcats("Server going down folks!")
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

		-- TODO: the game logic get the string and parse it. Deciding if it wants to filter it or call the broadcast on the server
	end

	-- send msg to all connected clients. THis way the server can recieve a msg and re-pass it to all clients
	broadcats(data : STRING)
	local
		nClient : INTEGER
	do
		from
			nClient := 1
		until
			nClient > clients.count
		loop
			if clients.at (nClient) /= void then -- as group 10 did, we have to check for voids O.o
				clients.at (nClient).independent_store (data)
			end
		end
	end

feature{NONE}
	clients : ARRAYED_LIST[NETWORK_STREAM_SOCKET] -- just the sockets of each client
	socket : NETWORK_STREAM_SOCKET
end
