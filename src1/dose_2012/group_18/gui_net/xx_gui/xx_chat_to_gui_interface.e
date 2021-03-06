note
	description: "Interface between gui and chat"
	author: "Team Milano2"
	date: "15-11-2012"
	revision: "0.3"

deferred class
	XX_CHAT_TO_GUI_INTERFACE

feature --Deferred method to set message in to GUI

	-- Sets the message in the chat field
 	set_chat(a_chat_message: STRING)
	require
		chat_message_not_void: is_chat_message_void(a_chat_message)=FALSE
		chat_message_not_empty: is_chat_message_empty(a_chat_message)=FALSE
	deferred
	end

feature{NONE} --Private Method

	--Checks if the message is Void
	is_chat_message_void(a_chat_message: STRING):BOOLEAN
	deferred
	end

	--Checks if the message is empty
	is_chat_message_empty(a_chat_message: STRING):BOOLEAN
	deferred
	end
end
