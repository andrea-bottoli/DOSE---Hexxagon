note
	description: "Interface between gui and chat"
	author: "Team Milano2"
	date: "13-11-2012"
	revision: "0.2"

deferred class
	XX_CHAT_TO_GUI_INTERFACE

feature --Deferred method to set message in to GUI

	-- Sets the message in the chat field
 	set_chat(a_chat_message: STRING)
	require
		chat_message_not_void: a_chat_message/=Void
		chat_message_not_empty: a_chat_message.is_empty = FALSE
	deferred
	ensure
		chat_message_is_visible: is_chat_message_visible=FALSE
	end

feature{NONE} --Private Method

	--Check if the message is visible
	is_chat_message_visible:BOOLEAN
	deferred
	end
end
