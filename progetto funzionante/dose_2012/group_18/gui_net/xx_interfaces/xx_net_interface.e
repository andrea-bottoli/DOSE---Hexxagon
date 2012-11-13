note
	description: "Summary description for {XX_NET_INTERFACE}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

deferred class
	XX_NET_INTERFACE
feature -- Deferred methods to use hexxagon through the net

	-- This method sends the command that takes the game at the initial condition
	send_command_clear_all
	require

	deferred
	end

	-- This method permits to send the command that switches from menu panel to game panel
	send_command_switch_panel_menu_to_game
	require

	deferred
	end

	--This method permits to send the command that switches from game panel to menu panel
	send_command_switch_panel_game_to_menu
	require

	deferred
	end

	-- This method permits to send the board of the game
	send_board(a_board: STORABLE)
	require

	deferred
	end

	-- This method permits to send the game status
	send_game_status(a_player1, a_player2: STORABLE)
	require

	deferred
	end

	-- This method permits to send the command that enables the chat
	send_chat_enable(a_condition: BOOLEAN)
	require

	deferred
	end

	-- This method permits to send the net status
	send_net_status(a_net1, a_net2: STORABLE)
	require

	deferred
	end

	-- This method permits to send the timer
	send_timer(a_timer: XX_TIMER)
	require

	deferred
	end

	-- This method permits to send a chat message
	send_chat_message(a_chat_message: STRING)
	require

	deferred
	end

	
--	set_chat_to_net(a_chat: XX_CHAT)
--	require

--	deferred
--	end
end
