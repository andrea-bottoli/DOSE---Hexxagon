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

   	DO_INTERFACE_NAMES
	export
		{NONE} all
	undefine
		default_create,
		copy
	end

create
    make

feature --status

	state: DO_GAME

	connected: BOOLEAN
		--is the connection established?

	turn: BOOLEAN
		--is players turn?

	player: INTEGER = 0

	max_players: INTEGER

	game_settings: DO_SETTINGS

	server_name: STRING

feature {ANY}

	soc1: NETWORK_STREAM_SOCKET
	sockets: LINKED_LIST[TUPLE[STRING,NETWORK_STREAM_SOCKET]]

	make(port: INTEGER; game: DO_GAME; settings: DO_SETTINGS; players: INTEGER; player_name: STRING)
		-- Accept communication with client and exchange messages
		require
			port <4000 and port>=2000 and game/=Void
		local
			connections: INTEGER
			connections_left: INTEGER
			message: DO_OUR_MESSAGE
			msg: STRING
			show_waiting: BOOLEAN
		do
			state := game
			game_settings:=settings
			server_name:= player_name
			create soc1.make_server_by_port (port)
			create sockets.make
			max_players := players-1
			connections:=0
			soc1.listen (max_players)
			show_waiting:= True
			from

			until
				connections = max_players
			loop
				connections_left := max_players-connections
				msg :="Waiting for other " + connections_left.out + " players"
				create message.make
				message.extend (msg)
				notify_windows(msg)
				notify(message)
				-- no funciona correctamente preguntar al naza
				--print(msg)		
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


	notify_windows (messaje: STRING)
		local
			windows_messajes: USER_INFO_DIALOG
			image_path: STRING
		once
			create image_path.make_from_string (Files_path+"wallpapers/waiting.png")
			create windows_messajes.make (image_path, "WAITING", messaje)
			--windows_messajes.show_modal_to_window (current)
			windows_messajes.show
		end

    connection(player_nmb: INTEGER)
            -- Receive a message, extend it, and send it back
        require
        	soc1/=Void
        local
        	name: STRING
        	tuple: TUPLE[STRING,NETWORK_STREAM_SOCKET]
        do
            soc1.accept
            if attached soc1.accepted as l_soc2 then
                if attached {DO_OUR_MESSAGE} retrieved (l_soc2) as new_msg then
                  	new_msg.start
                  	name:=new_msg.item
                  	create tuple.default_create
                  	tuple.put (name, 1)
                  	tuple.put (l_soc2, 2)
                  	sockets.extend (tuple)
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
				sockets.off
			loop
				if attached {NETWORK_STREAM_SOCKET} sockets.item.item(2) as sock  then
					socket:=sock
				end
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
			name: STRING
			playing: DO_OUR_MESSAGE
		do
			from
				sockets.start
			until
				sockets.after
			loop
				if attached {NETWORK_STREAM_SOCKET} sockets.item.item(2) as sock  then
					socket:=sock
				end
				if attached {STRING} sockets.item.item(1) as conn_name  then
					name:= conn_name
				end
				create playing.make
				playing.extend (name + " playing...%N")
				notify(playing)
				listen(socket)
				--sockets.forth
			end

		end

	listen(socket: NETWORK_STREAM_SOCKET)
		do
				if attached {DO_OUR_MESSAGE} retrieved (socket) as new_msg then
					notify(new_msg)
	       	    end
		end

	append(msg: DO_OUR_MESSAGE)
		do
			notify(msg)
			turn:=False
			others_turn
		end
end
