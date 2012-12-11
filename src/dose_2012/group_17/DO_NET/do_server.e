note
	description: "Server conexion for a multiplayer game."
	author: "Rio Cuarto9"
	date: "07/11/12"
	revision: "0.0"

class
	DO_SERVER

inherit

    SOCKET_RESOURCES

    STORABLE

create
    make

feature --status

	state: DO_GAME

	connected: BOOLEAN
		--is the connection established?

	player: INTEGER = 0

	max_players: INTEGER

	game_settings: DO_SETTINGS

feature {ANY}

	soc1: NETWORK_STREAM_SOCKET
	sockets: LINKED_LIST[NETWORK_STREAM_SOCKET]

	make(port: INTEGER; game: DO_GAME; settings: DO_SETTINGS)
		-- Accept communication with client and exchange messages
		require
			port <4000 and port>=2000 and game/=Void
		local
			connections: INTEGER
			connections_left: INTEGER
			message: DO_OUR_MESSAGE
		do
			state := game
			game_settings:=settings
			create soc1.make_server_by_port (port)
			create sockets.make
			max_players := 1
			connections:=0
			soc1.listen (max_players)	--ver de despues ponerle mas jugadores o permitir elegir la cantidad
			from

			until
				connections = max_players	--lo mismo q en el listen del socket
			loop
				connections_left := max_players-connections
				print("Waiting for other " + connections_left.out + " players%N")
				connection(connections)
				connections := connections + 1
			end

			connected:=True
			create message.make
			message.extend ("Every Player is connected%N")
			notify(message)
			others_turn
		rescue
            if soc1 /= Void then
                soc1.cleanup
                connected:=False
            end
        end

	getInfo
		do

		end

	sendInfo
		do

		end

    connection(player_nmb: INTEGER)
            -- Receive a message, extend it, and send it back
        require
        	soc1/=Void
        do
            soc1.accept
            if attached soc1.accepted as l_soc2 then
            	sockets.extend (l_soc2)
                if attached {DO_OUR_MESSAGE} retrieved (l_soc2) as new_msg then
                  	new_msg.extend ("You are now connected to the game !!%N")
                    new_msg.independent_store (l_soc2)
                end
            end
        end

	notify(msg: DO_OUR_MESSAGE)
		local
			socket: NETWORK_STREAM_SOCKET
		do
			from
				sockets.start
			until
				sockets.after
			loop
				socket:= sockets.item
				socket.independent_store (msg)
				sockets.forth
			end
			from
				msg.start
			until
				msg.after
			loop
				io.putstring (msg.item)
				msg.forth
			end
		end

	others_turn
		do
			from
				sockets.start
			until
				sockets.after
			loop
				print(sockets.item.address.host_address.ipv4.out + " playing...%N")
				listen(sockets.item)
				--sockets.forth
			end

		end

	listen(socket: NETWORK_STREAM_SOCKET)
		do
			if attached {DO_OUR_MESSAGE} retrieved (socket) as new_msg then
--				process(new_msg)
				print(new_msg.after.out)
				from
					new_msg.start
				until
					new_msg.after
				loop
					io.putstring (new_msg.item)
					new_msg.forth
				end
				new_msg.extend("%Nrecived%N")
				notify(new_msg)
            end
		end

	process(msg: DO_OUR_MESSAGE)
		local
			new_state: DO_GAME
		do
			new_state := state.notifygamestate (msg)
		end

	append(msg: DO_OUR_MESSAGE)
		do
			notify(msg)
			others_turn
		end
end
