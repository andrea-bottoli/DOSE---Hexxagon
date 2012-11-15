note
	description: "Interface of the gui"
	author: "Team Milano2"
	date: "13-11-2012"
	revision: "0.3"

deferred class
	XX_GUI_INTERFACE

feature	--Deferred Methods for change the gui view

	--Allow to set the game status in the express field
	set_game_status(a_player1, a_player2: XX_PLAYER)
	require
		player_are_not_void: a_player1/=Void and a_player2/=Void
	deferred
	ensure
		game_status_is_not_empty: is_game_status_empty=FALSE
	end

	--Allow to set the net status in the express field
	set_network_status(a_net1, a_net2: ANY)
	require
		network_status_not_void: a_net1/=Void and a_net2/=Void
	deferred
	ensure
		network_status_is_not_empty: is_network_status_empty=FALSE
	end

	--Allow to set the view of the timer in the gui
	set_timer(a_timer: XX_TIMER)
	require
		timer_not_void: a_timer/=Void
	deferred
	ensure
		timer_is_not_empty: is_timer_empty=FALSE
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
		timer_is_empty: is_timer_empty=TRUE
	end

	--Allow to clean the view of the game status in the gui, bringing it back to the default status
	clean_game_status
	deferred
	ensure
		game_status_is_empty: is_game_status_empty=TRUE
	end

	--Allow to clean the view of the net status in the gui, bringing it back to the default status
	clean_network_status
	deferred
	ensure
		network_status: is_network_status_empty=TRUE
	end

	--Allow to clean the view of the chat in the gui, bringing it back to the default status
	clean_chat
	deferred
	ensure
		chat_is_in_default_state: is_chat_empty=TRUE
	end

	--Allow to clean the view of the board in the gui, bringing it back to the default status
	clean_board
	deferred
	ensure
		board_is_empty: is_board_empty=TRUE
	end

	--Allow to clean the view of the main window/panel in the gui, bringing it back to the default status
	clean_main_window
	deferred
	ensure
		menu_panel_is_empty: is_menu_panel_empty=TRUE
	end

	--Allow to clean the view of the game window/panel in the gui, bringing it back to the default status
	clean_game_window
	deferred
	ensure
		game_panel_is_empty: is_game_panel_empty=TRUE
	end

	--Allow to clean the set enable the interaction with the player
	chat_enable(a_condition: BOOLEAN)
	deferred
	ensure
		chat_is_enabled: is_chat_displayed=a_condition
	end

	--Allow to switch the panel from game panel to menu panel
	switch_panel_game_to_menu
	deferred
	ensure
		menu_panel_visible_game_panel_hide: is_switched_panel_game_to_menu=TRUE
	end

	--Allow to switch the panel from game panel to menu panel
	switch_panel_menu_to_game
	deferred
	ensure
		game_panel_visible_menu_panel_hide: is_switched_panel_menu_to_game=TRUE
	end

	--Allow to set the net manager (for the chat)
	set_net_to_chat(a_net_manager: XX_NET)
	require
		a_net_manager_is_not_void: a_net_manager/=Void
	deferred
	ensure
		net_manager_is_setted: is_net_manager_setted(a_net_manager)=TRUE
	end

feature{NONE}	--Private Methods

	--Allow to check if game panel is empy
	is_game_panel_empty:BOOLEAN
	deferred
	end

	--Allow to check if menu panel is empy
	is_menu_panel_empty:BOOLEAN
	deferred
	end

	--Allow to check if game_status is empy
	is_game_status_empty:BOOLEAN
	deferred
	end

	--Allow to check if network_status is empy
	is_network_status_empty:BOOLEAN
	deferred
	end

	--Allow to check if board is empy
	is_board_empty:BOOLEAN
	deferred
	end

	--Allow to check if timer is empy
	is_timer_empty:BOOLEAN
	deferred
	end

	--Allow to check if chat is empy
	is_chat_empty:BOOLEAN
	deferred
	end

	--Allow to check if chat is displayed
	is_chat_displayed:BOOLEAN
	deferred
	end

	--Allow to check if menu_panel is switched with game_panel
	is_switched_panel_menu_to_game:BOOLEAN
	deferred
	end

	--Allow to check if game_panel is switched with menu_panel
	is_switched_panel_game_to_menu:BOOLEAN
	deferred
	end

	--Allow to check if network_manager is setted
	is_net_manager_setted(a_net_manager: XX_NET):BOOLEAN
	deferred
	end

end
