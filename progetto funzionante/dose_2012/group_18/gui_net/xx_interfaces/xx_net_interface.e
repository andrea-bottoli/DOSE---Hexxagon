note
	description: "Interface of the net"
	author: "Team Milano2"
	date: "14-11-2012"
	revision: "0.2"

deferred class
	XX_NET_INTERFACE

feature -- Deferred methods to use hexxagon through the net

	-- This method sends the command that takes the game at the initial condition
	send_command_clear_all
	deferred
	end

	-- This method permits to send the command that switches from menu panel to game panel
	send_command_switch_panel_menu_to_game
	deferred
	end

	--This method permits to send the command that switches from game panel to menu panel
	send_command_switch_panel_game_to_menu
	deferred
	end

	-- This method permits to send the board of the game
	send_board(a_board: STORABLE)
	require
		board_exists: a_board/=Void
	deferred
	end

	-- This method permits to send the cell
	send_cell(a_cell: STORABLE)
	require
		cell_exists: a_cell/=Void
	deferred
	end
	-- This method permits to send the game status
	send_game_status(a_player1, a_player2: STORABLE)
	require
		players_not_void: a_player1/=Void and a_player2/=Void
	deferred
	end

	-- This method permits to send the command that enables the chat
	send_chat_enable(a_condition: BOOLEAN)
	require
		condition_not_void: a_condition/=Void
	deferred
	end

	-- This method permits to send the net status
	send_net_status(a_net1, a_net2: STORABLE)
	require
		net_status_not_void: a_net1/=Void and a_net2/=Void
	deferred
	end

	-- This method permits to send the timer
	send_timer(a_timer: XX_TIMER)
	require
		timer_not_void: a_timer/=Void
	deferred
	end

	-- This method permits to send a chat message
	send_chat_message(a_chat_message: STRING)
	require
		chat_message_not_void: a_chat_message/=Void
	deferred
	end

	--This method permits to open a connection to a host
	init_connection(a_ip: STRING a_port: INTEGER)
	require
		ip_not_void: a_ip/=Void and is_ip_valid(a_ip)=TRUE
		port_not_void: a_port/=Void and a_port>1024 and a_port<65536
	deferred
	end

	--This method permits to open a listener connection
	init_listener(a_port: INTEGER)
	require
		port_not_void: a_port/=Void
	deferred
	ensure
		listener_is_initialized: is_listener_initialized=TRUE
	end

feature{NONE} --Private Method

	--Checks if an ip is valid
	is_ip_valid(a_ip: STRING):BOOLEAN
	deferred
	end

	--Checks if the listener is initialized
	is_listener_initialized:BOOLEAN
	deferred
	end
end
