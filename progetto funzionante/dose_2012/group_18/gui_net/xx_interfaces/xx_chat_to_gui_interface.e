note
	description: "Summary description for {XX_CHAT_TO_GUI_INTERFACE}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

deferred class
	XX_CHAT_TO_GUI_INTERFACE
feature --Deferred method to set message in to GUI
 	set_chat(a_chat_message: STRING)
	require
		chat_message_not_void: a_chat_message/=Void
		chat_message_not_empty: a_chat_message.is_empty = FALSE
	deferred
	end
end
