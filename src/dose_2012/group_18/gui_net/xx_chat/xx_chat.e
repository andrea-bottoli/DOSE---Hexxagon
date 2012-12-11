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
	default_create,
	make_with_gui

feature --Constructod

	make_with_gui(a_interface_gui: XX_CHAT_TO_GUI_INTERFACE)
	do
		default_create
		set_gui(a_interface_gui)
	end


feature{NONE}	--Attribute
	interface_gui: XX_CHAT_TO_GUI_INTERFACE
	interface_net: XX_CHAT_TO_NET_INTERFACE
	message: STRING

--######################################################################################
feature	--PUBLIC Methods inherited from XX_GUI_TO_CHAT_INTERFACE

	-- Sends a chat message
	send_chat_message(a_chat_message: STRING)
	do
		interface_net.send_chat_message (a_chat_message)
	end

	-- Sets the net manager
	set_net_manager(a_net: XX_CHAT_TO_NET_INTERFACE)
	do
		interface_net:=a_net
		interface_net.set_chat_manager (current)
	end

--######################################################################################
feature{NONE}	-- Private Method inherited from XX_GUI_TO_CHAT_INTERFACE

	--Verifies if net manager is setted
	is_net_manager_setted: BOOLEAN
	do
		if(interface_net/=Void)then
			Result:= TRUE
		else
			Result:=FALSE
		end
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
		interface_gui.set_chat (a_chat_message)
	end

--######################################################################################
feature{NONE}	--PRIVATE Methods inherited from XX_NET_TO_CHAT_INTERFACE

	--Checks if the message is Void
	is_chat_message_to_net_void(a_chat_message: STRING):BOOLEAN
	do
		if(a_chat_message=Void)then
			Result:=TRUE
		else
			Result:=FALSE
		end
	end

	--Checks if the message is empty
	is_chat_message_to_net_empty(a_chat_message: STRING):BOOLEAN
	do
		if(a_chat_message.is_empty)then
			Result:=TRUE
		else
			Result:=FALSE
		end
	end

	--Check if the message is visible
	is_chat_message_visible(a_chat_message: STRING):BOOLEAN
	do
		--TODO
	end


feature --Sets the gui references

	set_gui(a_gui: XX_CHAT_TO_GUI_INTERFACE)
	require
		gui_not_void: a_gui/=Void
	do
		interface_gui:=a_gui
	end
end
