note
	description: "Class that implements net manager"
	author: "Team Milano2"
	date: "13-11-2012"
	revision: "0.2"

class
	XX_NET

create
	make

feature{NONE}	--Attribute
	chat_manager: XX_CHAT

feature {NONE} -- Initialization

	make
			-- Initialization for `Current'.
		do
			--TODO
		end

feature{NONE} --Private Method Inherited from XX_NET_INTERFACE

	--Check if an ip is valid
	is_ip_valid(a_ip: STRING):BOOLEAN
	do
		--TODO
	end

	--Checks if the listener is initialized
	is_listener_initialized:BOOLEAN
	do
		--TODO
	end

feature{NONE} --Private Method Inherited from XX_CHAT_TO_NET_INTERFACE

	--Checks if the chat message is visible
	is_chat_message_visible:BOOLEAN
	do
		--TODO
	end

	--Checks if the chat manager is setted
	is_chat_manager_setted:BOOLEAN
	do
		--TODO
	end

end
