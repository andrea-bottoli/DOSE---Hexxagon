note
	description: "graphic inteface of the lobby's window global chat"
	author: "Angel Kyriako"
	date: "14/12/2012"
	revision: "3.0"

class
	G10_LOBBY_GLOBAL_CHAT

inherit
	EV_FIXED
	G10_LOBBY_CONSTANTS
	undefine
		copy , is_equal, default_create
	end

create
	make

-- attributes
feature {NONE}
	chat_new_message: EV_TEXT_FIELD -- the text field that the user is going to type
	chat_log: EV_RICH_TEXT -- the text area where the log is displayed
	send_button: EV_FIXED -- the button to press for sending a text message
	message_count: INTEGER
feature {ANY}-- constructor

	make(lobby : G10_LOBBY_MAIN)
	require
		lobby_not_null : lobby /= void
	do
		-- create the panel
		default_create
		set_minimum_size (south_panel_width, south_panel_height)
		set_background_pixmap (pix_empty_background)

		-- init its subcomponents and add them to panel
		init_chat_log(lobby)
		init_chat_new_message(lobby)
		init_send_button(lobby)
		message_count := 0
	end


feature{NONE} --mutators

	init_chat_log(lobby : G10_LOBBY_MAIN) -- inits log text area and addes it to panel
	do
		create chat_log
		chat_log.set_text ("Dear "+lobby.get_players_name+"welcome to the carcassonne game lobby.%N%T%T%T%THave fun :D%N%N%N" )
		chat_log.set_minimum_size (chat_log_width, chat_log_height)
		chat_log.disable_edit
		chat_log.pointer_enter_actions.extend (agent update_lobby(lobby))
		chat_log.pointer_leave_actions.extend (agent update_lobby(lobby))
		extend_with_position_and_size (chat_log, chat_log_start_width, chat_log_start_height, chat_log_width, chat_log_height)
	end

	init_chat_new_message(lobby : G10_LOBBY_MAIN) -- inits new message field and addes it to panel
	do
		create chat_new_message
		chat_new_message.align_text_center
		chat_new_message.set_text ("")
		chat_new_message.set_minimum_size (chat_new_message_width, chat_new_message_height)
		chat_new_message.pointer_enter_actions.extend (agent update_lobby(lobby))
		chat_new_message.pointer_leave_actions.extend (agent update_lobby(lobby))
		extend_with_position_and_size (chat_new_message, chat_new_message_start_width, chat_new_message_start_height, chat_new_message_width, chat_new_message_height)
	end

	init_send_button(lobby : G10_LOBBY_MAIN)
	do
		create send_button
		set_simple_send_button
		send_button.pointer_button_release_actions.extend (agent send_text(?, ?, ?, ?, ?, ?, ?, ?, lobby))
		send_button.pointer_button_press_actions.extend (agent set_selected_send_button(?, ?, ?, ?, ?, ?, ?, ?))
		send_button.pointer_enter_actions.extend (agent set_highlighted_send_button)
		send_button.pointer_leave_actions.extend (agent set_simple_send_button)
		extend_with_position_and_size (send_button, send_button_start_width, send_button_start_height, send_button_width, send_button_height)
	end

	send_text(a_a, a_b, a_c: INTEGER_32; a_d, a_e, a_f: REAL_64; a_g, a_h: INTEGER_32 lobby : G10_LOBBY_MAIN)
	do
		message_count := message_count + 1
		print (lobby.get_players_name+": "+chat_new_message.text+"%N")
		lobby.update_lobby(lobby.get_players_name+": "+chat_new_message.text+"%N")
		set_simple_send_button

		from
		until lobby.get_lobby_logic.get_global_chat_log.count = message_count
		loop
			chat_log.append_text (lobby.get_lobby_logic.get_global_chat_log_msg (message_count))
			message_count := message_count + 1
		end
	end

	update_lobby(lobby: G10_LOBBY_MAIN)
	do
		lobby.update_lobby(void)
		from
		until lobby.get_lobby_logic.get_global_chat_log.count = message_count
		loop
			chat_log.append_text (lobby.get_lobby_logic.get_global_chat_log_msg (message_count))
			message_count := message_count + 1
		end
	end

	set_simple_send_button
	do
		send_button.set_background_pixmap (pix_send_button)
	end

	set_highlighted_send_button
	do
		send_button.set_background_pixmap (pix_highlighted_send_button)
	end

	set_selected_send_button(a_a, a_b, a_c: INTEGER_32; a_d, a_e, a_f: REAL_64; a_g, a_h: INTEGER_32)
	do
		send_button.set_background_pixmap (pix_selected_send_button)
	end


end
