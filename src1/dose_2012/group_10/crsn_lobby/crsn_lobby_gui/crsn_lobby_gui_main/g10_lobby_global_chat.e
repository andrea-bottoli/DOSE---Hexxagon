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
	chat_log: EV_LIST -- the text area where the log is displayed

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
--		init_chat_new_message
--		init_chat_log

	end


feature{NONE} --mutators

	init_chat_new_message -- inits new message field and addes it to panel
	do
		create chat_new_message
		chat_new_message.align_text_center
		chat_new_message.set_minimum_size (chat_new_message_width, chat_new_message_height)
		extend_with_position_and_size (chat_new_message, chat_new_message_width, chat_new_message_height,
													chat_new_message_start_width, chat_new_message_start_height)
	end

	init_chat_log -- inits log text area and addes it to panel
	do
		create chat_log
		chat_log.set_minimum_size (chat_log_width, chat_log_height)
		extend_with_position_and_size (chat_log, chat_log_width, chat_log_height,
													chat_log_start_width, chat_log_start_height)
	end

	append_new_message_to_log(msg: STRING)
	do

	end

end
