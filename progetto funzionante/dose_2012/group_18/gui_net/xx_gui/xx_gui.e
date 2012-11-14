note
	description: "Class that implements the gui"
	author: "Team Milano2"
	date: "13-11-2012"
	revision: "0.2"

class
	XX_GUI
--inherit
--	XX_GUI_INTERFACE
-- XX_GUI_TO_CHAT_INTERFACE
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

	make
			-- Initialization for `Current'.
		do
			--TODO
		end


feature{NONE} --Private Methods inherited from xx_gui_interface

	--Allow to check if game panel is empy
	is_game_panel_empty:BOOLEAN
	do
		--TODO
	end

	--Allow to check if menu panel is empy
	is_menu_panel_empty:BOOLEAN
	do
		--TODO
	end

	--Allow to check if game_status is empy
	is_game_status_empty:BOOLEAN
	do
		--TODO

--		label_ip_player1_is_in_default_state: label_ip_player1.text.is_equal("")
--		label_ip_player2_is_in_default_state: label_ip_player2.text.is_equal("")
--		label_port_player1_is_in_defult_state: label_port_player1.text.is_equal("")
--		label_port_player2_is_in_default_state: label_port_player2.text.is_equal("")
	end

	--Allow to check if network_status is empy
	is_network_status_empty:BOOLEAN
	do
		--TODO

--		label_ip_player1_not_void: not label_ip_player1.text.is_equal("")
--		label_ip_player2_not_void: not label_ip_player2.text.is_equal("")
--		label_port_player1_not_void: not label_port_player1.text.is_equal("")
--		label_port_player2_not_void: not label_port_player2.text.is_equal("")
	end

	--Allow to check if board is empy
	is_board_empty:BOOLEAN
	do
		--TODO
	end

	--Allow to check if timer is empy
	is_timer_empty:BOOLEAN
	do
		--TODO

--		label_minutes_is_in_default_state: not label_minutes.text.is_equal("--")
--		label_seconds_is_in_default_state: not label_seconds.text.is_equal("--")
	end

	--Allow to check if chat is empy
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

--		game_panel_not_visible: game_panel.is_displayed=TRUE
--		menu_panel_visible: menu_panel.is_displayed=FALSE	
	end

	--Allow to check if game_panel is switched with menu_panel
	is_switched_panel_game_to_menu:BOOLEAN
	do
		--TODO

--		game_panel_not_visible: game_panel.is_displayed=FALSE
--		menu_panel_visible: menu_panel.is_displayed=TRUE
	end

	--Allow to check if network_manager is setted
	is_net_manager_setted(a_net_manager: XX_NET):BOOLEAN
	do
		--TODO
--		net_manager=a_net_manager	
	end


feature{NONE} --Private Method iherited from xx_chat_to_gui_interface

	--Check if the message is visible
	is_chat_message_visible:BOOLEAN
	do
		--TODO
	end
end
