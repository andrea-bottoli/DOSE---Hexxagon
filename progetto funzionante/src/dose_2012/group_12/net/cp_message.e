note
	description: "This is the interface for the CP_MESSAGE part of the NET component."
	author: "Christos Petropoulos"
class
	CP_MESSAGE

inherit
	STORABLE


create

	make_msg

feature -- Initialization

	make_msg(player_name:STRING;message:STRING)
		require
			player_name_not_void: player_name/=Void
			player_name_not_empty: player_name/=""
			message_not_void: message/=Void
			message_not_empty: message/=""
		do

		end

end
