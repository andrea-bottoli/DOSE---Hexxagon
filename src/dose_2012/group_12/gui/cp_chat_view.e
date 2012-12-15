note
	description: "The GUI component which will handle the view of the chat."
	author: "Christos Petropoulos"

class
	CP_CHAT_VIEW

inherit
	EV_FIXED
	CP_MAIN_WINDOW_INTERFACES
	export
		{NONE} all
	undefine
		default_create, copy,is_equal
	end

create
	make

feature -- Initilization

	make (a_sender_receiver: CP_CHAT_SENDER_RECEIVER)
			-- Initializes the component
		local
			black : EV_COLOR
		do
			sender_receiver := a_sender_receiver
			sender_receiver.set_receive_action (agent add_new_message_by_string)
			sender_receiver.launch

			default_create
			create inputbox.default_create
			create chat_box.default_create
			create black.make_with_8_bit_rgb (0, 0, 0)
			chat_box.set_background_color (black)
			black.set_rgb_with_8_bit (12, 255, 12)
			chat_box.set_foreground_color (black)
			create send_btn.make_with_text_and_action ("Send Message", agent send_message)
			chat_box.disable_edit

			current.extend_with_position_and_size (inputbox,0,300,100,25)
			current.extend_with_position_and_size (chat_box, 0, 0, 100, 300)
			current.extend_with_position_and_size (send_btn,0,325, 100, 25)
		end

feature -- Update chat view


	resize_view(new_width:INTEGER)
	do
		current.set_item_width (chat_box, new_width)
		current.set_item_width (inputbox, new_width)
		current.set_item_width (send_btn, new_width)
	end


	add_new_message(message:CP_MESSAGE)
			-- Adds the new message to the chat view
		require
			message_not_void : message/=Void
		local
			new_item : EV_LIST_ITEM
			msg: STRING
		do
			create msg.make_from_string (message.get_message)

			chat_box.insert_text (msg)
		end


	add_new_message_by_string(name,message:STRING)
			-- Adds the new message to the chat view
		require
			message_not_void : message/=Void
		local
			time: TIME
		do
			create time.make_now
			chat_box.append_text (name)
			chat_box.append_text (" (")
			chat_box.append_text (time.debug_output)
			chat_box.append_text (" ) :")
			chat_box.append_text (message)
			chat_box.append_text ("%N")
			chat_box.scroll_to_end
		end

feature -- Send message event

	send_message
			-- Sends the message
		local
			new_message: CP_MESSAGE
		do
			if(inputbox.text.count>0)then
				-- We need player names...
				add_new_message_by_string("PLAYER",inputbox.text)
				create new_message.make_msg ("PLAYER", inputbox.text)
				inputbox.set_text ("")

				-- Send the message to the other player
				sender_receiver.send_message (new_message)
			end
		end

feature -- Attributes

chat_box: EV_TEXT
inputbox: EV_TEXT_FIELD
send_btn: EV_BUTTON

sender_receiver: CP_CHAT_SENDER_RECEIVER

end
