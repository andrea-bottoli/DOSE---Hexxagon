note
	description: "Summary description for {XX_NET_TO_CHAT_INTERFACE}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

deferred class
	XX_NET_TO_CHAT_INTERFACE
feature --Deferred method to send messages

	-- Sets the chat message to be displayed
	set_chat_message(a_chat_message: STRING)
	require
		chat_message_not_void: a_chat_message/=Void
		chat_message_not_empty: a_chat_message.is_empty = FALSE
	deferred
	ensure
		chat_message_is_visible: not a_chat_message.is_equal ("")
	end
end
