note
	description: "Interface between gui and chat"
	author: "Team Milano2"
	date: "13-11-12"
	revision: "0.2"

deferred class
	XX_GUI_TO_CHAT_INTERFACE
feature{NONE}	--Attribute
	net_manager: XX_NET

feature --Deferred method implemented in XX_CHAT

 	--Sended message to chat
 	send_chat_message(a_chat_message: STRING)
	require
		chat_message_not_void: a_chat_message/=Void
		chat_message_not_empty: a_chat_message.is_empty = FALSE
	deferred
	end

	--Allow to set the network manager
	set_net_manager(a_net: XX_NET)
	require
		net_manager_not_void: a_net/=Void
	deferred
	ensure
		net_manager_exists: net_manager=a_net
	end
end
