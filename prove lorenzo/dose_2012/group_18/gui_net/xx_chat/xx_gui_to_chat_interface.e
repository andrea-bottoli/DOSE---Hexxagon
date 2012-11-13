note
	description: "Summary description for {XX_GUI_TO_CHAT_INTERFACE}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

deferred class
	XX_GUI_TO_CHAT_INTERFACE


feature{NONE}	--Attribute
--	net_manager: XX_NET

feature	--Deferred metods

		--Allow to send a message throw network
	send_chat_message(a_message: STRING)
		deferred
		end

		--Allow to set the network manager
--	set_net_manager(a_net: XX_NET)
--		deferred
--		end
end
