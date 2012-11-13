note
	description: "Summary description for {XX_CHAT_TO_NET_INTERFACE}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

deferred class
	XX_CHAT_TO_NET_INTERFACE

feature{NONE}	--Attribute
--	chat_manager: XX_CHAT

feature --Deferred Metods

		--Allow to send a new chat message throught the net to the other host
	send_chat_message(a_owner, a_msg: STRING)
		require
			chat_message_not_void: a_msg/=Void
			chat_message_not_empty: a_msg.is_empty=FALSE
			owner_not_void: a_owner/=Void
		deferred
		end

		--Allow to set the network manager
--	set_chat_menager(a_chat_manager: XX_CHAT)
--		require
--			a_chat_manager_not_void: a_chat_manager/=Void
--		deferred
--		ensure
--			chat_manager_not_null: chat_manager=a_chat
--		end
end
