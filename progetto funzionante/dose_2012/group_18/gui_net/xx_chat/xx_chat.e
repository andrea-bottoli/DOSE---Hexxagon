note
	description: "Class that implement the game chat"
	author: "Team Milano2"
	date: "13-11-12"
	revision: "0.2"

class
	XX_CHAT
inherit
	XX_GUI_TO_CHAT_INTERFACE
	XX_NET_TO_CHAT_INTERFACE

feature --Method inherited from XX_GUI_TO_CHAT_INTERFACE
	send_chat_message(a_chat_message: STRING)
	do

	end
	set_net_manager(a_net: XX_NET)
	do

	end
feature --Method inherited from XX_NET_TO_CHAT_INTERFACE
	set_chat_message(a_chat_message: STRING)
	do

	end
end
