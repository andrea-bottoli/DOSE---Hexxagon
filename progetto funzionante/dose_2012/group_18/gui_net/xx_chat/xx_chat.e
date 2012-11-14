note
	description: "Class that implements the game chat"
	author: "Team Milano2"
	date: "13-11-12"
	revision: "0.2"

class
	XX_CHAT
--inherit
--	XX_GUI_TO_CHAT_INTERFACE
--	XX_NET_TO_CHAT_INTERFACE

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

feature --Method inherited from XX_NET_TO_CHAT_INTERFACE

	-- Sets a chat message
	set_chat_message(a_chat_message: STRING)
	do
		--TODO
	end

end
