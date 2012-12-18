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

	board: DO_BOARD

	plays: LINKED_LIST[STRING]

feature {ANY}

	soc1: NETWORK_STREAM_SOCKET
	sockets: LINKED_LIST[TUPLE[STRING,NETWORK_STREAM_SOCKET]]

	make(port: INTEGER; game: DO_GAME; settings: DO_SETTINGS; players: INTEGER; player_name: STRING)
		-- Accept communication with client and exchange messages
		require
			port <4000 and port>=2000 and game/=Void
		local
			connections: INTEGER
		do
			state := game
			game_settings:=settings
			server_name:= player_name
			create soc1.make_server_by_port (port)
			create sockets.make
			max_players := players-1
			connections:=0
			soc1.listen (max_players)
			from

			until
				connections = max_players
			loop
				connection(connections)
				connections := connections + 1
			end

			connected:=True
		rescue
            if soc1 /= Void then
                soc1.cleanup
                connected:=False
            end
        end

feature --set the main board

	set_board(b: DO_BOARD)
		do
			board:=b
		end

feature	--internal use, initialization, listen...

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
                end
            end
        end

	notify(msg: DO_OUR_MESSAGE): LINKED_LIST[STRING]
		local
			socket: NETWORK_STREAM_SOCKET
			play: LINKED_LIST[STRING]
			card: STRING
			phase: STRING
		do
			create play.make
			from
				sockets.start
			until
				sockets.off
			loop
				if attached {NETWORK_STREAM_SOCKET} sockets.item.item(2) as sock  then
					socket:=sock
				end
				socket.independent_store (msg)
				if not msg.is_empty then
					if msg.first.is_equal ("status") then
						if attached {DO_OUR_MESSAGE} retrieved (soc1) as response then
							if response.first.is_equal ("yes") then
								board.on_lose
							elseif response.first.is_equal ("no") then
								board.on_win
							else
								board.on_tie
							end
						end
					end
				end
				sockets.forth
			end
			from
				msg.start
			until
				msg.off
			loop
				if not msg.item.is_equal ("status") then
					phase := msg.item.substring (msg.item.index_of ('-', 1)+1,msg.item.index_of ('-', 1)+1 )
					if (phase.is_equal ("p")) then
						phase:="play"
					elseif (phase.is_equal ("b")) then
						phase:="buy"
					elseif (phase.is_equal ("c")) then
						phase:="clean"
					else
						phase:=msg.item
					end
					if not msg.item.at (msg.item.count).is_equal ('.') then
						if (phase=msg.item) then
							board.message_log.append (phase)
						else
							card:=msg.item.substring (msg.item.index_of ('_', 1)+1, msg.item.count)
							board.message_log.append (phase+"ed cards:%N")
							board.message_log.append (card + "%N")
							play.extend (msg.item)
						end
					end
					board.refresh_log_text
				end
				msg.forth
				Result:=play
			end
		end

	others_turn
		local
			socket: NETWORK_STREAM_SOCKET
			name: STRING
			playing: DO_OUR_MESSAGE
		do
			create plays.make
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
				plays:=notify(playing)
				listen(socket)
			end

		end

	listen(socket: NETWORK_STREAM_SOCKET)
		local
			vp: STRING
		do
			create plays.make
			from

			until
				turn
			loop
				if attached {DO_OUR_MESSAGE} retrieved (socket) as new_msg then
					if not new_msg.is_empty then
						if new_msg.first.is_equal ("turn is over") then
							turn:=True
							new_msg.wipe_out
							new_msg.extend (server_name + " playing...%N")
						elseif new_msg.first.is_equal ("status") then
							vp:=board.game_reference.get_winner
							new_msg.wipe_out
							new_msg.extend (vp)
						end
					end
					plays:=notify(new_msg)
       	    	end
			end
			board.recieve_turn(plays)
		end

	ask_win(msg: DO_OUR_MESSAGE): STRING
		local
			my_vp: INTEGER
			yours_vp: INTEGER
			won: STRING
		do
			msg.independent_store (soc1)
			if attached {DO_OUR_MESSAGE} retrieved (soc1) as new_msg then
				msg.start
				my_vp:=msg.item.to_integer
				new_msg.start
				yours_vp:=new_msg.item.to_integer
				if my_vp>yours_vp then
					won:="yes"
				elseif my_vp>yours_vp then
					won:="tie"
				else
					won:="no"
				end
				new_msg.wipe_out
				new_msg.extend (won)
				new_msg.independent_store (soc1)
			end
			Result:=won
		end

feature	--external use

	append(msg: DO_OUR_MESSAGE)
		local
			play: LINKED_LIST[STRING]
		do
			create plays.make
			play:=notify(msg)
		end

	turn_is_over
		do
			turn:=False
			others_turn
		end

end
