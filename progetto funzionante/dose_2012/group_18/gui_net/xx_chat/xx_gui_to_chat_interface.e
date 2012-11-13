note
	description: "Summary description for {XX_GUI_TO_CHAT_INTERFACE}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

deferred class
	XX_GUI_TO_CHAT_INTERFACE
feature{NONE}	--Attribute
--	net_manager: XX_NET

feature --Deferred method to send message through NET
 	send_chat_message(a_chat_message: STRING)
	require
		chat_message_not_void: a_chat_message/=Void
		chat_message_not_empty: a_chat_message.is_empty = FALSE
	deferred
	end
	--Allow to set the network manager
--	set_net_manager(a_net: XX_NET)
--		deferred
--		end
end
