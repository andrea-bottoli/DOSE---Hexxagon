note
	description: "Class that implements the game chat"
	author: "Team Milano2"
	date: "13-11-2012"
	revision: "0.2"

class
	XX_CHAT
--inherit
--	XX_GUI_TO_CHAT_INTERFACE
--	XX_NET_TO_CHAT_INTERFACE

feature{NONE}	--Attribute
	net_manager: XX_NET

feature --Method inherited from XX_GUI_TO_CHAT_INTERFACE

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

-- Private Method inherited from xx_gui_to_chat_interface
feature{NONE}

	--Verifies if net manager is setted
	is_net_manager_setted: BOOLEAN
	do
		--TODO
	end

feature --Method inherited from XX_NET_TO_CHAT_INTERFACE

	-- Sets a chat message
	set_chat_message(a_chat_message: STRING)
	do
		--TODO
	end

end
