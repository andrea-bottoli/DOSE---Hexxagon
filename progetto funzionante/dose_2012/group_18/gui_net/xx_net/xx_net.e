note
	description: "Class that implements net manager"
	author: "Team Milano2"
	date: "13-11-2012"
	revision: "0.3"

class
	XX_NET

inherit
	XX_NET_INTERFACE
	XX_CHAT_TO_NET_INTERFACE

create
	make

feature{NONE}	--Attribute
	chat_manager: XX_CHAT

feature {NONE} -- Initialization

	-- Initialization for "Current".
	make
	do
		--TODO
	end

--######################################################################################
feature	-- PUBLIC Methods inherited from XX_NET_INTERFACE. Do methods to use hexxagon through the net

	-- This method sends the command that takes the game at the initial condition
	send_command_clear_all
	do
		--TODO
	end

	-- This method permits to send the command that switches from menu panel to game panel
	send_command_switch_panel_menu_to_game
	do
		--TODO
	end

	--This method permits to send the command that switches from game panel to menu panel
	send_command_switch_panel_game_to_menu
	do
		--TODO
	end

	-- This method permits to send the board of the game
	send_board(a_board: STORABLE)
	do
		--TODO	
	end

	-- This method permits to send the cell
	send_cell(a_cell: STORABLE)
	do
		--TODO
	end

	-- This method permits to send the game status
	send_game_status(a_player1, a_player2: STORABLE)
	do
		--TODO
	end

	-- This method permits to send the command that enables the chat
	send_chat_enable(a_condition: BOOLEAN)
	do
		--TODO
	end

	-- This method permits to send the net status
	send_net_status(a_net1, a_net2: STORABLE)
	do
		--TODO
	end

	-- This method permits to send the timer
	send_timer(a_timer: XX_TIMER)
	do
		--TODO
	end

	--This method permits to open a connection to a host
	init_connection(a_ip: STRING a_port: INTEGER)
	do
		--TODO
	end

	--This method permits to open a listener connection
	init_listener(a_port: INTEGER)
	do
		--TODO
	end

--######################################################################################
feature{NONE} --Private Method Inherited from XX_NET_INTERFACE

	--Check if an address is valid
	is_address_valid(a_ip: STRING a_port: INTEGER):BOOLEAN
	do
		if(is_ip_valid(a_ip) and is_port_valid(a_port))then
			Result:=TRUE
		else
			Result:=FALSE
		end
	end

	--Checks if the listener is initialized
	is_listener_initialized:BOOLEAN
	do
		--TODO
	end
--######################################################################################
feature --PUBLIC Methods inherited from XX_CHAT_TO_NET_INTERFACE. do Metods

	--Allow to send a new chat message throught the net to the other host
	send_chat_message(a_chat_message: STRING)
	do
		--TODO
	end

	--Allow to set the chat manager
	set_chat_manager(a_chat_manager: XX_CHAT)
	do
		--TODO
	end

--######################################################################################
feature{NONE} --Private Method Inherited from XX_CHAT_TO_NET_INTERFACE

	--Checks if the chat message is visible
	is_chat_message_visible:BOOLEAN
	do
		--TODO
	end

	--Checks if the chat manager is setted
	is_chat_manager_setted:BOOLEAN
	do
		--TODO
	end
--######################################################################################
feature{NONE}	--Private Methods

	--Checks if an ip is valid
	is_ip_valid(a_ip: STRING):BOOLEAN
	do
		--TODO
	end

	--Checks if a port is valid
	is_port_valid(a_port: INTEGER):BOOLEAN
	do
		if(a_port>1024 and a_port<65536)then
			Result:=TRUE
		else
			Result:=FALSE
		end
	end
end
