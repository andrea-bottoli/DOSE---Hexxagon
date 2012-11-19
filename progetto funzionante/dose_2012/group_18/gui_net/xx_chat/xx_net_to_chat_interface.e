note
	description: "Interface between net and chat"
	author: "Team Milano2"
	date: "15-11-2012"
	revision: "0.3"

deferred class
	XX_NET_TO_CHAT_INTERFACE

feature --Deferred method to send messages

	-- Sets the chat message to be displayed
	set_chat_message(a_chat_message: STRING)
	require
		chat_message_to_net_not_void: is_chat_message_to_net_void(a_chat_message)=FALSE
		chat_message_to_net_not_empty: is_chat_message_to_net_empty(a_chat_message)=FALSE
	deferred
	ensure
		chat_message_is_visible: is_chat_message_visible(a_chat_message)=TRUE
	end

feature{NONE}	--Deferred Private Methods

	--Checks if the message is Void
	is_chat_message_to_net_void(a_chat_message: STRING):BOOLEAN
	deferred
	end

	--Checks if the message is empty
	is_chat_message_to_net_empty(a_chat_message: STRING):BOOLEAN
	deferred
	end

	--Check if the message is visible
	is_chat_message_visible(a_chat_message: STRING):BOOLEAN
	deferred
	end
end
