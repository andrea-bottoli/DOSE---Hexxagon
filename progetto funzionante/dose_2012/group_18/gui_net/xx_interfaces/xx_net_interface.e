note
	description: "Summary description for {XX_NET_INTERFACE}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

deferred class
	XX_NET_INTERFACE
feature
	send_command_clear_all
	require

	deferred
	end
	send_command_switch_panel_menu_to_game
	require

	deferred
	end
	send_command_switch_panel_game_to_menu
	require

	deferred
	end
	send_board(a_board: STORABLE)
	require

	deferred
	end
	send_game_status(a_player1, a_player2: STORABLE)
	require

	deferred
	end
	send_chat_enable(a_condition: BOOLEAN)
	require

	deferred
	end
	send_net_status(a_net1, a_net2: STORABLE)
	require

	deferred
	end
	send_timer(a_timer: XX_TIMER)
	require

	deferred
	end
	send_chat_message(a_chat_message: STRING)
	require

	deferred
	end
--	set_chat_to_net(a_chat: XX_CHAT)
--	require

--	deferred
--	end
end
