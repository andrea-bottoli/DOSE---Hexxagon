note
	description: "Summary description for {XX_GAME_PANEL}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	XX_GAME_PANEL

inherit
	EV_HORIZONTAL_BOX

	XX_GUI_CONSTANTS
	undefine
		default_create,
		copy,
		is_equal
	end

create
	make_game_panel

feature {NONE} --Constructor of the class

	make_game_panel(a_gui: XX_GUI)
	do
		default_create
		gui:=a_gui
		create_components
		build_panel
	end

feature	{NONE}	--Attributes

	--Panels
	game_info_panel: EV_VERTICAL_BOX
	game_status_panel: EV_HORIZONTAL_BOX
	chat_panel: EV_FRAME
	chat_output_panel: EV_VERTICAL_BOX
	chat_input_panel: EV_HORIZONTAL_BOX
	player1_panel: XX_PLAYER_STATUS_PANEL
	player2_panel: XX_PLAYER_STATUS_PANEL
	timer_panel: EV_FRAME

	--Components that compose the game info
	timer: EV_LABEL
	chat_output: EV_TEXT
	chat_input: EV_TEXT
	leave_game_button: EV_BUTTON
	send_chat_message_button: EV_BUTTON
	chat_enable_button: EV_TOGGLE_BUTTON

	--References
	gui: XX_GUI
	board_panel: XX_HEXAGONAL_GUI_BOARD

feature {NONE}	--Internal methods to create and populate the panel

	--Create the panel components
	create_components
	do
		create game_info_panel
		create game_status_panel
		create chat_panel
		create chat_output_panel
		create chat_input_panel
		create player1_panel.make_panel
		create player2_panel.make_panel
		create timer_panel
		create timer
		create chat_output
		create chat_input
		create leave_game_button.make_with_text (button_leave_game)
		create send_chat_message_button.make_with_text (button_send_chat_message)
		create chat_enable_button.make_with_text_and_action (button_chat_enable, agent chat_enable_agent)
		create board_panel.make_hexagonal_gui_board(current)
	end

	--Method that builds the panel
	build_panel
	do
		add_components
		set_components_size
		set_style_components

		timer_panel.set_text (title_timer_frame)
		chat_panel.set_text (title_chat_frame)

		set_agents
		chat_enable (FALSE)
	end

	--Sets the positions of the panel components
	add_components
	do
		game_status_panel.extend (player1_panel)
		game_status_panel.extend (player2_panel)

		timer_panel.extend(timer)

		chat_input_panel.extend (chat_input)
		chat_input_panel.extend (send_chat_message_button)
		chat_output_panel.extend (chat_output)
		chat_output_panel.extend (chat_input_panel)
		chat_panel.extend (chat_output_panel)

		game_info_panel.extend(game_status_panel)
		game_info_panel.extend(timer_panel)
		game_info_panel.extend(chat_panel)
		game_info_panel.extend (chat_enable_button)
		game_info_panel.extend (leave_game_button)

		current.extend (board_panel)
		current.extend (game_info_panel)
	end

	--Sets the size of the components
	set_components_size
	do
		game_status_panel.set_minimum_size (300, 150)

		timer_panel.set_minimum_size(300,110)
		timer.set_minimum_size (300, 110)

		chat_output.set_minimum_size (290, 200)
		chat_input_panel.set_minimum_size (300, 40)
		chat_input.set_minimum_size (250, 40)
		send_chat_message_button.set_minimum_size (40, 40)
		chat_enable_button.set_minimum_size (300, 30)
		leave_game_button.set_minimum_size (300, 50)
	end

	--Sets the style of the components
	set_style_components
	local
		l_font: EV_FONT
		l_color: EV_COLOR
	do
		create l_font
		create l_color

		game_info_panel.set_padding (2)

		game_status_panel.set_border_width (5)
		game_status_panel.set_padding_width (5)

		l_color.set_rgb_with_8_bit (0, 0, 0)
		timer.set_background_color (l_color)
		l_color.set_rgb_with_8_bit (255, 255, 255)
		timer.set_foreground_color (l_color)

		l_color.set_rgb_with_8_bit (229, 229, 255)
		chat_output.set_background_color (l_color)
		l_font.set_family ({EV_FONT_CONSTANTS}.Family_sans)
		l_font.set_weight ({EV_FONT_CONSTANTS}.Weight_regular)
		l_font.set_shape ({EV_FONT_CONSTANTS}.Shape_regular)
		l_font.set_height_in_points (9)
		l_font.preferred_families.extend ("Verdana")
		chat_output.set_font (l_font)
		chat_output.disable_edit

		l_font.set_family ({EV_FONT_CONSTANTS}.Family_sans)
		l_font.set_weight ({EV_FONT_CONSTANTS}.Weight_regular)
		l_font.set_shape ({EV_FONT_CONSTANTS}.Shape_regular)
		l_font.set_height_in_points (9)
		l_font.preferred_families.extend ("Verdana")
		chat_input.set_font (l_font)
		chat_input_panel.set_padding (5)

		l_color.set_rgb_with_8_bit (255, 0, 0)
		l_font.set_family ({EV_FONT_CONSTANTS}.Family_sans)
		l_font.set_weight ({EV_FONT_CONSTANTS}.Weight_black)
		l_font.set_shape ({EV_FONT_CONSTANTS}.Shape_regular)
		l_font.set_height_in_points (15)
		chat_enable_button.set_foreground_color (l_color)
		chat_enable_button.set_font (l_font)

		l_color.set_rgb_with_8_bit (255, 0, 0)
		l_font.set_family ({EV_FONT_CONSTANTS}.Family_sans)
		l_font.set_weight ({EV_FONT_CONSTANTS}.Weight_black)
		l_font.set_shape ({EV_FONT_CONSTANTS}.Shape_regular)
		l_font.set_height_in_points (24)
		leave_game_button.set_font (l_font)
		leave_game_button.set_foreground_color (l_color)

		current.set_padding_width (2)

		--Disables the auto expandable of the components in the panels
		chat_output_panel.disable_homogeneous
		chat_output_panel.disable_item_expand (chat_input_panel)
		chat_input_panel.disable_homogeneous
		chat_input_panel.disable_item_expand (chat_input)
		chat_input_panel.disable_item_expand (send_chat_message_button)

		game_info_panel.disable_homogeneous
		game_info_panel.disable_item_expand (game_status_panel)
		game_info_panel.disable_item_expand (timer_panel)
		game_info_panel.disable_item_expand (chat_enable_button)
		game_info_panel.disable_item_expand (leave_game_button)

		current.disable_homogeneous
		current.disable_item_expand (board_panel)
		current.disable_item_expand (game_info_panel)
	end

	--Set the agents of the panel components
	set_agents
	do
		leave_game_button.select_actions.extend (agent leave_game)
		send_chat_message_button.select_actions.extend (agent write_chat_message)
		chat_input.key_release_actions.extend (agent write_with_pressed_key_chat_message)
	end

	--Set the chat enable agent
	chat_enable_agent
	do
		if (chat_enable_button.is_selected) then
			chat_enable (TRUE)
		else
			chat_enable(FALSE)
		end
	end


feature {XX_GUI} --Methods used by XX_GUI
	--Sets the board
	set_board(a_board_array: ARRAY[INTEGER])
	do
		board_panel.set_board(a_board_array)
	end

	--Sets the condition in chat_enable_button
	set_chat_enable_button(a_cond: BOOLEAN)
	do
		if(a_cond) then
			chat_enable_button.disable_sensitive
		else
			chat_enable_button.enable_sensitive
		end
	end

	--Cleans the boar
	clean_board
	do
		board_panel.clean_board
	end

	--Cleans the game status
	clean_game_status
	do
		player1_panel.clean_player_status
		player2_panel.clean_player_status
	end

	--Cleans the timer
	clean_timer
	do
		timer.set_text ("--:--")
	end

	--Cleans the timer
	clean_chat
	do
		chat_output.remove_text
		chat_input.remove_text
	end

	--Enables the chat
	chat_enable(a_cond: BOOLEAN)
	do
		if(a_cond=FALSE)then
			chat_panel.disable_sensitive
		else
			chat_panel.enable_sensitive
		end
	end

feature {XX_HEXAGONAL_GUI_BOARD} --Methods used by XX_HEXAGONAL_GUI_BOARD

	--Sends the id of the clicked cell
	send_id_clicked_cell(a_id_cell: INTEGER)
	do
		gui.send_id_clicked_cell(a_id_cell)
	end

feature{XX_GUI} --Method for append a chat message in the chat_panel

	set_chat_text(a_chat_message: STRING)
	do
		chat_output.append_text (a_chat_message)
		chat_output.scroll_to_end
	end

feature{NONE} --Actions attached to the buttons

	--Switch back to menu
	leave_game
	do
		gui.abort_game
	end

	--Write message in chat when user click on the send_message_button
	write_chat_message
	local
		l_message: STRING
	do
		if(not chat_input.text.is_equal ("") and not chat_input.text.is_empty)then
			l_message:=chat_input.text
			if(not l_message.at (l_message.count).is_alpha_numeric)then
				l_message.remove_tail (1)
			end

			gui.send_chat_message (l_message)
			chat_input.remove_text
		else
			chat_input.remove_text
		end
	end

	--Write message in chat when user press "Enter" key on keyboard and chat_input is focused
	write_with_pressed_key_chat_message(a_key_pressed: EV_KEY)

	do
		if(a_key_pressed.code = {EV_KEY_CONSTANTS}.Key_enter)then
			write_chat_message
		end
	end

	--Write message in chat when user release "Enter" key on keyboard and chat_input is focused
	write_with_release_key_chat_message(a_key_pressed: EV_KEY)
	do
		if(a_key_pressed.code = {EV_KEY_CONSTANTS}.Key_enter)then
			write_chat_message
		end
	end


feature {XX_GUI} --Setter Methods

	--Sets the name of player1
	set_name_player1(a_name_p: STRING)
	do
		player1_panel.set_name_player (a_name_p)
	end

	--Sets the name of player2
	set_name_player2(a_name_p: STRING)
	do
		player2_panel.set_name_player (a_name_p)
	end

	--Sets the color of player1
	set_color_player1(a_color_p: STRING)
	do
		player1_panel.set_color_player (a_color_p)
	end

	--Sets the color of player2
	set_color_player2(a_color_p: STRING)
	do
		player2_panel.set_color_player (a_color_p)
	end

	--Sets the score of player1
	set_score_player1(a_score_p: INTEGER)
	do
		player1_panel.set_score_player (a_score_p)
	end

	--Sets the score of player2
	set_score_player2(a_score_p: INTEGER)
	do
		player2_panel.set_score_player (a_score_p)
	end

	--Sets the ip of player1
	set_ip_player1(a_ip_p: STRING; a_port_p: INTEGER)
	do
		player1_panel.set_ip_player (a_ip_p, a_port_p)
	end

	--Sets the ip of player2
	set_ip_player2(a_ip_p: STRING; a_port_p: INTEGER)
	do
		player2_panel.set_ip_player (a_ip_p, a_port_p)
	end

	--Sets the timer
	set_timer(a_min, a_sec: INTEGER)
	require
		min_valid: a_min>=0 and a_min<=59
		sec_valid: a_sec>=0 and a_sec<=59
	local
		l_min: STRING
		l_sec: STRING
		l_color: EV_COLOR
		l_font: EV_FONT
	do
		create l_color
		create l_font

		l_min:=""
		l_sec:=""

		if(a_min<10)then
			l_min.append ("0")
		end
		l_min.append_integer (a_min)

		if(a_sec<10)then
			l_sec.append ("0")
		end
		l_sec.append_integer (a_sec)

		if(a_sec<=20 and a_sec>10)then
			l_color.set_rgb_with_8_bit (255, 255, 0)
			l_font.set_height_in_points (55)
		elseif (a_sec<=10) then
			l_color.set_rgb_with_8_bit (255, 0, 0)
			l_font.set_height_in_points (70)
		else
			l_color.set_rgb_with_8_bit (255, 255, 255)
			l_font.set_height_in_points (40)
		end

		l_font.set_family ({EV_FONT_CONSTANTS}.Family_sans)
		l_font.set_weight ({EV_FONT_CONSTANTS}.weight_black)
		l_font.set_shape ({EV_FONT_CONSTANTS}.Shape_regular)
		l_font.preferred_families.extend ("Arial Black")
		timer.set_font (l_font)
		timer.set_foreground_color (l_color)
		timer.set_text (l_min+":"+l_sec)
	end


feature{XX_GUI} --Methods for checking contracts

	--Allow to check if game_status is empty
	is_game_status_empty:BOOLEAN
	do
		Result:=(player1_panel.is_empty or player1_panel.is_player_status_empty or
		   		 player2_panel.is_empty or player2_panel.is_player_status_empty)
	end

	--Allow to check if network_status is empty
	is_network_status_empty:BOOLEAN
	do
		Result:=(player1_panel.is_empty or player1_panel.is_network_status_empty or
		   		 player2_panel.is_empty or player2_panel.is_network_status_empty)
	end

	--Allow to check if board is empty
	is_board_empty:BOOLEAN
	do
		Result:= board_panel.is_empty or board_panel.is_board_empty
	end

	--Allow to check if timer is empty
	is_timer_empty:BOOLEAN
	do
		Result:= timer_panel.is_empty or timer.text.is_empty
	end

	--Allow to check if chat is empty
	is_chat_empty:BOOLEAN
	do
		Result:= chat_panel.is_empty or chat_output.text.is_empty
	end

	--Allow to check if chat is displayed
	is_chat_displayed:BOOLEAN
	do
		Result:= chat_panel.is_displayed and chat_output.is_displayed and chat_input.is_displayed
	end
end
