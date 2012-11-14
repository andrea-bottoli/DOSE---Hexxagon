note
	description: "Class that implements the gui"
	author: "Team Milano2"
	date: "13-11-12"
	revision: "0.2"

class
	XX_GUI

create
	make

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
feature {NONE} -- Initialization

	make
			-- Initialization for `Current'.
		do

		end
feature --Methods

	is_game_panel_empty:BOOLEAN
	is_menu_panel_empty:BOOLEAN

	is_game_status_empty:BOOLEAN
	do
--		label_ip_player1_is_in_default_state: label_ip_player1.text.is_equal("")
--		label_ip_player2_is_in_default_state: label_ip_player2.text.is_equal("")
--		label_port_player1_is_in_defult_state: label_port_player1.text.is_equal("")
--		label_port_player2_is_in_default_state: label_port_player2.text.is_equal("")
	end

	is_network_status_empty:BOOLEAN
	do

--		label_ip_player1_not_void: not label_ip_player1.text.is_equal("")
--		label_ip_player2_not_void: not label_ip_player2.text.is_equal("")
--		label_port_player1_not_void: not label_port_player1.text.is_equal("")
--		label_port_player2_not_void: not label_port_player2.text.is_equal("")
	end

	is_board_empty:BOOLEAN
	do

	end

	is_timer_empty:BOOLEAN
	do

--		label_minutes_is_in_default_state: not label_minutes.text.is_equal("--")
--		label_seconds_is_in_default_state: not label_seconds.text.is_equal("--")
	end

	is_chat_empty:BOOLEAN
	do

	end

	is_chat_displayed:BOOLEAN
	do

	end
	
	is_switched_panel_menu_to_game:BOOLEAN
	do
--		game_panel_not_visible: game_panel.is_displayed=TRUE
--		menu_panel_visible: menu_panel.is_displayed=FALSE	
	end

	is_switched_panel_game_to_menu:BOOLEAN
	do
--		game_panel_not_visible: game_panel.is_displayed=FALSE
--		menu_panel_visible: menu_panel.is_displayed=TRUE
	end

	is_net_manager_setted(a_net_manager: XX_NET):BOOLEAN
	do
--		net_manager=a_net_manager	
	end
end
