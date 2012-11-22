note
description: "Class that implements the gui"
author: "Team Milano2"
date: "18-11-2012"
revision: "0.4"

class
XX_GUI

inherit
XX_IGUI
  XX_CHAT_TO_GUI_INTERFACE

create
make

feature{NONE} --Attributes of the gui
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

feature {NONE} -- Initialization
	-- Initialization for "Current".
	make
	do
		--TODO
	end

--######################################################################################
feature --PUBLIC Methods inherited from XX_IGUI

	--Allow to set the game status in the express field
	set_game_status(a_player1, a_player2: XX_PLAYER; is_active: BOOLEAN)
	do
		--TODO
	end

	--Allow to set the view of the timer in the gui
	set_timer(a_timer: XX_TIMER)
	do
		--TODO
	end

	--Allow to set the view of the board in the gui
	set_board(a_board: XX_GUI_BOARD)
	do
		--TODO
	end

	--Allow to clean the view of the timer in the gui, bringing it back to the default status
	clean_timer
	do
		--TODO
	end

	--Allow to clean the view of the game status in the gui, bringing it back to the default status
	clean_game_status
	do
		--TODO
	end

	--Allow to clean the view of the chat in the gui, bringing it back to the default status
	clean_chat
	do
		--TODO
	end

	--Allow to clean the view of the board in the gui, bringing it back to the default status
	clean_board
	do
		--TODO
	end

	--Allow to clean the view of the main window/panel in the gui, bringing it back to the default status
	clean_main_window
	do
		--TODO
	end

	--Allow to clean the view of the game window/panel in the gui, bringing it back to the default status
	clean_game_window
	do
		--TODO
	end

	--Allow to clean the set enable the interaction with the player
	chat_enable(a_condition: BOOLEAN)
	do
		--TODO
	end

	--Allow to switch the panel from game panel to menu panel
	switch_panel_game_to_menu
	do
		--TODO
	end

	--Allow to switch the panel from game panel to menu panel
	switch_panel_menu_to_game
	do
		--TODO
	end

	--Allow to set the net manager (for the chat)
	set_net_to_chat(a_net_manager: XX_NET)
	do
		--TODO
	end

	--Allow to inform the player about his victory
	victory
	do
		--TODO
	end

	--Allow to inform the player about his defeat
	defeat
	do
		--TODO
	end

--######################################################################################
feature{NONE} --PRIVATE Methods inherited from XX_IGUI

	--Allow to check if game panel is empty
	is_game_panel_empty:BOOLEAN
	do
		--TODO
	end

	--Allow to check if menu panel is empty
	is_menu_panel_empty:BOOLEAN
	do
		--TODO
	end

	--Allow to check if game_status is empty
	is_game_status_empty:BOOLEAN
	do
		--TODO

		-- label_ip_player1_is_in_default_state: label_ip_player1.text.is_equal("")
		-- label_ip_player2_is_in_default_state: label_ip_player2.text.is_equal("")
		-- label_port_player1_is_in_defult_state: label_port_player1.text.is_equal("")
		-- label_port_player2_is_in_default_state: label_port_player2.text.is_equal("")
	end

	--Allow to check if network_status is empty
	is_network_status_empty:BOOLEAN
	do
		--TODO

		-- label_ip_player1_not_void: not label_ip_player1.text.is_equal("")
		-- label_ip_player2_not_void: not label_ip_player2.text.is_equal("")
		-- label_port_player1_not_void: not label_port_player1.text.is_equal("")
		-- label_port_player2_not_void: not label_port_player2.text.is_equal("")
	end

	--Allow to check if board is empty
	is_board_empty:BOOLEAN
	do
		--TODO
	end

	--Allow to check if timer is empty
	is_timer_empty:BOOLEAN
	do
		--TODO

		-- label_minutes_is_in_default_state: not label_minutes.text.is_equal("--")
		-- label_seconds_is_in_default_state: not label_seconds.text.is_equal("--")
	end

	--Allow to check if chat is empty
	is_chat_empty:BOOLEAN
	do
		--TODO
	end

	--Allow to check if chat is displayed
	is_chat_displayed:BOOLEAN
	do
		--TODO
	end

	--Allow to check if menu_panel is switched with game_panel
	is_switched_panel_menu_to_game:BOOLEAN
	do
		--TODO

		-- game_panel_not_visible: game_panel.is_displayed=TRUE
		-- menu_panel_visible: menu_panel.is_displayed=FALSE
	end

	--Allow to check if game_panel is switched with menu_panel
	is_switched_panel_game_to_menu:BOOLEAN
	do
		--TODO

		-- game_panel_not_visible: game_panel.is_displayed=FALSE
		-- menu_panel_visible: menu_panel.is_displayed=TRUE
	end

	--Allow to check if network_manager is setted
	is_net_manager_setted(a_net_manager: XX_NET):BOOLEAN
	do
		--TODO
		-- net_manager=a_net_manager
	end

	--Allow to check if victory message is displayed
	is_victory_message_displayed:BOOLEAN
	do
		--TODO
	end

	--Allow to check if defeat message is displayed
	is_defeat_message_displayed:BOOLEAN
	do
		--TODO
	end

--######################################################################################
feature --PUBLIC Method iherited from XX_CHAT_TO_GUI_INTERFACE

	-- Sets the message in the chat field
	set_chat(a_chat_message: STRING)
	do
		--TODO
	end

--######################################################################################
	feature{NONE} --PRIVATE Method iherited from XX_CHAT_TO_GUI_INTERFACE

	--Check if the message is visible
	is_chat_message_visible(a_chat_message: STRING):BOOLEAN
	do
		--TODO
	end

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
end
