note
	description: "Interface of the gui"
	author: "Team Milano2"
	date: "13-11-12"
	revision: "0.2"

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

	--There are the component that compose the windows --> panels
	game_panel: EV_HORIZONTAL_BOX
	menu_panel: EV_HORIZONTAL_BOX

	--There are some components of the gui
	board: EV_ANY
	chat: EV_SCROLLABLE_AREA
	net_manager: XX_NET
	game_window: XX_GUI
	menu_window: XX_GUI

feature --Deferred Methods for change the gui view

	--Allow to set the game status in the express field
	set_game_status(a_player1, a_player2: XX_PLAYER)
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
	set_network_status(a_net1, a_net2: ANY)
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
		chat_is_in_default_state: chat.is_empty=TRUE
	end

	--Allow to clean the view of the board in the gui, bringing it back to the default status
	clean_board
	deferred
	end

	--Allow to clean the view of the main window/panel in the gui, bringing it back to the default status
	clean_main_window
	deferred
	ensure
		menu_window_is_empty: menu_window.is_menu_window_empty=TRUE
	end

	--Allow to clean the view of the game window/panel in the gui, bringing it back to the default status
	clean_game_window
	deferred
	ensure
		game_window_is_empty: game_window.is_game_window_empty=TRUE
	end

	--Allow to clean the set enable the interaction with the player
	chat_enable(a_condition: BOOLEAN)
	deferred
	ensure
		chat_is_enabled: chat.is_displayed=a_condition
	--chat_is_enable: CHAT_Obj.is_enable=a_condition
	end

	--Allow to switch the panel from game panel to menu panel
	switch_panel_game_to_menu
	deferred
	ensure
		game_panel_not_visible: game_panel.is_displayed=FALSE
		menu_panel_visible: menu_panel.is_displayed=TRUE
	end

	--Allow to switch the panel from game panel to menu panel
	switch_panel_menu_to_game
	deferred
	ensure
		game_panel_not_visible: game_panel.is_displayed=TRUE
		menu_panel_visible: menu_panel.is_displayed=FALSE
	end

	--Allow to set the net manager (for the chat)
	set_net_to_chat(a_net_manager: XX_NET)
	require
		a_net_manager_is_not_void: a_net_manager/=Void
	deferred
	ensure
		net_manager=a_net_manager
	end
end
