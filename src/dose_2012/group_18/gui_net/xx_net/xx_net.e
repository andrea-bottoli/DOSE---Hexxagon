note
	description: "Class that implements net manager"
	author: "Team Milano2"
	date: "9-12-2012"
	revision: "1.2"

class
	XX_NET

inherit
	INET_ADDRESS_FACTORY
    INET_PROPERTIES
	XX_INET
	XX_CHAT_TO_NET_INTERFACE
	XX_IP_VALIDATOR

create
	make,
	make_logic

feature{NONE}	--Attribute
	chat_manager: XX_CHAT
	logic_interface: XX_ILOGIC
	socket,socket2: NETWORK_STREAM_SOCKET
	listening,chat_ok: BOOLEAN
	ip_reci:STRING
	server_port: INTEGER
    server_ip: INET_ADDRESS -- This is the net address where server player is placed


feature {NONE} -- Constructors

	-- Initialization for "Current".
	make
	do
		listening:=false	--TODO
--		chat_
	end

	make_logic(a_logic: XX_ILOGIC)
	do
		default_create
		set_ilogic(a_logic)
	end

feature{NONE} --Initialization

	set_ilogic(a_logic: XX_ILOGIC)
	require
		logic_not_void: a_logic/=Void
	do
		logic_interface:=a_logic
	end

--######################################################################################
feature	-- PUBLIC Methods inherited from XX_INET

	--Client has to call this method in order to has the parameters of the server setted up.
	init_connection(a_ip: STRING; a_port: INTEGER)

		local
			l_ip: detachable INET_ADDRESS
		do
			l_ip:=create_from_name(a_ip)
			server_ip:= l_ip
			server_port:= a_port
		end

	--Is going to be initialized a listener on a_port in order to receive all the request on it.
	init_listener(a_port: INTEGER)
	do
		create socket.make_server_by_port (a_port)
		listening:=TRUE -- from now, a_port is listening
		io.put_string ("Server is up NOW! %N")
			from
				socket.listen(3)
			until
				not listening -- until now, the only who can stop it is close_connection
			loop
				receive_soc(socket)

			end
			io.put_string ("Connection is ended")
			socket.cleanup

	end


	--This method permits to close an open connection
	close_connection
	do
		listening:= FALSE
	end

	-- This method sends the command that takes the game at the initial condition
	send_command_clean_game_window
	do
		send("clean")
	end

	-- This method permits to send the command that switches from menu panel to game panel
	send_command_switch_panel_menu_to_game
	do
		send("switch_menu_to_game")
	end

	--This method permits to send the command that switches from game panel to menu panel
	send_command_switch_panel_game_to_menu
	do
		send("switch_game_to_menu")
	end

	-- This method permits to send the board of the game
	send_board(a_board: XX_BOARD)
	do
		send(a_board)
	end

	-- This method permits to send the cell
	send_cell(a_cell: XX_CELL)
	do
		send(a_cell)
	end

	-- This method permits to send the game status
	send_game_status(a_player1, a_player2: XX_PLAYER;active:BOOLEAN)
	local
		l_pl1,l_pl2:XX_PLAYER
		is_active:BOOLEAN
		l_status: XX_NET_GAME_STATUS
	do
		is_active:=active
		l_pl1:=a_player1
		l_pl2:=a_player2
		create l_status.make (l_pl1,l_pl2,is_active)
		send(l_status)
	end

	-- This method permits to send the command that enables the chat
	send_chat_enable(a_condition: BOOLEAN)
	do
		if(a_condition) then
			send("chat_enable")
		elseif(not a_condition) then
			send("chat_disable")
		end
	end

	-- This method permits to send the timer
	send_timer(a_timer: XX_TIMER)
	do
		send(a_timer)
	end

	--This method permits to send the victory status
	send_victory
	do
		send("victory")
	end

	--This method permits to send the victory status
	send_defeated
	do
		send("defeat")
	end

	--This method permits to send the draw status
	send_draw_status
	do
		send("draw")
	end

	--useless method
	other_move
	do
	-- HARIS PLEASE KILL ME. I'M USELESS BUT I HAVE TO EXIST BECAUSE I'M PART OF ILOGIC.
	end

--######################################################################################
feature{NONE} --Private Method Inherited from XX_INET

	--Check if an address is valid
	is_address_valid(a_ip: STRING a_port: INTEGER):BOOLEAN
	do
		if(is_ip_valid(a_ip) and is_port_valid(a_port))then
			Result:=TRUE
		else
			Result:=FALSE
		end
	end

	--Checks if a port is valid
	is_port_valid(a_port: INTEGER):BOOLEAN
	do
		if(a_port>1024 and a_port<65536)then
			Result:=TRUE
		else
			Result:= FALSE
		end
	end

	--Checks if the listener is initialized
	is_listener_initialized:BOOLEAN
	do
		if listening  then
			result:= TRUE
		else
			result:= FALSE
		end
	end

--######################################################################################
feature --PUBLIC Methods inherited from XX_CHAT_TO_NET_INTERFACE

	--Allow to send a new chat message throught the net to the other host
	send_chat_message(a_chat_message: STRING)
	local
		message:STRING
	do
		message:= prepare_to_chat(a_chat_message)
		send(message)
	end
	--Allow to set the chat manager
	set_chat_manager(a_chat_manager: XX_CHAT)
	do
		chat_manager:=a_chat_manager
		chat_ok:=TRUE
	end

--######################################################################################
feature{NONE} --Private Method Inherited from XX_CHAT_TO_NET_INTERFACE

	--Checks if the message is Void
	is_chat_message_void(a_chat_message: STRING):BOOLEAN
	do
		if(a_chat_message=Void)then
			Result:=TRUE
		else
			Result:=FALSE
		end
	end

	--Checks if the message is empty
	is_chat_message_empty(a_chat_message: STRING):BOOLEAN
	do
		if(a_chat_message.is_empty)then
			Result:=TRUE
		else
			Result:=FALSE
		end
	end

	--Checks if the chat manager is setted
	is_chat_manager_setted:BOOLEAN
	do
		if(chat_ok)then
			Result:=TRUE
		else
			Result:=FALSE
		end
	end

--######################################################################################
feature{NONE}	--PRIVATE Methods of XX_NET (DDD)

	prepare_to_chat(a_str:STRING) :STRING
	local
		l_str:STRING
	do
		l_str:=a_str
		l_str.prepend ("@")
		result:=l_str
	end


	send(obj:ANY) -- send from client to server
	local
			l_med:SED_MEDIUM_READER_WRITER
		do
			create socket.make_client_by_address_and_port (server_ip,server_port)
	        socket.connect
	        create l_med.make (socket)
	        l_med.set_for_writing
	        store(obj,l_med)
		    socket.cleanup
		end

	tell(obj:ANY) -- respond from server sending something to client
	local
			l_ip:INET_ADDRESS
			l_med:SED_MEDIUM_READER_WRITER
		do
			l_ip:= create_from_name(ip_reci)
			create socket2.make_client_by_address_and_port (l_ip,server_port)
			socket2.connect
			create l_med.make (socket2)
	        l_med.set_for_writing
            store(obj,l_med)
			socket2.cleanup
	   	end
--	receive a connection
	receive_soc(a_soc :NETWORK_STREAM_SOCKET)
	require
        	a_soc /= void -- it need a solution in case will be void? system can't stuck! TODO
        local
            l_med: SED_MEDIUM_READER_WRITER --SErialization/Deserialization stuff
            l_object:ANY -- Anything is been passed on.
            --From now are useful to construct the objects those are going to be send
            l_player1,l_player2:XX_PLAYER
            l_active:BOOLEAN
            board:XX_BOARD

		do
			a_soc.accept --Socket accept the connection
			if attached {NETWORK_STREAM_SOCKET} a_soc.accepted as soc then
				ip_reci:= soc.peer_address.host_address.host_address --save in ip_reci the ip(String) of the peer connected.
				io.put_string ("From "+ip_reci+":")
				create l_med.make (soc)
				l_med.set_for_reading
				l_object:=retrieved (l_med, TRUE)

				if attached {STRING} l_object as txt then
					l_med.cleanup
					io.put_string ("I've received string: "+txt+"%N")
						if txt.is_equal ("switch_game_to_menu") then
							logic_interface.receive_command_switch_panel_game_to_menu
							io.put_string("I've to switch from game panel to menu panel%N'")
						elseif txt.is_equal ("switch_menu_to_game") then
							logic_interface.receive_command_switch_panel_menu_to_game
							io.put_string("I've to switch from menu panel to game panel%N'")
						elseif txt.is_equal ("clean") then
							logic_interface.receive_command_clean_game_window
							io.put_string("I've to clean%N'")
						elseif txt.is_equal ("defeat") then
							tell("REPLY STRING%N")
							create board.make_board
							tell(board)
----						logic_interface.defeat
							io.put_string ("You lose%N")
						elseif txt.is_equal ("victory") then
							logic_interface.victory
							io.put_string("You win!%N'")
						elseif txt.is_equal ("draw") then
							logic_interface.receive_draw_status
							io.put_string("Match is ended in draw!%N'")
						elseif txt.at (1).is_equal ('@') then
							txt.prune ('@')
							chat_manager.set_chat_message (txt)
						elseif txt.is_equal ("chat_enable") then
							--TODO
							io.put_string("Chat is going to be enabled%N'")
						elseif txt.is_equal ("chat_disable") then
							--TODO
							io.put_string("Chat is going to be disabled%N'")
						end
--				ONLY USED FOR SENDING AN OBJECT OVER THE NET
				elseif attached {XX_NET_MESSAGE} l_object as obj then
				io.put_string ("%NI've received an object XX_NET_MESSAGE with text: "+ obj.message +" and number: ")
				io.put_integer (obj.num)
--				##################END TEST######################################

				elseif attached {XX_BOARD} l_object as obj then
--				logic_interface.receive_board (obj)
				io.put_string ("%NI've received a XX_BOARD")

				elseif attached {XX_CELL} l_object as obj then
--				logic_interface.receive_cell (obj)
				io.put_string ("%NI've received a XX_CELL")

				elseif attached {XX_TIMER} l_object as obj then
--				logic_interface.receive_timer (obj)
				io.put_string ("%NI've received a XX_TIMER")

				elseif attached {XX_NET_GAME_STATUS} l_object as obj then
					l_player1:=obj.get_pl1
					l_player2:=obj.get_pl2
					l_active:=obj.get_active
--					logic_interface.receive_game_status (l_player1,l_player2,l_active)
					io.put_string ("%NI've received a XX_NET_GAME_STATUS")

				end--if attached

				soc.close --close the "fake" socket
			end
		end--do
end
