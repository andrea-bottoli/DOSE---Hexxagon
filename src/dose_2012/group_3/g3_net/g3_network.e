note
	description: "Server and Client for Tichu"
	author: "LYDATAKIS KATEROS GEORGIOU"
	date: "Some Date"
	revision: "1.0"

class
	G3_NETWORK
	inherit
		SED_STORABLE_FACILITIES
		SOCKET_RESOURCES
    --	STORABLE
		G3_INETWORK
			export
				{NONE} controller
			end


create
	make

feature{NONE}

	ip_list:LINKED_LIST[INTEGER]

	server_soc :NETWORK_STREAM_SOCKET

	socs: LINKED_LIST[NETWORK_STREAM_SOCKET]

	portId: INTEGER = 2740

	connectionStart: BOOLEAN

	connectionFinish: BOOLEAN

	server:BOOLEAN



feature{ANY} -- Initialization
	make(is_Server: BOOLEAN)
	local
		do
			server:=is_Server
			-- if TRUE run_server_mode()
			if is_Server then
				create socs.make
			end
		end


feature{ANY} -- Server

	run_server_mode 	-- set the component ready to receive conections
	local
		med: SED_MEDIUM_READER_WRITER
		do

			make(true)
			create socs.make
			create server_soc.make_server_by_port (portId)
			server_soc.listen (3) --listen to 3 clients
			from

			until
				socs.count=3
			loop

				server_soc.accept
				io.putstring ("connected")
				socs.extend (server_soc.accepted)
				create med.make (server_soc.accepted)
				med.set_for_reading
				if attached {G3_MESSAGE} retrieved(med,true) as mess then
					med.set_for_writing
					store (controller.register_players (mess),med)
				end
				--send the player to logic
			end
		end

	send_to_client (message : G3_MESSAGE) -- send message to registered client
		do
			from
				socs.start
			until
				socs.off
			loop
				socs.item.independent_store (message)
				socs.forth
			end
		end

	receiveMessage_from_client

		do
			if attached {G3_MESSAGE} server_soc.retrieved as msg then
				--send message to logic
			end
		end

feature{ANY} -- Client

	connect (ip : STRING ; message : G3_MESSAGE) : G3_MESSAGE -- this feature shall be called by client controller to register on the remote game
	local

		med: SED_MEDIUM_READER_WRITER
		do

			make(false)
		--	if not server then
				create server_soc.make_client_by_port (portId,ip)
				server_soc.connect
				create med.make (server_soc)
				med.set_for_writing
				store (message,med)
				--create mess.make_with_parameters (receiver, sender: [detachable] G3_PLAYER_ID)
		--	end
		med.set_for_reading
			if attached {G3_MESSAGE} retrieved(med,True) as msg then
				Result:=msg
			end
			med.set_for_writing

			if not server_soc.is_connected then
				io.putstring ("asdasdas")
				Result:=void
			end
		end

	send_to_server (message : G3_MESSAGE) -- send message to server controller registered after invoking feature connect
		do
			server_soc.independent_store (message)
		end

	receiveMessage_from_server
		do
			if attached {G3_MESSAGE} server_soc.retrieved as msg then
				--send message to logic
			end
		end

feature{ANY} -- Start and Finish the game

	startGame(port: INTEGER)
		require
			connect: connectionStart = FALSE
			gamePort: port > 0
		do
		ensure
			connect: connectionStart = TRUE
		end

	finishGame()
		require
			connect: connectionStart = TRUE
			connect2: connectionFinish = FALSE
		do
		ensure
			connect: connectionStart = FALSE
			connect2: connectionFinish = TRUE
		end

end
