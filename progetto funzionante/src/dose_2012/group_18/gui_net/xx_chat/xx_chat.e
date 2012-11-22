note
	description: "Class that implements the game chat"
	author: "Team Milano2"
	date: "15-11-2012"
	revision: "0.3"

class
	XX_CHAT

inherit
	XX_GUI_TO_CHAT_INTERFACE
	XX_NET_TO_CHAT_INTERFACE

create
	default_create

feature{NONE}	--Attribute
	net_manager: XX_NET

--######################################################################################
feature	--PUBLIC Methods inherited from XX_GUI_TO_CHAT_INTERFACE

	-- Sends a chat message
	send_chat_message(a_chat_message: STRING)
	do
		--TODO
	end

	-- Sets the net manager
	set_net_manager(a_net: XX_NET)
	do
		--TODO
	end

--######################################################################################
feature{NONE}	-- Private Method inherited from XX_GUI_TO_CHAT_INTERFACE

	--Verifies if net manager is setted
	is_net_manager_setted: BOOLEAN
	do
		--TODO
	end

	--Checks if the message is Void
	is_chat_message_to_gui_void(a_chat_message: STRING):BOOLEAN
	do
		if(a_chat_message=Void)then
			Result:=TRUE
		else
			Result:=FALSE
		end
	end

	--Checks if the message is empty
	is_chat_message_to_gui_empty(a_chat_message: STRING):BOOLEAN
	do
		if(a_chat_message.is_empty)then
			Result:=TRUE
		else
			Result:=FALSE
		end
	end

--######################################################################################
feature --PUBLIC Method inherited from XX_NET_TO_CHAT_INTERFACE

	-- Sets a chat message
	set_chat_message(a_chat_message: STRING)
	do
		--TODO
	end

--######################################################################################
feature{NONE}	--PRIVATE Methods inherited from XX_NET_TO_CHAT_INTERFACE

	--Checks if the message is Void
	is_chat_message_to_net_void(a_chat_message: STRING):BOOLEAN
	do
		--TODO
	end

	--Checks if the message is empty
	is_chat_message_to_net_empty(a_chat_message: STRING):BOOLEAN
	do
		--TODO
	end

	--Check if the message is visible
	is_chat_message_visible(a_chat_message: STRING):BOOLEAN
	do
		--TODO
	end
end
