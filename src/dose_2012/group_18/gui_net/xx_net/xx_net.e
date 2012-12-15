note
	description: "Class that implements net manager"
	author: "Team Milano2"
	date: "9-12-2012"
	revision: "1.2"

class
	XX_NET

inherit
	XX_INET
	XX_CHAT_TO_NET_INTERFACE
	XX_IP_VALIDATOR
	XX_NET_CONSTANTS

create
	make_logic

feature {NONE} -- Constructors

	-- Initialization for "Current".
	make_logic(a_logic: XX_ILOGIC)
	do
		default_create
		set_ilogic(a_logic)
		ready:=FALSE
	end

feature{NONE}	--Attribute
	chat_manager: XX_CHAT
	logic_interface: XX_ILOGIC
	server_port: INTEGER
	server_ip:STRING
	client_ip:STRING
	name_player: STRING
	ready: BOOLEAN
	socket_interface: XX_SOCKET_INTERFACE

feature{NONE} --Initialization

	set_ilogic(a_logic: XX_ILOGIC)
	require
		logic_not_void: a_logic/=Void
	do
		logic_interface:=a_logic
	end

feature {XX_SERVER_LISTENER, XX_CLIENT_CONNECT} --Getters for server and client

	--Returns the ip address of the server
	get_server_ip: STRING
	do
		Result:=server_ip
	end

	--Returns the port of the server
	get_server_port: INTEGER
	do
		Result:=server_port
	end

	--Returns the player's name
	get_name_player: STRING
	do
		Result:=name_player
	end

feature{XX_CLIENT_CONNECT}

	--Returns the player's name
	send_client_name_player
	require else
		socket_interface_not_void: socket_interface/=void
		name_player_not_void: name_player/=Void
		name_player_not_empty: not name_player.is_empty
	local
		l_s: STRING
	do
		l_s:=""
		l_s.append (command_name_player)
		l_s.append (name_player)
		socket_interface.write (l_s)
		ready:=TRUE
	end

feature{XX_SERVER_LISTENER}

	--Returns the player's name
	send_request_client_name_player
	require else
		socket_interface_not_void: socket_interface/=void
	do
		socket_interface.write (command_request_name_player)
	end

	--Used for notified that a client is connected
	client_connected
	do
		logic_interface.client_connected (name_player, client_ip)
	end

	--Sets the ip address of the client
	set_client_ip(a_client_ip: STRING)
	do
		client_ip:=a_client_ip
	end

feature{NONE} --Setters and getters

	--Sets the name of the player
	set_name_player(a_name_player: STRING)
	do
		name_player:=a_name_player
		ready:=TRUE
		client_connected
	end

	--Sets the ip address of the server
	set_server_ip(a_server_ip: STRING)
	do
		server_ip:=a_server_ip
	end

	--Sets the port of the server
	set_server_port(a_server_port: INTEGER)
	do
		server_port:=a_server_port
	end

feature{XX_SERVER_LISTENER, XX_CLIENT_CONNECT}	--PRIVATE Methods of XX_NET

	--He receive object from the socket
	parser(a_object: ANY)
	require
		a_object/= void
	local
		l_split_message: LIST[STRING]
		l_command: STRING
		l_content: STRING
		l_i: INTEGER
	do
		if (not ready) then
			if attached {STRING} a_object as message then

				l_split_message:=message.split ('@')
				l_command:=l_split_message.at (1)
				l_command.append("@")
				l_content:=""
				from
					l_i:=1
				until
					l_i>=l_split_message.count
				loop
					l_content.append (l_split_message.at (l_i+1))
					l_i:=l_i+1
				end
				if (l_command.is_equal (command_request_name_player)) then
					send_client_name_player
				elseif (l_command.is_equal (command_name_player)) then
					set_name_player (l_content)
				end
			end
		else
			if attached {STRING} a_object as message then

				l_split_message:=message.split ('@')
				l_command:=l_split_message.at (1)
				l_command.append("@")
				l_content:=""
				from
					l_i:=1
				until
					l_i>=l_split_message.count
				loop
					l_content.append (l_split_message.at (l_i+1))
					l_i:=l_i+1
				end

				if (l_command.is_equal (command_switch_panel_game_to_menu)) then
					logic_interface.receive_command_switch_panel_game_to_menu
				elseif(l_command.is_equal (command_switch_panel_menu_to_game))then
					logic_interface.receive_command_switch_panel_menu_to_game
				elseif (l_command.is_equal (command_clean_game_windo)) then
					logic_interface.receive_command_clean_game_window
				elseif (l_command.is_equal (command_defeat))then
					logic_interface.receive_defeat
				elseif (l_command.is_equal (command_victory))then
					logic_interface.receive_victory
				elseif (l_command.is_equal (command_draw))then
					logic_interface.receive_draw_status
				elseif (l_command.is_equal (command_chat_message)) then
					chat_manager.set_chat_message (l_content)
				elseif (l_command.is_equal (command_chat_enable)) then
					logic_interface.receive_chat_enable (l_content.to_boolean)
				end

			elseif attached {XX_BOARD} a_object as board then
				logic_interface.receive_board (board)
			elseif attached {XX_POSSIBLE_MOVES} a_object as possible_move then
				logic_interface.other_move(possible_move)
			elseif attached {XX_TIMER} a_object as timer then
				logic_interface.receive_timer (timer)
			elseif attached {XX_NET_GAME_STATUS} a_object as game_status then
				logic_interface.receive_game_status (game_status.get_player1,game_status.get_player2,game_status.is_active)
			end
		end
	end

feature	-- PUBLIC Methods inherited from XX_INET

	--creates the client connection to the server
	init_connection(a_player_name:STRING; a_server_ip: STRING; a_server_port:INTEGER)
	local
		l_client_connect: XX_CLIENT_CONNECT
	do
		set_server_ip (a_server_ip)
		set_server_port (a_server_port)
		name_player:=a_player_name
		create l_client_connect.make_client_thread (current)
		socket_interface:=l_client_connect
		socket_interface.launch
	end


	--Is going to be initialized a listener on a_port in order to receive all the request on it.
	init_listener(a_server_port: INTEGER)
	local
		l_server_listener: XX_SERVER_LISTENER
	do
		set_server_port (a_server_port)
		create l_server_listener.make_server_thread (current)
		socket_interface:=l_server_listener
		socket_interface.launch
	end

	--This method permits to close an open connection
	close_connection
	do
		socket_interface.close
	end

	-- This method sends the command that takes the game at the initial condition
	send_command_clean_game_window
	require else
		socket_interface_not_void: socket_interface/=void
	do
		socket_interface.write (command_clean_game_windo)
	end

	-- This method permits to send the command that switches from menu panel to game panel
	send_command_switch_panel_menu_to_game
	require else
		socket_interface_not_void: socket_interface/=void
	do
		socket_interface.write (command_switch_panel_menu_to_game)
	end

	--This method permits to send the command that switches from game panel to menu panel
	send_command_switch_panel_game_to_menu
	require else
		socket_interface_not_void: socket_interface/=void
	do
		socket_interface.write (command_switch_panel_game_to_menu)
	end

	-- This method permits to send the board of the game
	send_board(a_board: XX_BOARD)
	require else
		socket_interface_not_void: socket_interface/=void
	do
		socket_interface.write (a_board)
	end

	-- This method permits to send the cell
	send_possible_move(a_possible_move: XX_POSSIBLE_MOVES)
	require else
		socket_interface_not_void: socket_interface/=void
	do
		socket_interface.write (a_possible_move)
	end

	-- This method permits to send the game status
	send_game_status(a_player1, a_player2: XX_PLAYER;active:BOOLEAN)
	require else
		socket_interface_not_void: socket_interface/=void
	local
		l_status: XX_NET_GAME_STATUS
	do
		create l_status.make (a_player1,a_player2,active)
		socket_interface.write (l_status)
	end

	-- This method permits to send the command that enables the chat
	send_chat_enable(a_condition: BOOLEAN)
	require else
		socket_interface_not_void: socket_interface/=void
	local
		l_string: STRING
	do
		l_string:=command_chat_enable
		l_string.append_boolean (a_condition)

		socket_interface.write (l_string)
	end

	-- This method permits to send the timer
	send_timer(a_timer: XX_TIMER)
	require else
		socket_interface_not_void: socket_interface/=void
	do
		socket_interface.write (a_timer)
	end

	--This method permits to send the victory status
	send_victory
	require else
		socket_interface_not_void: socket_interface/=void
	do
		socket_interface.write (command_victory)
	end

	--This method permits to send the victory status
	send_defeated
	require else
		socket_interface_not_void: socket_interface/=void
	do
		socket_interface.write (command_defeat)
	end

	--This method permits to send the draw status
	send_draw_status
	require else
		socket_interface_not_void: socket_interface/=void
	do
		socket_interface.write (command_draw)
	end

feature{NONE} --Private Method Inherited from XX_INET

	--Check if an address is valid
	is_address_valid(a_ip: STRING; a_port: INTEGER):BOOLEAN
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
		if (socket_interface/=Void)  then
			result:= TRUE
		else
			result:= FALSE
		end
	end


feature --PUBLIC Methods inherited from XX_CHAT_TO_NET_INTERFACE

	--Allow to send a new chat message throught the net to the other host
	send_chat_message(a_chat_message: STRING)
	local
		message:STRING
	do
		message:=command_chat_message
		message.append (a_chat_message)
		socket_interface.write (message)
	end

	--Allow to set the chat manager
	set_chat_manager(a_chat_manager: XX_CHAT)
	do
		chat_manager:=a_chat_manager
	end


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
		if(chat_manager/=Void)then
			Result:=TRUE
		else
			Result:=FALSE
		end
	end

--#############################
--#############################
--##						 ##
--##	TEMPORANEAL METHOD   ##
--##						 ##
--#############################
--#############################
feature --TEMPORANEAL METHOD
	send(a: ANY)
	do
		socket_interface.write (a)
	end
end
