note
	description: "Summary description for {XX_GUI_INTERFACE}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

deferred class
	XX_GUI_INTERFACE

feature{NONE} --Attributes of the gui that are involved with pre & post conditions

	--There are the EV component that compose the "Game Status"
	label_name_player1: EV_LABEL
	label_name_player2: EV_LABEL
	label_color_player1: EV_LABEL
	label_color_player2: EV_LABEL
	label_score_player1: EV_LABEL
	label_score_player2: EV_LABEL

	--There are the EV component that compose the "Net Status"
	label_ip_player1: EV_LABEL
	label_ip_player2: EV_LABEL
	label_port_player1: EV_LABEL
	label_port_player2: EV_LABEL

	--There are the component that compose the "Timer"
	label_minutes: EV_LABEL
	label_seconds: EV_LABEL

feature --Deferred Methods for change the gui view

	--Allow to set the game status in the express field
	set_game_statut(a_player1, a_player2: XX_PLAYER)
	require
		player_are_not_void: a_player1/=Void and a_player2/=Void
	deferred
	ensure
		label_name_player1_not_void: not label_name_player1.text.is_equal("")
		label_name_player1_not_void: not label_name_player2.text.is_equal("")
		label_color_player1_not_void: not label_name_player1.text.is_equal("")
		label_color_player1_not_void: not label_name_player2.text.is_equal("")
		label_score_player1_not_void: not label_name_player1.text.is_equal("")
		label_score_player1_not_void: not label_name_player2.text.is_equal("")
	end

	--Allow to set the net status in the express field
	set_network_statut(a_net1, a_net2: ANY)
	require
		network_status_not_void: a_net1/=Void and a_net2/=Void
	deferred
	ensure
		label_ip_player1_not_void: not label_ip_player1.text.is_equal("")
		label_ip_player2_not_void: not label_ip_player2.text.is_equal("")
		label_port_player1_not_void: not label_port_player1.text.is_equal("")
		label_port_player2_not_void: not label_port_player2.text.is_equal("")
	end

	--Allow to set the view of the timer in the gui
	set_timer(a_timer: XX_TIMER)
	require
		timer_not_void: a_timer/=Void
	deferred
	ensure
		label_minutes_is_in_default_state: not label_minutes.text.is_equal("--")
		label_seconds_is_in_default_state: not label_seconds.text.is_equal("--")
	end

	--Allow to set the view of the board in the gui
	set_board(a_board: XX_BOARD)
	require
		board_not_void: a_board/=Void
	deferred
	ensure
	--Create Board Obj
	end

	--Allow to clean the view of the timer in the gui, bringing it back to the default status
	clean_timer
	deferred
	ensure
			label_minutes_is_in_default_state: label_minutes.text.is_equal("--")
			label_seconds_is_in_default_state: label_seconds.text.is_equal("--")
	end

	--Allow to clean the view of the game status in the gui, bringing it back to the default status
	clean_game_status
	deferred
	ensure
		label_name_player1_is_in_default_state: label_name_player1.text.is_equal("")
		label_name_player1_is_in_default_state: label_name_player2.text.is_equal("")
		label_color_player1_is_in_default_state: label_name_player1.text.is_equal("")
		label_color_player1_is_in_default_state: label_name_player2.text.is_equal("")
		label_score_player1_is_in_default_state: label_name_player1.text.is_equal("")
		label_score_player1_is_in_default_state: label_name_player2.text.is_equal("")
	end

	--Allow to clean the view of the net status in the gui, bringing it back to the default status
	clean_network_status
	deferred
	ensure
		label_ip_player1_is_in_default_state: label_ip_player1.text.is_equal("")
		label_ip_player2_is_in_default_state: label_ip_player2.text.is_equal("")
		label_port_player1_is_in_defult_state: label_port_player1.text.is_equal("")
		label_port_player2_is_in_default_state: label_port_player2.text.is_equal("")
	end

	--Allow to clean the view of the chat in the gui, bringing it back to the default status
	clean_chat
	deferred
	ensure
	-- Create Chat Obj
	end

	--Allow to clean the view of the board in the gui, bringing it back to the default status
	clean_board
	deferred
	ensure
	--Create Board Obj
	end

	--Allow to clean the view of the main window/panel in the gui, bringing it back to the default status
	clean_main_window
	deferred
	ensure
	end

	--Allow to clean the view of the game window/panel in the gui, bringing it back to the default status
	clean_game_window
	deferred
	ensure
	end

	--Allow to clean the set enable the interaction with the player
	chat_enable(a_condition: BOOLEAN)
	deferred
	ensure
	--chat_is_enable: CHAT_Obj.is_enable=a_condition
	end

	--Allow to switch the panel from game panel to menu panel
	switch_panel_game_to_menu
	deferred
	ensure
	-- Verify that the game panel object is visible and the menu is hidden
	end

	--Allow to switch the panel from game panel to menu panel
	switch_panel_menu_to_game
	deferred
	ensure
	-- Verify that the menu object is visible and the game panel is hidden
	end

	--Allow to set the net manager (for the chat)
	set_net_to_chat(a_net_manager: XX_NET)
	require
		a_net_manager_is_not_void: a_net_manager/=Void
	deferred
	ensure
	--object doesn't modified'
	end
end
