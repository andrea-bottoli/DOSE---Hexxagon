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

	make_msg(a_player_name:STRING; a_message:STRING)
		require
			player_name_not_void: player_name/=Void
			player_name_not_empty: player_name/=""
			message_not_void: message/=Void
			message_not_empty: message/=""
		do
			player_name := a_player_name
			message := a_message
		end

feature -- Accessors

	get_player_name: STRING
		do
			Result := player_name
		end

	get_message: STRING
		do
			Result := message
		end

feature {NONE} -- Attributes

	player_name: STRING
	message: STRING

end
