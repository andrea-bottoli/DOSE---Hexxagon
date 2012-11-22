note
	description: "Represents/Simulates the NET interface."
	author: "Team Milano2"
	date: "18-11-2012"
	revision: "0.4"

deferred class
	XX_INET

feature -- Deferred methods to use hexxagon through the net

	-- This method sends the command that takes the game at the initial condition
	send_command_clean_game_window
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
	deferred
	end

	-- This method permits to send the timer
	send_timer(a_timer: XX_TIMER)
	require
		timer_not_void: a_timer/=Void
	deferred
	end

	--This method permits to open a connection to a host
	init_connection(a_ip: STRING a_port: INTEGER)
	require
		ip_address_valid: is_address_valid(a_ip, a_port)=TRUE
	deferred
	end

	--This method permits to open a listener connection
	init_listener(a_port: INTEGER)
	require
		--is_port_valid: ip_port_valid(a_port)=TRUE
	deferred
	ensure
		listener_is_initialized: is_listener_initialized=TRUE
	end

	--This method permits to close an open connection
	close_connection
	deferred
	end

	--This method permits to send the victory status
	send_victory
	deferred
	end

	--This method permits to send the victory status
	send_defeated
	deferred
	end

	--USELESS METHOD
	other_move
	deferred
	end

feature{NONE} --Private Method

	--Checks if an address is valid
	is_address_valid(a_ip: STRING a_port:INTEGER):BOOLEAN
	deferred
	end

	--Checks if a port is valid
	is_port_valid(a_port: INTEGER):BOOLEAN
	deferred
	end

	--Checks if the listener is initialized
	is_listener_initialized:BOOLEAN
	deferred
	end

end

