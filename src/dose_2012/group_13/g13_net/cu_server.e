note
	description: "Summary description for {CU_SERVER}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	CU_SERVER

inherit

    SOCKET_RESOURCES

    STORABLE

create
    make

feature --status

	connected: BOOLEAN
		--is the connection established?

	turn: BOOLEAN
		--is players turn?

	player: INTEGER = 0

	max_players: INTEGER

feature {ANY}

	soc1: NETWORK_STREAM_SOCKET
	sockets: LINKED_LIST[NETWORK_STREAM_SOCKET]

	make(port: INTEGER; players: INTEGER)
		-- Accept communication with client and exchange messages
		require
			port <=4000 and port>=2000-- and game/=Void
		local
			connections: INTEGER
			connections_left: INTEGER
			message: CU_NET_MESSAGE
			msg: STRING
		do
			create soc1.make_server_by_port (port)
			create sockets.make
			max_players := players-1
			connections:=0
			soc1.listen (max_players)
			from

			until
				connections = max_players
			loop
				connections_left := max_players-connections
				msg :="Waiting for " + connections_left.out + " players%N"
				create message.make
				message.extend (msg)
				notify(message)
				connection(connections)
				connections := connections + 1
			end

			connected:=True
			create message.make
			message.extend ("Every Player is connected%N")
			notify(message)
		rescue
            if soc1 /= Void then
                soc1.cleanup
                connected:=False
            end
        end

    connection(player_nmb: INTEGER)
            -- Receive a message, extend it, and send it back
        require
        	soc1/=Void
        do
            soc1.accept
            if attached soc1.accepted as l_soc2 then
            	sockets.extend (l_soc2)
                if attached {CU_NET_MESSAGE} retrieved (l_soc2) as new_msg then
                  	new_msg.extend ("You are connected now%N")
                    new_msg.independent_store (l_soc2)
                end
            end
        end

	notify(msg: CU_NET_MESSAGE)
		local
			socket: NETWORK_STREAM_SOCKET
		do
			from
				sockets.start
			until
				sockets.off
			loop
				socket:= sockets.item
				socket.independent_store (msg)
				sockets.forth
			end
			from
				msg.start
			until
				msg.off
			loop
				io.putstring (msg.item)
				io.new_line
				msg.forth
			end
		end

	others_turn
		local
			socket: NETWORK_STREAM_SOCKET
		do
			from
				sockets.start
			until
				sockets.after
			loop
				socket:=sockets.item
				print(socket.address.host_address.ipv4.out + " playing...%N")
				listen(socket)
--				sockets.forth
			end

		end

	listen(socket: NETWORK_STREAM_SOCKET)
		do
				if attached {CU_NET_MESSAGE} retrieved (socket) as new_msg then
					notify(new_msg)
	       	    end
		end

	append(msg: CU_NET_MESSAGE)
		do
			notify(msg)
			turn:=False
			others_turn
		end
end
