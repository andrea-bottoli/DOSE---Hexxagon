note
description: "Class that implements the gui"
author: "Team Milano2"
date: "18-11-2012"
revision: "0.7"

class
XX_GUI

inherit

	EV_WINDOW
		redefine
			initialize
		end

	XX_IGUI
		undefine
			default_create,
			copy
		end

 	XX_CHAT_TO_GUI_INTERFACE
		undefine
			default_create,
			copy
		end

	XX_GUI_CONSTANTS
		export
			{NONE} all
		undefine
			default_create,
			copy
		end

create
	make_with_logic

feature {NONE} --Constructor

	--Initialization for "Current"
	make_with_logic(a_logic: XX_ILOGIC; a_main_ui: MAIN_WINDOW)
	do
		default_create
		main_ui:=a_main_ui
		set_interface_logic(a_logic)
		set_window_size (width-16, height-16)
		create_chat
	end


feature{NONE} --Attributes of the gui

	--Reference to the main ui
	main_ui: MAIN_WINDOW

	--References to the objects relative to net, chat and logic
	interface_net: XX_CHAT_TO_NET_INTERFACE
	interface_logic: XX_ILOGIC
	chat: XX_CHAT

	--Attribute for the position of the window
	screen: EV_SCREEN						--Manager of the screen

	--Containers of the window
	main_container: EV_FIXED				--Main container of the window; it contains menu_panel and game_panel
	menu_panel: XX_MENU_PANEL				--Menu panel
	game_panel: XX_GAME_PANEL				--Game panel

	--Info boxes
	victory_info_box: EV_INFORMATION_DIALOG
	defeat_info_box: EV_INFORMATION_DIALOG
	draw_info_box: EV_INFORMATION_DIALOG

	--Players
	player1: XX_PLAYER
	player2: XX_PLAYER

	--Name of the owner player
	own_name_player: STRING

	--Gui Board
	gui_board: ARRAY[INTEGER]
	id_cell_clicked: INTEGER
	highlighting: BOOLEAN

feature {NONE} --Initialization

	--Initialize the window
	initialize
	do
		Precursor {EV_WINDOW}

		create screen

		--Create and add the main container
		build_main_container

		--Set the position of the window
		set_window_position
	end


feature {NONE}	--Set Methods

	--Set the position of the window
	set_window_position
	local
		x_pos: INTEGER
		y_pos: INTEGER
	do
		x_pos:= ((screen.width//2) - (current.width//2))
		y_pos:= ((screen.height//2) - (current.height//2) - 20)
		current.set_position (x_pos, y_pos)
	end

	--Set the size of the screen
	set_window_size(a_width, a_height: INTEGER)
	require
		width_is_valid: a_width>0
		height_is_valid: a_height>0
	local
		x_off: INTEGER
		y_off: INTEGER
	do
		x_off:= 15
		y_off:= 15
		current.set_minimum_size (a_width+x_off, a_height+y_off)
		current.set_maximum_size (a_width+x_off, a_height+y_off)
		current.set_size (a_width, a_height)
		current.refresh_now
	end

	--Set the interface to the logic
	set_interface_logic(a_logic: XX_ILOGIC)
	require
		logic_not_void: a_logic/=Void
	do
		interface_logic:=a_logic
	end

feature {NONE}	--Implementation of main container of the window

	--Create and add the Main Container
	build_main_container
	require
		main_container_not_exist: main_container=Void
	do
		--create main container
		create main_container

		--build the mennu and the game panels
		build_menu_panel
		build_game_panel

		create gui_board.make_filled (0, 1, 58)

		--add the container to the main_window
		current.extend (main_container)
	ensure
		main_container_created: main_container/=Void and then (not main_container.is_empty)
	end

	--Build the menu panel
	build_menu_panel
	require
		menu_panel_not_exist: menu_panel=Void
	do
		create menu_panel.make_menu_panel(current)
		main_container.extend (menu_panel)
	end

	--Build the game panel
	build_game_panel
	require
		game_panel_not_exist: game_panel=Void
	do
		create game_panel.make_game_panel (current)
		create chat
	end


feature{NONE} --Creation of the chat

	create_chat
	do
		create chat.make_with_gui (current)
	end

feature {XX_MENU_PANEL}	--Methods used by XX_MENU_PANEL

	--Window close implementation
	close_window
	local
		l_question_close_box: EV_CONFIRMATION_DIALOG
	do
		create l_question_close_box.make_with_text (label_confirm_close_window)
		l_question_close_box.set_pixmap (pixmap_close_image)
		l_question_close_box.show_modal_to_window (current)

		if(l_question_close_box.selected_button.is_equal((create{EV_DIALOG_CONSTANTS}).ev_ok)) then
			--Destroy the confirmation dialog window
			destroy;

			--Destroy the application
			(create{EV_ENVIRONMENT}).application.destroy
		end
	end

	--Rule dialog implementation
	rule_dialog
	local
		l_rules_dialog: EV_DIALOG
		l_rules_panel: XX_RULES_PANEL
	do
		create l_rules_dialog
		create l_rules_panel.make_rules_panel(l_rules_dialog)

		l_rules_dialog.disable_user_resize
		l_rules_dialog.set_title (title_rule_window)
		l_rules_dialog.set_size (l_rules_panel.width, l_rules_panel.height + 30)
		l_rules_dialog.set_minimum_size (300, 300)

		l_rules_dialog.extend (l_rules_panel)
		l_rules_dialog.show_modal_to_window (current)
	end

	--Sets the owner of the player name
	set_own_player_name(a_name_player: STRING)
	require
		name_not_void: a_name_player/=Void and not a_name_player.is_equal ("")
	do
		own_name_player:=a_name_player
	ensure
		own_name_layer_is_setted: own_name_player.is_equal (a_name_player)
	end

	--Implementetion of the star game
	start_game(a_single_player, a_multi_player, a_server: BOOLEAN; a_name, a_colour, a_ip, a_port: STRING)
	do
		if (a_single_player and not a_multi_player) then
			if (check_name(a_name) and check_colour(a_colour)) then

				--Sets the name of owner player
				set_own_player_name (a_name)

				--Sets the game to multiplayer_server game
				interface_logic.set_single_player (a_name, a_colour)

				--Start the game
				interface_logic.receive_game_start
			else
				clean_main_window
			end
		elseif (a_multi_player and not a_single_player) then
			if (check_name (a_name) and check_port (a_port)) then
				if(not a_server)then
					if(check_ip (a_ip))then
						--Sets the name of owner player
						set_own_player_name (a_name)

						--Sets the game to multiplayer_client game
						interface_logic.set_client_setup (a_name, a_ip, a_port.to_integer)
					else
						clean_main_window
					end
				else
					--Sets the name of owner player
					set_own_player_name (a_name)

					--Sets the game to multiplayer_server game
					interface_logic.set_server_setup (a_name, a_ip, a_port.to_integer)
				end
			else
				clean_main_window
			end
		else
			error_dialog ("You have to chose%N'Single Player Mode' or%N'Multi Player Mode'")
		end
	end


feature{XX_GAME_PANEL} --Method used by XX_GAME_PANEL

	--Sends the id of the clicked cell
	send_id_clicked_cell(a_id_cell: INTEGER)
	require
		interface_logic_not_void: interface_logic/=Void
	local
		l_possible_move: XX_POSSIBLE_MOVES
	do
		create l_possible_move.make_possible_moves

		l_possible_move.set_move (a_id_cell, a_id_cell, 1)
		if(check_highlight_cell(a_id_cell))then
			id_cell_clicked:=a_id_cell
			highlighting:=TRUE
		else
			highlighting:=FALSE
		end
		interface_logic.associated_move (l_possible_move)
	end

	--Sends a chat message
	send_chat_message(a_chat_message: STRING)
	require
		a_chat_message/=Void
	local
		l_message: STRING
	do
		l_message:=""
		l_message.append ("<"+own_name_player+">: "+a_chat_message+"%N")

		game_panel.set_chat_text (l_message)

		chat.send_chat_message (l_message)
	end

	--Implementetion of the abort game
	abort_game
	require
		interface_logic_not_void: interface_logic/=void
	local
		l_question_close_box: EV_CONFIRMATION_DIALOG
	do
		create l_question_close_box.make_with_text (label_confirm_abort_game)
		l_question_close_box.show_modal_to_window (current)

		if(l_question_close_box.selected_button.is_equal((create{EV_DIALOG_CONSTANTS}).ev_ok)) then
			interface_logic.abort_game
		end
	end

feature{NONE} --Dialog box implementation for information event

	--Launches the victory dialog
	victory_dialog
	do
		create victory_info_box
		victory_info_box.set_pixmap (pixmap_win_image)
		victory_info_box.show_modal_to_window (Current)
	end

	--Launches the defeat dialog
	defeat_dialog
	do
		create defeat_info_box
		defeat_info_box.set_pixmap (pixmap_lose_image)
		defeat_info_box.show_modal_to_window (Current)
	end

	--Launches the draw dialog
	draw_dialog
	do
		create draw_info_box
		draw_info_box.set_pixmap (pixmap_draw_image)
		draw_info_box.show_modal_to_window (Current)
	end

	--Advise dialog implementation for errors in input
	error_dialog(a_text: STRING)
	local
		l_error_dialog: EV_INFORMATION_DIALOG
	do
		create l_error_dialog.make_with_text (a_text)

		l_error_dialog.show_modal_to_window (current)
	end

feature{NONE} --Load the images

	--Load the close image
	pixmap_close_image: EV_PIXMAP
	once
		create Result
		Result.set_with_named_file (file_system.pathname_to_string (img_close))
	end

	--Load the win image
	pixmap_win_image: EV_PIXMAP
	once
		create Result
		Result.set_with_named_file (file_system.pathname_to_string (img_win))
	end

	--Load the lose image
	pixmap_lose_image: EV_PIXMAP
	once
		create Result
		Result.set_with_named_file (file_system.pathname_to_string (img_lose))
	end

	--Load the draw image
	pixmap_draw_image: EV_PIXMAP
	once
		create Result
		Result.set_with_named_file (file_system.pathname_to_string (img_draw))
	end


feature {NONE} --Checks for the inputs from menu panel

	--Checks the name in input
	check_name(a_name: STRING) : BOOLEAN
	do
		if (not a_name.is_equal ("")) then
			Result:=TRUE
		else
			error_dialog (error_name_message)
			Result:=FALSE
		end
	end

	--Checks the colour in input
	check_colour(a_colour: STRING) : BOOLEAN
	do
		if (not a_colour.is_equal ("")) then
			Result:=TRUE
		else
			error_dialog (error_color_message)
			Result:=FALSE
		end
	end

	--Checks the ip in input
	check_ip(a_ip: STRING) : BOOLEAN
	local
		l_list: LIST[STRING]
	do
		if (not a_ip.is_equal ("")) then
			l_list:=a_ip.split ('.')
			if(l_list.count=4)then
				if(l_list.at (1).is_integer and l_list.at (1).to_integer>=1 and l_list.at (1).to_integer<=255 and
				   l_list.at (2).is_integer and l_list.at (2).to_integer>=0 and l_list.at (2).to_integer<=255 and
				   l_list.at (3).is_integer and l_list.at (3).to_integer>=0 and l_list.at (3).to_integer<=255 and
				   l_list.at (4).is_integer and l_list.at (4).to_integer>=1 and l_list.at (4).to_integer<=254) then

					Result:=TRUE
				else
					error_dialog (error_ip_message)
					Result:=FALSE
				end
			else
				error_dialog (error_ip_message)
				Result:=FALSE
			end
		else
			error_dialog (error_ip_message)
			Result:=FALSE
		end
	end

	--Checks the ip in input
	check_port(a_port: STRING) : BOOLEAN
	do
		if(not a_port.is_equal ("") and a_port.is_integer)then
			if (a_port.to_integer>=1024 and a_port.to_integer<=65535) then
				Result:=TRUE
			else
				error_dialog (error_port_message)
				Result:=FALSE
			end
		else
			error_dialog (error_port_message)
			Result:=FALSE
		end
	end

	--Check Highlights a cell
	check_highlight_cell(a_id_cell: INTEGER): BOOLEAN
	do
		if(gui_board.at (a_id_cell)=1)then
			if(player1.get_player_id.is_equal (own_name_player))then
				Result:= TRUE
			else
				Result:=FALSE
			end
		elseif (gui_board.at (a_id_cell)=2) then
			if(player2.get_player_id.is_equal (own_name_player))then
				Result:=TRUE
			else
				Result:=FALSE
			end
		else
			Result:=FALSE
		end
	end

feature --Public Methods inherited from XX_IGUI

	--Allow to set the game status in the express field
	set_game_status(a_player1, a_player2: XX_PLAYER; is_active: BOOLEAN)
	do
		player1:= a_player1
		player2:= a_player2

		game_panel.set_name_player1 (player1.get_player_id)
		game_panel.set_color_player1 (player1.get_colour_piece)
		game_panel.set_score_player1 (player1.get_total_pieces)
		if(not player1.get_ip_net.is_equal (""))then
			game_panel.set_ip_player1 (player1.get_ip_net, player1.get_port_number)
		end

		game_panel.set_name_player2 (player2.get_player_id)
		game_panel.set_color_player2 (player2.get_colour_piece)
		game_panel.set_score_player2 (player2.get_total_pieces)
		if(not player2.get_ip_net.is_equal (""))then
			game_panel.set_ip_player2 (player2.get_ip_net, player2.get_port_number)
		end
	end

	--Allow to set the view of the timer in the gui
	set_timer(a_timer: XX_TIMER)
	do
		game_panel.set_timer (0, a_timer.get_timer_status)
	end

	--Allow to set the view of the board in the gui
	set_board(a_board: XX_GUI_BOARD)
	local
		l_board: ARRAY[INTEGER]
		l_i: INTEGER
	do
		create l_board.make_filled (0, 0, a_board.get_array.count-1)

		gui_board:=a_board.get_array

		from
			l_i:=0
		until
			l_i>= a_board.get_array.count
		loop
			if(a_board.get_array.at (l_i)=0)then
				l_board.put (a_board.get_array.at (l_i), l_i)
			elseif(a_board.get_array.at (l_i)=1)then
				if(player1.get_colour_piece.is_equal (string_color_ruby))then
					l_board.put (1, l_i)
				else
					l_board.put (3, l_i)
				end
			elseif(a_board.get_array.at (l_i)=2)then
				if(player2.get_colour_piece.is_equal (string_color_ruby))then
					l_board.put (1, l_i)
				else
					l_board.put (3, l_i)
				end
			elseif(a_board.get_array.at (l_i)=3)then
				l_board.put (5, l_i)
			elseif(a_board.get_array.at (l_i)=4)then
				l_board.put (6, l_i)
			end
			l_i:=l_i+1
		end

		if(highlighting)then
			if(a_board.get_array.at (id_cell_clicked)=1)then
				if(player1.get_colour_piece.is_equal (string_color_ruby))then
					l_board.put (2, id_cell_clicked)
				else
					l_board.put (4, id_cell_clicked)
				end
			elseif(a_board.get_array.at (id_cell_clicked)=2)then
				if(player2.get_colour_piece.is_equal (string_color_ruby))then
					l_board.put (2, id_cell_clicked)
				else
					l_board.put (4, id_cell_clicked)
				end
			end
		end

		game_panel.set_board(l_board)
	end

	--Allow to clean the view of the timer in the gui, bringing it back to the default status
	clean_timer
	do
		game_panel.clean_timer
	end

	--Allow to clean the view of the game status in the gui, bringing it back to the default status
	clean_game_status
	do
		game_panel.clean_game_status
	end

	--Allow to clean the view of the chat in the gui, bringing it back to the default status
	clean_chat
	do
		game_panel.clean_chat
	end

	--Allow to clean the view of the board in the gui, bringing it back to the default status
	clean_board
	do
		highlighting:=FALSE
		game_panel.clean_board
	end

	--Allow to clean the view of the main window/panel in the gui, bringing it back to the default status
	clean_main_window
	do
		menu_panel.clean_menu_panel
	end

	--Allow to clean the view of the game window/panel in the gui, bringing it back to the default status
	clean_game_window
	do
		clean_board
		clean_chat
		clean_game_status
		clean_timer
	end

	--Allow to clean the set enable the interaction with the player
	chat_enable(a_condition: BOOLEAN)
	do
		game_panel.chat_enable (a_condition)
		game_panel.set_chat_enable_button (a_condition)
	end

	--Allow to switch the panel from game panel to menu panel
	switch_panel_menu_to_game
	do
		main_container.prune (menu_panel)
		menu_panel.hide

		set_window_size (game_panel.width, game_panel.height)

		main_container.extend (game_panel)
		set_window_position
		game_panel.show
	end

	--Allow to switch the panel from game panel to menu panel
	switch_panel_game_to_menu
	do
		main_container.prune (game_panel)
		game_panel.hide

		set_window_size (menu_panel.width, menu_panel.height)

		main_container.extend (menu_panel)
		set_window_position
		menu_panel.show
	end

	--Allow to set the net manager (for the chat)
	set_net_to_chat(a_net_manager: XX_CHAT_TO_NET_INTERFACE)
	do
		interface_net:=a_net_manager
		chat.set_net_manager (a_net_manager)
	end

	--Allow to inform the player about his victory
	victory
	do
		victory_dialog
	end

	--Allow to inform the player about his defeat
	defeat
	do
		defeat_dialog
	end

	--Allow to inform the player about a draw status
	draw_status
	do
		draw_dialog
	end

feature{NONE} --Private Methods inherited from XX_IGUI

	--Allow to check if game panel is empty
	is_game_panel_empty:BOOLEAN
	do
		Result:=game_panel.is_game_panel_in_default_state
	end

	--Allow to check if menu panel is empty
	is_menu_panel_empty:BOOLEAN
	do
		Result:=menu_panel.is_menu_panel_empty
	end

	--Allow to check if game_status is empty
	is_game_status_empty:BOOLEAN
	do
		Result:=game_panel.is_game_status_empty
	end

	--Allow to check if network_status is empty
	is_network_status_empty:BOOLEAN
	do
		Result:=game_panel.is_network_status_empty
	end

	--Allow to check if board is empty
	is_board_empty:BOOLEAN
	do
		Result:=game_panel.is_board_empty
	end

	--Allow to check if timer is empty
	is_timer_empty:BOOLEAN
	do
		Result:=game_panel.is_timer_empty
	end

	--Allow to check if chat is empty
	is_chat_empty:BOOLEAN
	do
		Result:=game_panel.is_chat_empty
	end

	--Allow to check if chat is displayed
	is_chat_displayed:BOOLEAN
	do
		Result:=game_panel.is_chat_displayed
	end

	--Allow to check if menu_panel is switched with game_panel
	is_switched_panel_menu_to_game:BOOLEAN
	do
		Result:= ((game_panel.is_displayed=TRUE) and (menu_panel.is_displayed=FALSE))
	end

	--Allow to check if game_panel is switched with menu_panel
	is_switched_panel_game_to_menu:BOOLEAN
	do
		Result:= ((game_panel.is_displayed=FALSE) and (menu_panel.is_displayed=TRUE))
	end

	--Allow to check if network_manager is setted
	is_net_manager_setted(a_net_manager: XX_CHAT_TO_NET_INTERFACE):BOOLEAN
	do
		if(interface_net.is_equal(a_net_manager)) then
			Result:=TRUE
		else
			Result:=FALSE
		end
	end

	--Allow to check if victory message is displayed
	is_victory_message_displayed:BOOLEAN
	do
		Result:=victory_info_box.is_displayed
	end

	--Allow to check if defeat message is displayed
	is_defeat_message_displayed:BOOLEAN
	do
		Result:=defeat_info_box.is_displayed
	end

	--Allow to check if draw status message is displayed
	is_draw_status_message_displayed:BOOLEAN
	do
		Result:=draw_info_box.is_displayed
	end

feature --Public Method inherited from XX_CHAT_TO_GUI_INTERFACE

	--Sets the message received from net in the chat field
	set_chat(a_chat_message: STRING)
	do
		game_panel.set_chat_text (a_chat_message)
	end

feature{NONE} --Private Methods inherited from XX_CHAT_TO_GUI_INTERFACE

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
