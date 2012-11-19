note
	description: "Interface for communication between chat and net"
	author: "Team Milano2"
	date: "14-11-2012"
	revision: "0.3"

deferred class
	XX_CHAT_TO_NET_INTERFACE

feature --Deferred Metods

	--Allow to send a new chat message throught the net to the other host
	send_chat_message(a_chat_message: STRING)
	require
		chat_message_not_void: is_chat_message_void(a_chat_message)=FALSE
		chat_message_not_empty: is_chat_message_empty(a_chat_message)=FALSE
	deferred
	ensure
		chat_message_is_visible: is_chat_message_visible(a_chat_message)=TRUE
	end

	--Allow to set the chat manager
	set_chat_manager(a_chat_manager: XX_CHAT)
	require
		a_chat_manager_not_void: a_chat_manager/=Void
	deferred
	ensure
		chat_manager_not_null: is_chat_manager_setted=TRUE
	end

feature{NONE} --Private Method

	--Checks if the chat message is visible
	is_chat_message_visible(a_chat_message: STRING):BOOLEAN
	deferred
	end

	--Checks if the message is Void
	is_chat_message_void(a_chat_message: STRING):BOOLEAN
	deferred
	end

	--Checks if the message is empty
	is_chat_message_empty(a_chat_message: STRING):BOOLEAN
	deferred
	end

	--Checks if the chat manager is setted
	is_chat_manager_setted:BOOLEAN
	deferred
	end

end
