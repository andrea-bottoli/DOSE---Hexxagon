note
	description: "Interface between gui and chat"
	author: "Team Milano2"
	date: "15-11-2012"
	revision: "0.3"

deferred class
	XX_GUI_TO_CHAT_INTERFACE

feature --Deferred method implemented in XX_CHAT

 	--Sends a message to chat
 	send_chat_message(a_chat_message: STRING)
	require
		chat_message_to_gui_not_void: is_chat_message_to_gui_void(a_chat_message)=FALSE
		chat_message_to_gui_not_empty: is_chat_message_to_gui_empty(a_chat_message)=FALSE
	deferred
	end

	--Allow to set the network manager
	set_net_manager(a_net: XX_CHAT_TO_NET_INTERFACE)
	require
		net_manager_not_void: a_net/=Void
	deferred
	ensure
		net_manager_is_setted: is_net_manager_setted=TRUE
	end

feature{NONE}	-- Private methods

	--Verifies if net manager is setted
	is_net_manager_setted: BOOLEAN
	deferred
	end

	--Checks if the message is Void
	is_chat_message_to_gui_void(a_chat_message: STRING):BOOLEAN
	deferred
	end

	--Checks if the message is empty
	is_chat_message_to_gui_empty(a_chat_message: STRING):BOOLEAN
	deferred
	end
end
