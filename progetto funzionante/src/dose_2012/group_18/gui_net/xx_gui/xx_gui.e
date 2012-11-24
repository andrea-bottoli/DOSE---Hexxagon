note
description: "Class that implements the gui"
author: "Team Milano2"
date: "18-11-2012"
revision: "0.5"

class
XX_GUI

inherit
	EV_TITLED_WINDOW
		redefine
			initialize,
			is_in_default_state
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

	INTERFACE_NAMES
		export
			{NONE} all
		undefine
			default_create,
			copy
		end

create
	make,
	make_with_logic

feature {NONE} -- Constructor
	-- Initialization for "Current".
	make
	do
		default_create
	end

	make_with_logic(a_logic: XX_HEXXAGON)
	do
		set_interface_logic(a_logic)
		default_create
	end


feature{NONE} --Attributes of the gui

	--There are the references to the objects relative to net, chat and logic
	interface_net: XX_INET
	interface_logic: XX_ILOGIC

	--Attribute for the position of the window
	window_width: INTEGER 		-- Initial width for this window.
	window_height: INTEGER		-- Initial height for this window.
	screen: EV_SCREEN			-- Menager of the screen

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

	game_window: XX_GUI
	menu_window: XX_GUI

feature {NONE} --Initialisation
	--Initialize the window
	initialize
	do
		Precursor {EV_TITLED_WINDOW}

		--Attached agent to the button X of the window
		close_request_actions.extend (agent close_window)

		window_width:= 800
		window_height:= 400

		create screen

		--Set position in the middle of the screen
		set_window_position
		set_title (window_title)
		set_size (window_width, window_height)

		disable_user_resize

		-- Create and add the main container.
		build_main_container
	end

	--Is the window in its default state
	-- (as stated in `initialize')
	is_in_default_state: BOOLEAN
	do
		Result := (current.width = Window_width) and then
				  (current.height = Window_height) and then
				  (current.title.is_equal (Window_title))
	end


feature {NONE}	--Set Methods

	--Set position the window in the middle of the screen
	set_window_position
		local
			x_pos: REAL
			y_pos: REAL
		do
			x_pos:= screen.width.to_real/2 - window_width.to_real/2
			y_pos:= screen.height.to_real/3 - window_height.to_real/2
			current.set_position (x_pos.truncated_to_integer, y_pos.truncated_to_integer)
		end

	--Set the size of the screen
	set_window_size(a_width, a_height: INTEGER)
		require
			width_is_valid: a_width>0
			height_is_valid: a_height>0
		do
			current.set_size (a_width, a_height)
		ensure
			size_is_setted: current.width=a_width and current.height=a_height
		end

	--Set the interface to the logic
	set_interface_logic(a_logic: XX_HEXXAGON)
	require
		logic_not_void: a_logic/=Void
	do
		interface_logic:=a_logic
	end

feature {NONE}	--Implementation of main container of the window
	main_container: EV_HORIZONTAL_BOX	--Main container of the window for the widgets
	second_container: EV_VERTICAL_BOX	--Second container of the window for the widgets
	notepad: EV_NOTEBOOK


	--Create and add the Main Container
	build_main_container
		require
			main_container_not_exist: main_container=Void
			second_container_not_exist: second_container=Void
		local
			l_color: EV_COLOR
			l_label: EV_LABEL
			l_button: EV_BUTTON
			l_font: EV_FONT
			l_s: STRING
			l_tx: EV_TEXT
			l_i: INTEGER
		do
				--create main container
			create main_container
			create notepad.default_create

				--set background color of the container
			create l_color.make_with_8_bit_rgb (100, 250, 75)
			main_container.set_background_color (l_color)

				--Insert the second container in the firs position of main container
			create second_container
			main_container.extend (second_container)

				--create a label, set font/color and add it to the condainer
			create l_label.make_with_text ("HEXXAGON DOSE PROJECT 2012")
			create l_font.make_with_values (5, 8, 11, 40)
			create l_color.make_with_8_bit_rgb (255,20,147)
			l_label.set_font (l_font)
			l_label.set_foreground_color (l_color)
			second_container.extend (l_label)

				--Insert the other button in the main gui
			create l_button.make_with_text ("zio badile")
			create l_tx.make_with_text ("PPPPPPPP")

			from
				l_i := 1
			until
				l_i >= 20
			loop
				l_tx.append_text ("%N")
				l_tx.append_text ("[00:")
				l_s:=""
				l_s.append_integer (l_i)
				l_tx.append_text (l_s)
				l_tx.append_text ("]- XXXX")
				l_i := l_i + 1
			end

			--sc.extend (tx)
			second_container.extend (l_tx)

				--create a button, set it and add it to the container
			create l_button.make_with_text ("cacca")
			main_container.extend (l_button)

			main_container.extend (notepad)

			create l_button.make_with_text ("PLUTO")
			notepad.extend (l_button)
			notepad.set_item_text (l_button,"PLUTO")

			create l_button.make_with_text ("PIPPO")
			notepad.extend (l_button)
			notepad.set_item_text (l_button,"PIPPO")



			--add the container to the main_window
			current.extend (main_container)
			--current.disable_user_resize
		ensure
			main_container_created: main_container/=Void and then (not main_container.is_empty)
		end



feature {NONE}	--Implementation window close
	close_window
		local
			question_close_box: EV_CONFIRMATION_DIALOG
		do
			create question_close_box.make_with_text (label_confirm_close_window)
			question_close_box.show_modal_to_window (Current)

			if(question_close_box.selected_button.is_equal((create{EV_DIALOG_CONSTANTS}).ev_ok)) then
					--Destroy the confirmation dialog window
				destroy;

					--Destroy the application
				(create{EV_ENVIRONMENT}).application.destroy
			end
		end

feature{NONE} --Implementation dialog box for information event
	show_about_dialog
		local
--			about_info_box: EV_INFORMATION_DIALOG
		do
--			create about_info_box.make_with_text (label_about)
--			about_info_box.set_title (label_about_title)
--			about_info_box.show_modal_to_window (Current)
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
