note
	description : "Client conexion for the Dominion"
	date        : "13/11/12"
	revision    : "0.0"

class
    DO_CLIENT

inherit

    SOCKET_RESOURCES

    STORABLE

create
    make

feature

	soc1: detachable NETWORK_STREAM_SOCKET

    make(master_server: STRING; master_port: INTEGER; player_name: STRING)
    	--create a new client
		local
			message: DO_OUR_MESSAGE
		do
			create soc1.make_client_by_port (master_port, master_server)
			soc1.connect
			create message.make
			client_name:=player_name
			message.extend (player_name)
			message.independent_store (soc1)
			connected:=True
		rescue
			if soc1 /= Void then
				soc1.cleanup
				connected:= False
			end
		end

feature --process the information

    process(msg: DO_OUR_MESSAGE)
        require
        	soc1/=Void
        local
        	phase: STRING
        	card: STRING
        	plays: LINKED_LIST[STRING]
		do
			create plays.make
			msg.independent_store (soc1)
			if attached {DO_OUR_MESSAGE} retrieved (soc1) as new_msg then
				from
					new_msg.start
				until
					new_msg.off
				loop
					phase := new_msg.item.substring (new_msg.item.index_of ('-', 1)+1,new_msg.item.index_of ('-', 1)+1)
					if (phase.is_equal ("p")) then
						phase:="play"
					elseif (phase.is_equal ("b")) then
						phase:="buy"
					elseif (phase.is_equal ("c")) then
						phase:="clean"
					else
						phase:= new_msg.item
					end
					if not new_msg.item.at (new_msg.item.count).is_equal ('.') then
						if (phase=new_msg.item) then
							board.message_log.append (phase)
						else
							card:=new_msg.item.substring (new_msg.item.index_of ('_',1)+1, new_msg.item.count)
							board.message_log.append (phase+"ed cards:%N")
							board.message_log.append (card + "%N")
							plays.extend (new_msg.item)
						end
					board.refresh_log_text
					end
					new_msg.forth
				end
			end
		end

	listen
		local
			card: STRING
			phase: STRING
			plays: LINKED_LIST[STRING]
			vp: STRING
		do
			from

			until
				turn
			loop
				if attached {DO_OUR_MESSAGE} retrieved (soc1) as new_msg then
					create plays.make
					from
						new_msg.start
					until
						new_msg.off
					loop
						if (new_msg.item.is_equal (client_name + " playing...%N")) then
							turn:=True
						elseif new_msg.item.is_equal ("status")	then
							vp:=board.game_reference.get_winner
							new_msg.wipe_out
							new_msg.extend (vp)
							new_msg.independent_store (soc1)
							if attached {DO_OUR_MESSAGE} retrieved (soc1) as response then
								if response.first.is_equal ("yes") then
									board.on_lose
								elseif response.first.is_equal ("no") then
									board.on_win
								else
									board.on_tie
								end
								turn:=True
							end
						else
							phase := new_msg.item.substring (new_msg.item.index_of ('-', 1)+1,new_msg.item.index_of ('-', 1)+1)
							if (phase.is_equal ("p")) then
								phase:="play"
							elseif (phase.is_equal ("b")) then
								phase:="buy"
							elseif (phase.is_equal ("c")) then
								phase:="clean"
							else
								phase:= new_msg.item
							end
							if (phase=new_msg.item) then
								board.message_log.append (phase)
							else
								card:=new_msg.item.substring (new_msg.item.index_of ('_',1)+1, new_msg.item.count)
								board.message_log.append (phase+"ed cards:%N")
								board.message_log.append (card + "%N")
								plays.extend (new_msg.item)
							end
							board.refresh_log_text
						end
						new_msg.forth
					end
				end
			end
			board.recieve_turn(plays)
		end

feature

	connected: BOOLEAN
		--is the connection established?

	ip: STRING
		--ip of the master server

	turn: BOOLEAN
		--is the players turn?

	client_name: STRING

	board: DO_BOARD
		--reference to the main board

feature --set the main board

	set_board(b: DO_BOARD)
		do
			board:=b
		end

feature {ANY}

	append(msg: DO_OUR_MESSAGE)
		require
			msg /= Void
		do
			process(msg)
		end

	turn_is_over
		local
			msg: DO_OUR_MESSAGE
		do
			create msg.make
			msg.extend ("turn is over")
			turn:=False
			msg.independent_store (soc1)
			listen
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

end
